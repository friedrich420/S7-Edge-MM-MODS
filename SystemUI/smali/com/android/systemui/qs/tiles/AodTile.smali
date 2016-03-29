.class public Lcom/android/systemui/qs/tiles/AodTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AodTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final AOD_EX_FEATURE_MAGNIFICATION_GESTURE:I = 0x4

.field private static final AOD_EX_FEATURE_MAGNIFIER_BY_ASSISTANT:I = 0x5

.field private static final AOD_EX_FEATURE_MAGNIFIER_WINDOW:I = 0x3

.field private static final AOD_EX_FEATURE_MOBILE_KEYBOARD:I = 0x1

.field private static final AOD_EX_FEATURE_NONE:I = -0x1

.field private static final AOD_EX_FEATURE_POWER_SAVING_MODE:I = 0x0

.field private static final AOD_EX_FEATURE_VOICE_ASSISTANT:I = 0x2

.field private static final DB_AOD_MODE_ON:Ljava/lang/String; = "aod_mode"

.field private static final DB_MAGNIFICATION:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final DB_MAGNIFIER_BY_ASSISTANTMENU:Ljava/lang/String; = "FmMagnifier"

.field private static final DB_MAGNIFIER_WINDOW:Ljava/lang/String; = "finger_magnifier"

.field private static final DB_PSM:Ljava/lang/String; = "low_power"

.field private static final DB_VOICE_ASSISTANT:Ljava/lang/String; = "enabled_accessibility_services"

