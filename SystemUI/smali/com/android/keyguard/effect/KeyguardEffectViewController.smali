.class public Lcom/android/keyguard/effect/KeyguardEffectViewController;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# static fields
.field private static final ACTION_CROPPER_IMAGE_CHANGED:Ljava/lang/String; = "com.sec.android.wallpapercropper2.LOCKSCREEN_IMAGE_CHANGED"

.field private static final MSG_LIVEWEATHER_DELETE_NOTIFICATION:I = 0x4

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x3

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x2

.field private static final MSG_WALLPAPER_TYPE_CHANGED:I = 0x1

.field private static final SUPPORT_DUAL_DISPLAY:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewController"

.field private static final WALLPAPER_FD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.WallpaperFdService"

.field private static final WALLPAPER_FD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static sKeyguardEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# instance fields
.field private final SCREEN_ON_ANIMATION_DURATION:I

.field private final SCREEN_ON_BACKGROUND_SCALE:F

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundRootLayoutSub:Landroid/widget/FrameLayout;

.field private mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

.field private mBackgroundViewSub:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

.field private mBottom:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mDeviceFolded:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsWallpaperFdServiceBound:Z

.field private mKeyguardFadingAway:Z

.field private mNaturalBarHeight:I

.field private mOccluded:Z

.field private mOpenThemeManager:Lcom/android/keyguard/KeyguardOpenThemeManager;

.field private mOpenThemeManagerSub:Lcom/android/keyguard/KeyguardOpenThemeManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mScreenOnAnim:Landroid/animation/ValueAnimator;

.field private mScreenOnAnimationValue:F

.field private mScreenOnRunnable:Ljava/lang/Runnable;

.field private mShowing:Z

.field private mSineOut33:Landroid/view/animation/interpolator/SineOut33;

.field private mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

.field private mVisibility:I

.field private final mWallpaperFdConnection:Landroid/content/ServiceConnection;

.field protected mWallpaperFdService:Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$1;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 78
    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 87
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$2;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    .line 118
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->SCREEN_ON_ANIMATION_DURATION:I

    .line 119
    const v0, 0x3f8b851f    # 1.09f

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 121
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mChoreographer:Landroid/view/Choreographer;

    .line 123
    new-instance v0, Landroid/view/animation/interpolator/SineOut33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineOut33;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mSineOut33:Landroid/view/animation/interpolator/SineOut33;

    .line 125
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mOccluded:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mShowing:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mKeyguardFadingAway:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mNaturalBarHeight:I

    .line 130
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOn:Z

    .line 564
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 633
    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentUserId:I

    .line 640
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewController$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$8;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdConnection:Landroid/content/ServiceConnection;

    .line 135
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setWallpaperRegisterReceiver()V

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setAnimator()V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/keyguard/effect/KeyguardEffectViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->makeLiveWeatherDeleteNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/effect/KeyguardEffectViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBottom:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/effect/KeyguardEffectViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBottom:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->apply()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/effect/KeyguardEffectViewController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnimationValue:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/effect/KeyguardEffectViewController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnimationValue:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private apply()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    iget-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mOccluded:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mShowing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mKeyguardFadingAway:Z

    if-eqz v3, :cond_3

    :cond_0
    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBottom:I

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mNaturalBarHeight:I

    if-eq v3, v4, :cond_3

    move v0, v1

    .line 429
    .local v0, "visibility":I
    :goto_0
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOccluded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mOccluded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mKeyguardFadingAway="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mKeyguardFadingAway:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", match_parent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBottom:I

    iget v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mNaturalBarHeight:I

    if-eq v5, v6, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 443
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVisibility:I

    if-eq v1, v0, :cond_2

    .line 444
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOn:Z

    if-ne v1, v2, :cond_4

    .line 445
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->onResume()V

    .line 450
    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVisibility:I

    .line 451
    return-void

    .line 426
    .end local v0    # "visibility":I
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 446
    .restart local v0    # "visibility":I
    :cond_4
    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->onPause()V

    goto :goto_1
.end method

.method private getCurrentWallpaperType()I
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x1

    .line 208
    .local v0, "wallpaperType":I
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x3

    .line 216
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isOpenThemeWallpaperEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockscreenWallpaperType()I

    move-result v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    sget-object v0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 147
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    sget-object v0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    return-object v0
.end method

.method private handleWallpaperImageChanged()V
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getCurrentWallpaperType()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/keyguard/effect/Utils;->getEffectName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/effect/Utils;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "nameOfClass":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_1

    .line 224
    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentEffect:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    goto :goto_0
.end method

.method private handleWallpaperTypeChanged()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->makeEffectViews()V

    goto :goto_0
.end method

