.class public Lcom/android/keyguard/status/SecKeyguardClockView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockView.java"


# static fields
.field private static mShouldShowDualClock:Ljava/lang/Boolean;


# instance fields
.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentFontScale:F

.field private mCurrentOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCovered:Z

.field public mIsMobileKeyboard:Z

.field private mIsNetworkRoaming:Z

.field mIsRotationEnabled:Z

.field private mIsUpdateOwnerInfo:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mScreenOn:Z

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWasMobileKeyboard:Z

.field private wasWeatherVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->wasWeatherVisible:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentOrientation:I

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentFontScale:F

    .line 70
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsRotationEnabled:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mScreenOn:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mWasMobileKeyboard:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsMobileKeyboard:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsCovered:Z

    .line 84
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView$1;-><init>(Lcom/android/keyguard/status/SecKeyguardClockView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockView$2;-><init>(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 422
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockView$4;-><init>(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->handleUpdateClock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/status/SecKeyguardClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentFontScale:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/status/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->handleSetSelectedTrue()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->handleUpdateOwnerInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/status/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/status/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->isDualClockSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/status/SecKeyguardClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentOrientation:I

    return p1
.end method

.method private getClockTopMargin(ZZ)I
    .locals 4
    .param p1, "isDualClock"    # Z
    .param p2, "isImageClock"    # Z

    .prologue
    .line 647
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 648
    .local v1, "rs":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 649
    .local v2, "topMargin":I
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    if-eqz p1, :cond_0

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top_cover:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 669
    :goto_0
    return v2

    .line 650
    :cond_0
    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top_cover:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 654
    if-eqz p1, :cond_2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top_mkeyboard:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    goto :goto_0

    :cond_2
    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top_mkeyboard:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 657
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 658
    if-eqz p1, :cond_4

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top_dcm_ux:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    goto :goto_0

    :cond_4
    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top_dcm_ux:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 662
    :cond_5
    if-eqz p1, :cond_6

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 666
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 667
    .local v0, "fontScale":F
    int-to-float v3, v2

    div-float/2addr v3, v0

    float-to-int v2, v3

    goto :goto_0

    .line 662
    .end local v0    # "fontScale":F
    :cond_6
    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_3
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 598
    const-string v0, "SecKeyguardClockView"

    const-string v1, "handleDelayedOnConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V

    .line 602
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    .line 603
    return-void
.end method

.method private handleSetSelectedTrue()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 486
    return-void
.end method

.method private handleUpdateClock()V
    .locals 11

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 296
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->isDualClockSet()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    .line 299
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->isImageClockSet()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 300
    const-string v8, "SecKeyguardClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleUpdateClock() >> START >> Image "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "Dual"

    :goto_0
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " Clock will be inflated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 303
    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 304
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_image:I

    invoke-static {v5, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, "targetClock":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 306
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 307
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setDualClockImageLayoutParams()V

    .line 345
    .end local v3    # "targetClock":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setPivotForMKeyboard()V

    .line 347
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->scaleTopViewByMKeyboard()V

    .line 349
    :cond_1
    const-string v5, "SecKeyguardClockView"

    const-string v8, "handleUpdateClock() << END << Clock is inflated."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "knoxCustomLockScreenState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v2

    .line 355
    .local v2, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v2, :cond_2

    .line 356
    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenHiddenItems()I

    move-result v1

    .line 358
    :cond_2
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_f

    move v4, v6

    .line 361
    .local v4, "vis":I
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_3

    .line 362
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 366
    :cond_3
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_10

    move v4, v6

    .line 368
    :goto_3
    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 369
    sget v5, Lcom/android/keyguard/R$id;->roaming_date:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "dateView":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_4
    sget v5, Lcom/android/keyguard/R$id;->home_date:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_5
    :goto_4
    return-void

    .line 300
    .end local v0    # "dateView":Landroid/view/View;
    .end local v1    # "knoxCustomLockScreenState":I
    .end local v2    # "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    .end local v4    # "vis":I
    :cond_6
    const-string v5, "Single"

    goto/16 :goto_0

    .line 309
    .restart local v3    # "targetClock":Landroid/view/View;
    :cond_7
    const-string v5, "SecKeyguardClockView"

    const-string v8, "Dual clock Image null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v3    # "targetClock":Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_image:I

    invoke-static {v5, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 313
    .restart local v3    # "targetClock":Landroid/view/View;
    if-eqz v3, :cond_9

    .line 314
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 315
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setSingleClockImageLayoutParams()V

    goto :goto_1

    .line 317
    :cond_9
    const-string v5, "SecKeyguardClockView"

    const-string v8, "Single clock Image null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    .end local v3    # "targetClock":Landroid/view/View;
    :cond_a
    const-string v8, "SecKeyguardClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleUpdateClock() >> START >> Text "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "Dual"

    :goto_5
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " Clock will be inflated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 324
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 325
    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 326
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_view:I

    invoke-static {v5, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 327
    .restart local v3    # "targetClock":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 328
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 329
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setDualClockLayoutParams()V

    goto/16 :goto_1

    .line 322
    .end local v3    # "targetClock":Landroid/view/View;
    :cond_b
    const-string v5, "Single"

    goto :goto_5

    .line 331
    .restart local v3    # "targetClock":Landroid/view/View;
    :cond_c
    const-string v5, "SecKeyguardClockView"

    const-string v8, "Dual clock null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 334
    .end local v3    # "targetClock":Landroid/view/View;
    :cond_d
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_view:I

    invoke-static {v5, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 335
    .restart local v3    # "targetClock":Landroid/view/View;
    if-eqz v3, :cond_e

    .line 336
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setSingleClockLayoutParams()V

    goto/16 :goto_1

    .line 339
    :cond_e
    const-string v5, "SecKeyguardClockView"

    const-string v8, "Single clock null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3    # "targetClock":Landroid/view/View;
    .restart local v1    # "knoxCustomLockScreenState":I
    .restart local v2    # "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    :cond_f
    move v4, v7

    .line 358
    goto/16 :goto_2

    .restart local v4    # "vis":I
    :cond_10
    move v4, v7

    .line 366
    goto/16 :goto_3

    .line 374
    :cond_11
    sget v5, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .restart local v0    # "dateView":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private handleUpdateOwnerInfo()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 389
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->updateCMASText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    const-string v3, "SecKeyguardClockView"

    const-string v4, "There is CMAS text!! - return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    .line 395
    .local v2, "ownerInfoEnabled":Z
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "ownerInfo":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 400
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setOwnerInfoColor()V

    .line 403
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    .line 404
    .local v0, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenHideOwnerInfo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 410
    .end local v0    # "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isDualClockSet()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 531
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/keyguard/status/SecKeyguardClockView;->setAutoHomeTimezone(Landroid/content/Context;)V

    .line 532
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    .line 533
    .local v0, "isDualClockSetting":Z
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    move v2, v4

    .line 534
    .local v2, "isHomeTimeZoneExist":Z
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 535
    .local v1, "isEasyUxOn":Z
    const/4 v3, 0x0

    .line 538
    .local v3, "onlyForTest":Z
    if-eqz v3, :cond_1

    move v5, v4

    .line 552
    :goto_1
    return v5

    .end local v1    # "isEasyUxOn":Z
    .end local v2    # "isHomeTimeZoneExist":Z
    .end local v3    # "onlyForTest":Z
    :cond_0
    move v2, v5

    .line 533
    goto :goto_0

    .line 540
    .restart local v1    # "isEasyUxOn":Z
    .restart local v2    # "isHomeTimeZoneExist":Z
    .restart local v3    # "onlyForTest":Z
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    iget-boolean v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z

    if-nez v6, :cond_3

    .line 541
    :cond_2
    const-string v4, "SecKeyguardClockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDualClockSetting, isHomeTimeZoneExist, isEasyUxOn, mIsNetworkRoaming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardProperties;->isIgnoreNationalRoaming(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 545
    const-string v4, "SecKeyguardClockView"

    const-string v6, "isIgnoreNationalRoaming() is true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 547
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 548
    const-string v4, "SecKeyguardClockView"

    const-string v6, "isWiFiOnlyDevice() is true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v5, v4

    .line 552
    goto :goto_1
.end method

.method private isImageClockSet()Z
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isCurrentLanguageArabic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scaleTopViewByMKeyboard()V
    .locals 3

    .prologue
    .line 624
    iget-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsCovered:Z

    if-eqz v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsMobileKeyboard:Z

    .line 627
    iget-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iget-boolean v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mWasMobileKeyboard:Z

    if-eq v1, v2, :cond_0

    .line 628
    iget-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mWasMobileKeyboard:Z

    .line 633
    const/high16 v0, 0x3f800000    # 1.0f

    .line 634
    .local v0, "scale":F
    iget-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsMobileKeyboard:Z

    if-eqz v1, :cond_2

    .line 635
    const/high16 v0, 0x3f400000    # 0.75f

    .line 637
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setScaleY(F)V

    .line 638
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 642
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0
.end method

.method private sendMsgUpdateOwnerInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x12cc

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 385
    return-void
.end method

.method private setAutoHomeTimezone(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GMT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    :cond_0
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 509
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_1

    .line 510
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 511
    .local v3, "simstateFromTelephony":I
    const-string v5, "SecKeyguardClockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeTimezone(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 515
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->shouldBeAsiaSeoulTimeZoneWhenNullAutoTimeZone()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "Asia/Seoul"

    .line 517
    .local v2, "hometz":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    const-string v5, "SecKeyguardClockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set homecity_timezone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "hometz":Ljava/lang/String;
    .end local v3    # "simstateFromTelephony":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void

    .line 515
    .restart local v1    # "homeCalendar":Ljava/util/Calendar;
    .restart local v3    # "simstateFromTelephony":I
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setDualClockImageLayoutParams()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 263
    iget-object v7, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 264
    .local v5, "rs":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 266
    .local v1, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 267
    .local v4, "rightMargin":I
    invoke-direct {p0, v9, v9}, Lcom/android/keyguard/status/SecKeyguardClockView;->getClockTopMargin(ZZ)I

    move-result v6

    .line 268
    .local v6, "topMargin":I
    invoke-virtual {v2, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 270
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 271
    invoke-virtual {p0, v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_image:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 274
    .local v0, "dualClockView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    .local v3, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_container_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 279
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    .end local v3    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setDualClockLayoutParams()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 240
    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 241
    .local v4, "rs":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 243
    .local v1, "leftMargin":I
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 244
    .local v3, "rightMargin":I
    const/4 v6, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/status/SecKeyguardClockView;->getClockTopMargin(ZZ)I

    move-result v5

    .line 245
    .local v5, "topMargin":I
    invoke-virtual {v2, v7, v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 246
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 247
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    sget v6, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_view:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 253
    .local v0, "dualClockView":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    .end local v0    # "dualClockView":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private setOwnerInfoColor()V
    .locals 5

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 416
    .local v0, "isThemeApplied":Z
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 418
    .local v1, "isWhiteBG":Z
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 420
    return-void

    .line 416
    .end local v1    # "isWhiteBG":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPivotForMKeyboard()V
    .locals 2

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsCovered:Z

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setPivotY(F)V

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    goto :goto_0
.end method

.method private setSingleClockImageLayoutParams()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 218
    iget-object v7, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 219
    .local v4, "rs":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 221
    .local v0, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 222
    .local v3, "rightMargin":I
    const/4 v7, 0x1

    invoke-direct {p0, v8, v7}, Lcom/android/keyguard/status/SecKeyguardClockView;->getClockTopMargin(ZZ)I

    move-result v6

    .line 223
    .local v6, "topMargin":I
    invoke-virtual {v1, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_image:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 230
    .local v5, "singleClockView":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .local v2, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 233
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    .end local v2    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setSingleClockLayoutParams()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 194
    iget-object v7, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 195
    .local v4, "rs":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    .local v0, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 198
    .local v3, "rightMargin":I
    invoke-direct {p0, v8, v8}, Lcom/android/keyguard/status/SecKeyguardClockView;->getClockTopMargin(ZZ)I

    move-result v6

    .line 199
    .local v6, "topMargin":I
    invoke-virtual {v1, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 201
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 206
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    .line 207
    .local v5, "singleClockView":Lcom/android/keyguard/status/SecKeyguardClockSingleView;
    invoke-virtual {v5}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .local v2, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 209
    invoke-virtual {v5, v2}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    .end local v2    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "singleClockView":Lcom/android/keyguard/status/SecKeyguardClockSingleView;
    :cond_0
    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 526
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 167
    new-instance v1, Lcom/android/keyguard/status/SecKeyguardClockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/status/SecKeyguardClockView$3;-><init>(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/status/SecKeyguardClockView$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x12cd

    const/4 v4, 0x0

    .line 566
    const-string v5, "SecKeyguardClockView"

    const-string v6, "onConfigurationChanged()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 569
    iget v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentOrientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_3

    .line 570
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentOrientation:I

    .line 571
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mScreenOn:Z

    if-eqz v3, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V

    .line 594
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x258

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 577
    :cond_3
    iget-boolean v5, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iget v6, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v6, v3, :cond_4

    :goto_1
    if-eq v5, v3, :cond_5

    .line 580
    invoke-virtual {p0, v4}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 577
    goto :goto_1

    .line 581
    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsCovered:Z

    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v5

    if-eq v3, v5, :cond_6

    .line 582
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsCovered:Z

    .line 583
    invoke-virtual {p0, v4}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    goto :goto_0

    .line 585
    :cond_6
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v1

    .line 586
    .local v1, "newScale":F
    iget v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentFontScale:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentFontScale:F

    .line 588
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 589
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v3, Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->isImageClockSet()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/android/keyguard/status/SecKeyguardClockView;->getClockTopMargin(ZZ)I

    move-result v2

    .line 590
    .local v2, "topMargin":I
    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 190
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 191
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 147
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    sget v0, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    .line 150
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsCovered:Z

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 154
    return-void
.end method

.method protected sendMsgUpdateClock(Z)V
    .locals 2
    .param p1, "direct"    # Z

    .prologue
    const/16 v1, 0x12cb

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->handleUpdateClock()V

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public updateCMASText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isShowNotificationOnKeyguard(Landroid/content/Context;)Z

    move-result v1

    .line 490
    .local v1, "showeNoti":Z
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportCMAS()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    .line 494
    .local v0, "cmas_res_id":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 496
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    const-string v2, "SecKeyguardClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCMASText(), CMAS TEXT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x1

    .line 502
    .end local v0    # "cmas_res_id":I
    :goto_1
    return v2

    .line 492
    :cond_0
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_cmas_text:I

    goto :goto_0

    .line 501
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 2
    .param p1, "isUpdateOwnerInfo"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 606
    iget-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 607
    .local v0, "isChanged":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    .line 608
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V

    .line 611
    :cond_1
    return-void

    .line 606
    .end local v0    # "isChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
