.class public Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
.super Landroid/widget/FrameLayout;
.source "SViewCoverShortcuts.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
    }
.end annotation


# instance fields
.field private cfmsService:Landroid/os/CustomFrequencyManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mShortcutTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mTorchEnabled:Z

.field private mTorchIcon:Landroid/widget/ImageView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z

    .line 56
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 106
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 115
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mClickListener:Landroid/view/View$OnClickListener;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShortcutTable:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setEnableShealthIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/RemoteViewContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateTorchIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateShortcutText()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/os/CustomFrequencyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;Landroid/os/CustomFrequencyManager;)Landroid/os/CustomFrequencyManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
    .param p1, "x1"    # Landroid/os/CustomFrequencyManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isEnableShealthIcon()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 425
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.sec.android.app.shealth"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 426
    .local v2, "shealthState":I
    const-string v4, "SViewCoverShortcuts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHealth State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 433
    .end local v2    # "shealthState":I
    :goto_0
    return v3

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 433
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "shealthState":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setEnableShealthIcon()V
    .locals 3

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, "visible":I
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->isEnableShealthIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    const/4 v1, 0x0

    .line 415
    :goto_0
    sget v2, Lcom/sec/android/sviewcover/R$id;->shortcut_container_heart:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "heartContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_0
    return-void

    .line 413
    .end local v0    # "heartContainer":Landroid/view/View;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private setupShortcutTable()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;>;"
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/sviewcover/R$id;->shortcut_container_favorite:I

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->s_view_cover_shortcut_icon_favorite:I

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_favorite_text:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/sviewcover/R$id;->shortcut_container_settings:I

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->s_view_cover_shortcut_icon_setting:I

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_settings_text:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/sviewcover/R$id;->shortcut_container_light:I

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->s_view_cover_shortcut_icon_light:I

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_light_text:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    const/4 v2, 0x5

    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_quick_memo_container:I

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->clear_shortcut_ic_memo_bg_set:I

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_quick_memo_text:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :goto_0
    return-object v0

    .line 290
    :cond_0
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/sviewcover/R$id;->shortcut_container_heart:I

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->s_view_cover_shortcut_icon_heart:I

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_heart_text:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupShortcutViewData()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 299
    sget v10, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_title:I

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 300
    .local v6, "shortcuts":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_title_text:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "shortcutsText":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 303
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShortcutTable:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 308
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 309
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShortcutTable:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    .line 310
    .local v5, "item":Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
    iget v10, v5, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mContainerId:I

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, "container":Landroid/view/View;
    if-nez v1, :cond_2

    .line 308
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_2
    sget v10, Lcom/sec/android/sviewcover/R$id;->shortcut_item_icon:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 316
    .local v4, "icon":Landroid/widget/ImageView;
    sget v10, Lcom/sec/android/sviewcover/R$id;->shortcut_item_title:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 317
    .local v8, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v5, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mTitleId:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "titleText":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 321
    iget v10, v5, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mIconId:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 326
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 328
    iget v10, v5, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 329
    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchIcon:Landroid/widget/ImageView;

    goto :goto_1

    .line 333
    .end local v1    # "container":Landroid/view/View;
    .end local v4    # "icon":Landroid/widget/ImageView;
    .end local v5    # "item":Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
    .end local v8    # "title":Landroid/widget/TextView;
    .end local v9    # "titleText":Ljava/lang/String;
    :cond_3
    sget v10, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_close_button:I

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 335
    .local v0, "closeButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_5

    .line 336
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 337
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 339
    :cond_4
    new-instance v10, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;

    invoke-direct {v10, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 353
    :cond_5
    sget v10, Lcom/sec/android/sviewcover/R$id;->sview_cover_shealth_warning_contatiner:I

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 354
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v10, :cond_6

    .line 355
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v11, "shealth_warning_dialog"

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 356
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v11, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$5;

    invoke-direct {v11, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    invoke-virtual {v10, v11}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 373
    :cond_6
    return-void
.end method

.method private updateShortcutText()V
    .locals 11

    .prologue
    .line 460
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_title:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 461
    .local v4, "shortcuts":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    sget v9, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_title_text:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "shortcutsText":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 464
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :cond_0
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShortcutTable:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 468
    .local v3, "shortcutCnt":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 469
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShortcutTable:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    .line 470
    .local v2, "item":Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
    iget v8, v2, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mContainerId:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_1

    .line 472
    const-string v8, "SViewCoverShortcuts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "container is null : idx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_1
    sget v8, Lcom/sec/android/sviewcover/R$id;->shortcut_item_title:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 476
    .local v6, "title":Landroid/widget/TextView;
    if-nez v6, :cond_2

    .line 477
    const-string v8, "SViewCoverShortcuts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "title is null : idx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v2, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mTitleId:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "titleText":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 483
    .end local v0    # "container":Landroid/view/View;
    .end local v2    # "item":Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
    .end local v6    # "title":Landroid/widget/TextView;
    .end local v7    # "titleText":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateTorchIcon()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActive(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 452
    if-eqz p1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z

    .line 455
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateTorchIcon()V

    .line 457
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 398
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 399
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 405
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 406
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 379
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setupShortcutTable()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShortcutTable:Ljava/util/ArrayList;

    .line 384
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setupShortcutViewData()V

    .line 386
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 388
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v2, "torch_light"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z

    .line 390
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setEnableShealthIcon()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 388
    goto :goto_1
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 448
    return-void
.end method