.method private makeEffectViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getCurrentWallpaperType()I

    move-result v1

    .line 248
    .local v1, "wallpaperType":I
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/keyguard/effect/Utils;->getEffectName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/effect/Utils;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "nameOfClass":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 252
    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    .line 253
    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentEffect:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setBackground()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentEffect:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 282
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 283
    new-instance v2, Lcom/android/keyguard/KeyguardOpenThemeManager;

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/KeyguardOpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/KeyguardOpenThemeManager;

    .line 284
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/KeyguardOpenThemeManager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    .line 299
    :goto_1
    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentEffect:Ljava/lang/String;

    .line 300
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/keyguard/effect/Utils;->createEffectInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private makeLiveWeatherDeleteNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 331
    iget-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 332
    .local v2, "notiManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const-string v6, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 335
    .local v0, "liveweatherIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 338
    .local v3, "pIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_liveweather_delete_title_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_liveweather_delete_main_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$drawable;->stat_notify_image:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_liveweather_delete_title_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_liveweather_delete_main_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_liveweather_delete_buttion_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 352
    .local v1, "notiBuilder":Landroid/app/Notification$Builder;
    monitor-enter v1

    .line 353
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private setAnimator()V
    .locals 4

    .prologue
    .line 524
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mSineOut33:Landroid/view/animation/interpolator/SineOut33;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 526
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 539
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewController$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$6;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnRunnable:Ljava/lang/Runnable;

    .line 545
    return-void

    .line 524
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setBackground()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 328
    :cond_2
    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockScreenWallPaperPath()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "path":Ljava/lang/String;
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observing path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 173
    :cond_1
    new-instance v1, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method

.method private final setWallpaperRegisterReceiver()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.wallpapercropper2.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method


# virtual methods
.method public bindWallpaperFdService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 658
    iget-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mIsWallpaperFdServiceBound:Z

    if-nez v1, :cond_2

    .line 659
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 660
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.WallpaperFdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdConnection:Landroid/content/ServiceConnection;

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentUserId:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {v2, v0, v3, v5, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 663
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mIsWallpaperFdServiceBound:Z

    .line 664
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** wallpaper fd: can\'t bind to com.android.systemui.keyguard.WallpaperFdService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 661
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentUserId:I

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_0

    .line 667
    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mIsWallpaperFdServiceBound:Z

    .line 668
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** wallpaper fd service started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 671
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** wallpaper fd service already started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdService:Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;

    if-eqz v2, :cond_0

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdService:Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;->getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 695
    :cond_0
    :goto_0
    return-object v1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardEffectViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured while getFd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    .line 472
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 464
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 481
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 506
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "## mBackgroundView.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->onPause()V

    .line 509
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "## mBackgroundView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->onResume()V

    .line 501
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 559
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOn:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->onPause()V

    .line 562
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 548
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 552
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOn:Z

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->onResume()V

    .line 556
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->reset()V

    .line 488
    :cond_0
    return-void
.end method

.method public setDeviceFolded(Z)V
    .locals 0
    .param p1, "isFolded"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mDeviceFolded:Z

    .line 630
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->apply()V

    .line 631
    return-void
.end method

.method public setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "background"    # Landroid/view/View;
    .param p2, "foreground"    # Landroid/view/View;
    .param p3, "panel"    # Landroid/view/View;

    .prologue
    .line 377
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "background":Landroid/view/View;
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 378
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "foreground":Landroid/view/View;
    iput-object p2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 380
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    .line 382
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 383
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mNaturalBarHeight:I

    .line 384
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/keyguard/effect/KeyguardEffectViewController$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController$4;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 396
    return-void
.end method

.method public setEffectLayoutSub(Landroid/view/View;)V
    .locals 0
    .param p1, "background"    # Landroid/view/View;

    .prologue
    .line 625
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "background":Landroid/view/View;
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundRootLayoutSub:Landroid/widget/FrameLayout;

    .line 626
    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 3
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 419
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardFadingAway = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iput-boolean p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mKeyguardFadingAway:Z

    .line 422
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->apply()V

    .line 423
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 3
    .param p1, "occluded"    # Z

    .prologue
    .line 412
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardOccluded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput-boolean p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mOccluded:Z

    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->apply()V

    .line 416
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    const/4 v4, 0x4

    .line 399
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-boolean p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mShowing:Z

    .line 401
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isLiveWeatherSettingValue()Z

    move-result v0

    .line 402
    .local v0, "isliveweatherSet":Z
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->setLiveWeatherSettingValue(Z)V

    .line 404
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->apply()V

    .line 409
    return-void
.end method

.method public startUnlockAnimation()V
    .locals 4

    .prologue
    const v1, 0x3fa66666    # 1.3f

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mSineOut33:Landroid/view/animation/interpolator/SineOut33;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public declared-synchronized unbindWallpaperFdService()V
    .locals 2

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mIsWallpaperFdServiceBound:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mIsWallpaperFdServiceBound:Z

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdService:Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;

    .line 680
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** wallpaper fd service unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :goto_0
    monitor-exit p0

    return-void

    .line 682
    :cond_0
    :try_start_1
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** wallpaper fd service already unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public updateVignettingEffect(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    const-string v1, "KeyguardEffectViewController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVignettingEffect(): wallpaper is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    if-nez v0, :cond_1

    .line 373
    :goto_1
    return-void

    .line 359
    :cond_0
    const-string v0, "not null"

    goto :goto_0

    .line 362
    :cond_1
    if-nez p1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;->resetBlendedFilter(Landroid/view/View;)V

    goto :goto_1

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isPreloadedLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;)V

    goto :goto_1

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewVignetting;->resetBlendedFilter(Landroid/view/View;)V

    goto :goto_1
.end method