.field static final EXCLUSIVE_FEATURE_TEXT:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccesibilityObserver:Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEnabledExclusiveFeature:[Z

.field private mExclusiveFeatureType:[I

.field private mGoogleTalkbackEnabled:Z

.field private final mMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mMagnifierByAssistantSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mMagnifierWindowSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mNumExFeature:I

.field private final mPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mSingleExFeatureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/systemui/qs/tiles/AodTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/qs/tiles/AodTile;->EXCLUSIVE_FEATURE_TEXT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d042c
        0x7f0d042b
        0x7f0d042d
        0x7f0d042f
        0x7f0d042e
        0x7f0d0430
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x6

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 80
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mExclusiveFeatureType:[I

    .line 82
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/AodTile;->mGoogleTalkbackEnabled:Z

    .line 83
    iput v5, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSingleExFeatureType:I

    .line 84
    iput v4, p0, Lcom/android/systemui/qs/tiles/AodTile;->mNumExFeature:I

    .line 97
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AodTile$1;-><init>(Lcom/android/systemui/qs/tiles/AodTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;-><init>(Lcom/android/systemui/qs/tiles/AodTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAccesibilityObserver:Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;

    .line 113
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "aod_mode"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AodTile$2;-><init>(Lcom/android/systemui/qs/tiles/AodTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 121
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "low_power"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AodTile$3;-><init>(Lcom/android/systemui/qs/tiles/AodTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 128
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AodTile$4;-><init>(Lcom/android/systemui/qs/tiles/AodTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 138
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$5;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "finger_magnifier"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AodTile$5;-><init>(Lcom/android/systemui/qs/tiles/AodTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnifierWindowSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 147
    new-instance v0, Lcom/android/systemui/qs/tiles/AodTile$6;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "FmMagnifier"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AodTile$6;-><init>(Lcom/android/systemui/qs/tiles/AodTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnifierByAssistantSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 156
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/tiles/AodTile;->updateExclusiveFeature(IZ)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->updateVoiceAssistant()V

    .line 159
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AodTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/AodTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AodTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->updateVoiceAssistant()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AodTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->getAodMState()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AodTile;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AodTile;->updateExclusiveFeature(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/AodTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AodTile;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->disableExclusiveFeature()V

    return-void
.end method

.method private disableExclusiveFeature()V
    .locals 3

    .prologue
    .line 396
    iget v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mNumExFeature:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 397
    iget v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSingleExFeatureType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AodTile;->disableExclusiveFeature(I)V

    .line 405
    :cond_0
    return-void

    .line 399
    :cond_1
    const/4 v0, 0x2

    .local v0, "type":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 401
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AodTile;->disableExclusiveFeature(I)V

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private disableExclusiveFeature(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 409
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    aput-boolean v4, v1, p1

    .line 422
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnifierWindowSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0

    .line 415
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 416
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    goto :goto_0

    .line 418
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnifierByAssistantSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0
.end method

.method private getAodMState()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 230
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 232
    :cond_0
    const/4 v0, 0x3

    .line 241
    :cond_1
    :goto_0
    return v0

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->isNecessaryEnablePopup()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 239
    goto :goto_0
.end method

.method private getCount()I
    .locals 6

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "count":I
    const/4 v2, -0x1

    .line 363
    .local v2, "singleExType":I
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 365
    add-int/lit8 v0, v0, 0x1

    .line 366
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AodTile;->mExclusiveFeatureType:[I

    aget v2, v3, v1

    .line 363
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 370
    iput v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSingleExFeatureType:I

    .line 372
    :cond_2
    sget-object v3, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ExclusiveFeature getCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v0
.end method

.method private isNecessaryEnablePopup()Z
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mNumExFeature:I

    .line 378
    iget v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mNumExFeature:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEnablePopupDialog(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 284
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 285
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f0d042b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "aodLabel":Ljava/lang/String;
    iget v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mNumExFeature:I

    if-ne v6, v8, :cond_4

    .line 289
    sget-object v6, Lcom/android/systemui/qs/tiles/AodTile;->EXCLUSIVE_FEATURE_TEXT:[I

    iget v7, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSingleExFeatureType:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "exFeatureText":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mGoogleTalkbackEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    aget-boolean v6, v6, v10

    if-eqz v6, :cond_0

    .line 291
    const v6, 0x7f0d0431

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    :cond_0
    const v6, 0x7f0d0429

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v2, v7, v8

    aput-object v2, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .end local v2    # "exFeatureText":Ljava/lang/String;
    .local v4, "popupMsg":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0d0428

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/qs/tiles/AodTile$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AodTile$7;-><init>(Lcom/android/systemui/qs/tiles/AodTile;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/qs/tiles/AodTile$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AodTile$8;-><init>(Lcom/android/systemui/qs/tiles/AodTile;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 325
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 326
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/qs/tiles/AodTile$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AodTile$9;-><init>(Lcom/android/systemui/qs/tiles/AodTile;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 332
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/AodTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 333
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 335
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void

    .line 296
    .end local v4    # "popupMsg":Ljava/lang/String;
    :cond_4
    const v6, 0x7f0d042a

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .restart local v4    # "popupMsg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/qs/tiles/AodTile;->EXCLUSIVE_FEATURE_TEXT:[I

    aget v7, v7, v3

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private showToastWhenExclusiveFeatureEnabled()Z
    .locals 8

    .prologue
    const v7, 0x7f0d042b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0427

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 343
    sget-object v1, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    const-string v2, "isMobileKeyboardConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    return v0

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0426

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d042c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    sget-object v1, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    const-string v2, "power saving mode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 357
    goto :goto_0
.end method

.method private updateExclusiveFeature(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, -0x1

    .line 382
    if-ne p1, v3, :cond_0

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 385
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mExclusiveFeatureType:[I

    aput v3, v1, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mExclusiveFeatureType:[I

    aput p1, v1, p1

    .line 390
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mEnabledExclusiveFeature:[Z

    aput-boolean p2, v1, p1

    .line 391
    sget-object v1, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateExclusiveFeature type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return-void
.end method

.method private updateVoiceAssistant()V
    .locals 5

    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "accesibilityService":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 442
    .local v1, "voiceAssiatanOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 443
    const-string v2, "google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mGoogleTalkbackEnabled:Z

    .line 445
    :cond_0
    sget-object v2, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAccesibilityObserver() onChange - voiceAssiatanOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " google ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AodTile;->mGoogleTalkbackEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/qs/tiles/AodTile;->updateExclusiveFeature(IZ)V

    .line 447
    return-void

    .line 440
    .end local v1    # "voiceAssiatanOn":Z
    :cond_1
    const-string v2, "talkback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/AodTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x1a0

    return v0
.end method

.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    sget-object v3, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->showToastWhenExclusiveFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->isNecessaryEnablePopup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v5, :cond_2

    .line 195
    iget v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSingleExFeatureType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AodTile;->showEnablePopupDialog(I)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v0, v6, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AodTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AodTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 206
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-eq v3, v1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 205
    goto :goto_1

    :cond_4
    move v1, v2

    .line 207
    goto :goto_2
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 212
    sget-object v1, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->showToastWhenExclusiveFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AodTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    sget-object v0, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    const-string v1, "not USER_OWNER  returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_2
    const-string v0, "com.samsung.android.app.aodservice"

    const-string v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AodTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 246
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 251
    const v1, 0x7f020364

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 252
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/AodTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 253
    sget-object v1, Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 246
    .end local v0    # "value":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AodTile;->getAodMState()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AodTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AodTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 163
    if-eqz p1, :cond_0

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AodTile;->mAccesibilityObserver:Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnifierWindowSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mMagnifierByAssistantSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 179
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AodTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
