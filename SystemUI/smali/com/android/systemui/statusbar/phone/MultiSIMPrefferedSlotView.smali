.class public Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
.super Landroid/widget/FrameLayout;
.source "MultiSIMPrefferedSlotView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$4;,
        Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;,
        Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;
    }
.end annotation


# static fields
.field private static final QsPrefferedBtnImage:[I


# instance fields
.field private SimImageIdx:[I

.field private SimName:[Ljava/lang/String;

.field private mAirplaneMode:I

.field mDefaultDataButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

.field private mDefaultDataSimId:I

.field mDefaultSmsButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

.field private mDefaultSmsSimId:I

.field mDefaultVoiceButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

.field private mDefaultVoiceSimId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataSettingEnabled:Z

.field private mPreferedVoice:I

.field private mPreferedVoiceObserver:Landroid/database/ContentObserver;

.field mSlotButtonGroup:Landroid/widget/LinearLayout;

.field private mSlotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->QsPrefferedBtnImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f02034b
        0x7f02034c
        0x7f02034d
        0x7f020353
        0x7f020351
        0x7f020350
        0x7f02034f
        0x7f020352
        0x7f02034e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mAirplaneMode:I

    .line 49
    iput v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I

    .line 51
    iput v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimImageIdx:[I

    .line 89
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "SIM 1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "SIM 2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimName:[Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;-><init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;-><init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 168
    return-void

    .line 84
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataSettingEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataSettingEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->QsPrefferedBtnImage:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimImageIdx:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoice:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoice:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 245
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 246
    .local v0, "phoneIdLocal":I
    return v0
.end method

.method private launchSimManager()V
    .locals 5

    .prologue
    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 272
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "MultiSIMPrefferedSlotView"

    const-string v4, "onClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseCTCOpSimCardManager:Z

    if-eqz v3, :cond_1

    .line 277
    const-string v3, "com.sec.android.app.simcardmanagement"

    const-string v4, "com.sec.android.app.simcardmanagement.dsnetwork"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v3, "showroaming"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v3, "Booting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v3, "toDsnetwork"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v3, "com.sec.android.app.simsettingmgr"

    const-string v4, "com.sec.android.app.simsettingmgr.NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v3, "com.sec.android.app.simcardmgr"

    const-string v4, "com.sec.android.app.simcardmgr.NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v1

    .line 294
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "MultiSIMPrefferedSlotView"

    const-string v4, "activity not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 173
    const-string v5, "MultiSIMPrefferedSlotView"

    const-string v6, "onAttachedToWindow()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v5, 0x7f0e01ae

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 177
    const v5, 0x7f0e01af

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 178
    .local v2, "defaultVoiceButton":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    sget-object v6, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->VOICE:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v7, v2}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 179
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const v5, 0x7f0e01b0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 181
    .local v1, "defaultSmsButton":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    sget-object v6, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->SMS:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v7, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 182
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const v5, 0x7f0e01b1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 184
    .local v0, "defaultDataButton":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    sget-object v6, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->DATA:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v7, v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 185
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v5, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v5, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I

    .line 203
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I

    .line 204
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I

    .line 206
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimImageIdx:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_icon_1"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v8

    .line 207
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimName:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_name_1"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 208
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimImageIdx:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_icon_2"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    .line 209
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimName:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_name_2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 211
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseCHNOpSimCardManager:Z

    if-nez v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prefered_voice_call"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 216
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 221
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 223
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 224
    new-instance v4, Landroid/content/Intent;

    const-string v5, "ACTION_REQUEST_FORCE_SPN_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->launchSimManager()V

    .line 257
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 232
    const-string v0, "MultiSIMPrefferedSlotView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseCHNOpSimCardManager:Z

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 241
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    const-string v0, "MultiSIMPrefferedSlotView"

    const-string v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->launchSimManager()V

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public updateSlotButtonState()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 300
    .local v0, "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->updateTextColor()V

    goto :goto_0

    .line 302
    .end local v0    # "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    :cond_0
    return-void
.end method
