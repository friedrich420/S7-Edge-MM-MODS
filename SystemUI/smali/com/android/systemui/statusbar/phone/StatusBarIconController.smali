.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mBatteryText:Landroid/widget/TextView;

.field private mClock:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDarkModeIconColorSingleTone:I

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private mIsStatusBarCarrierTimeOutSet:Z

.field private mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mKeyguardBatteryText:Landroid/widget/TextView;

.field private mKeyguardCarrierLabel:Landroid/widget/TextView;

.field private mKeyguardOperatorLogoView:Landroid/widget/ImageView;

.field private mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

.field private mLightModeIconColorSingleTone:I

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mMoreIcon:Landroid/widget/ImageView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field private mOperatorLogoIcon:Landroid/widget/ImageView;

.field private mPendingDarkIntensity:F

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mSineInOut33:Landroid/view/animation/Interpolator;

.field private mStatusBarCarrierLabel:Landroid/widget/TextView;

.field private mStatusBarContents:Landroid/widget/LinearLayout;

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field private mSystemIconArea:Landroid/widget/LinearLayout;

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z

.field private mTwoPhoneModeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Landroid/view/View;
    .param p3, "keyguardStatusBar"    # Landroid/view/View;
    .param p4, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const v6, 0x7f0e0336

    const v5, 0x7f0e0335

    const v4, 0x7f0e0334

    const v3, 0x7f0e0332

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 157
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    .line 159
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    .line 169
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 170
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 171
    const v1, 0x7f0e02ed

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 172
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 174
    const v1, 0x7f0e02ea

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    .line 175
    const v1, 0x7f0e02ec

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 176
    const v1, 0x7f0e02eb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mMoreIcon:Landroid/widget/ImageView;

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 178
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 179
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 180
    const v1, 0x7f0e0122

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    .line 182
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    .line 187
    const v1, 0x7f0e02e8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 192
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 193
    const v1, 0x7f0e0138

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardCarrierLabel:Landroid/widget/TextView;

    .line 194
    instance-of v1, p3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v1, :cond_2

    move-object v0, p3

    .line 195
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 196
    .local v0, "keyguardStatusBarView":Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    const-string v1, "LOCK"

    sget-object v2, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BOTH"

    sget-object v2, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardOperatorLogoView:Landroid/widget/ImageView;

    .line 199
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

    .line 205
    .end local v0    # "keyguardStatusBarView":Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 210
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 212
    const v1, 0x7f0a00a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    .line 217
    const v1, 0x7f0a00a4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 220
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateResources()V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "icon_blacklist"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarIconController;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p1, "x1"    # F

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 421
    if-nez p2, :cond_0

    .line 422
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 423
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animateIconTint(FJJ)V
    .locals 4
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 489
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 508
    :goto_0
    return-void

    .line 492
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 444
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 445
    if-nez p2, :cond_1

    .line 446
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private applyIconTint()V
    .locals 5

    .prologue
    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 528
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 530
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IF)V

    .line 534
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mMoreIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 535
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 536
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    const-string v2, "HOME"

    sget-object v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BOTH"

    sget-object v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 551
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNShowOnIndicator:Z

    if-eqz v2, :cond_3

    .line 552
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 559
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v2, :cond_4

    .line 560
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 561
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 567
    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 568
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 569
    .restart local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 570
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IF)V

    .line 573
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 574
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardCarrierLabel:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    const-string v2, "LOCK"

    sget-object v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "BOTH"

    sget-object v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 576
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardOperatorLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 577
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardOperatorLogoView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_7
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v2, :cond_8

    .line 581
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 582
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 587
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyNotificationIconsTint()V

    .line 588
    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 7

    .prologue
    .line 591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 592
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 593
    .local v4, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v6, 0x7f0e0059

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 598
    .local v2, "isPreL":Z
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isGrayscale(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v0

    .line 600
    .local v0, "colorize":Z
    if-eqz v0, :cond_0

    .line 601
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 603
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 591
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c026f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 609
    .local v3, "statusBarIconAlpha":F
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    goto :goto_1

    .line 613
    .end local v0    # "colorize":Z
    .end local v2    # "isPreL":Z
    .end local v3    # "statusBarIconAlpha":F
    .end local v4    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 522
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    goto :goto_0
.end method

.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 7
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 670
    .local v4, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 671
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "blacklist":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 673
    .local v5, "slot":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 674
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "blacklist":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "slot":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private isGrayscale(Lcom/android/systemui/statusbar/StatusBarIconView;)Z
    .locals 6
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    const v5, 0x7f0e005a

    .line 616
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 617
    .local v1, "isGrayscale":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 618
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 633
    :goto_0
    return v0

    .line 620
    :cond_0
    const/4 v0, 0x0

    .line 622
    .local v0, "grayscale":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/sdk/spr/drawable/SprDrawable;

    if-eqz v3, :cond_2

    .line 623
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/spr/drawable/SprDrawable;

    .line 624
    .local v2, "sd":Lcom/samsung/android/sdk/spr/drawable/SprDrawable;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/spr/drawable/SprDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 625
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/spr/drawable/SprDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 632
    .end local v2    # "sd":Lcom/samsung/android/sdk/spr/drawable/SprDrawable;
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_1
.end method

.method private setIconTintInternal(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 511
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 512
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 515
    return-void
.end method


# virtual methods
.method public addSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    .local v0, "blocked":Z
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v6, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 259
    .local v1, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v6, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 263
    .restart local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 267
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 641
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 642
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 643
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x16e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 645
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 646
    return-void
.end method

.method public appTransitionPending()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 638
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 649
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_1

    .line 650
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 651
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 665
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 666
    return-void

    .line 655
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    .line 660
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    .line 661
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 402
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  system icons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 405
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 379
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 371
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeSystemIcon(Ljava/lang/String;II)V

    .line 239
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 243
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {p0, v3, v0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method removeStatusBarCarrierLabel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 737
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setStatusBarCarrierLabelVisibility(Z)V

    .line 738
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 739
    .local v0, "count":I
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIsStatusBarCarrierTimeOutSet:Z

    .line 740
    if-nez v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->showStatusBarCarrierLabel()V

    .line 746
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public removeSystemIcon(Ljava/lang/String;II)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 281
    return-void
.end method

.method public setClockVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    return-void

    .line 386
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setIconsDark(ZZ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 471
    if-nez p2, :cond_1

    .line 472
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    .line 482
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 472
    goto :goto_0

    .line 473
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v4, :cond_3

    .line 474
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->deferIconTintChange(F)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 475
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    if-eqz v4, :cond_5

    .line 476
    if-eqz p1, :cond_4

    move v1, v0

    :cond_4
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_1

    .line 480
    :cond_5
    if-eqz p1, :cond_6

    move v1, v0

    :cond_6
    const-wide/16 v4, 0x16e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_1
.end method

.method public setKnoxCustomSystemIconVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    .line 395
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    return-void

    :cond_0
    move v0, v2

    .line 391
    goto :goto_0

    :cond_1
    move v0, v2

    .line 392
    goto :goto_1

    :cond_2
    move v0, v2

    .line 393
    goto :goto_2

    :cond_3
    move v0, v2

    .line 394
    goto :goto_3

    :cond_4
    move v0, v2

    .line 395
    goto :goto_4

    :cond_5
    move v1, v2

    .line 396
    goto :goto_5
.end method

.method public setOperatorLogoIndicator(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOperatorLogoIndicator(Landroid/view/View;)V

    .line 685
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 687
    .local v0, "linearlayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 689
    .end local v0    # "linearlayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    return-void
.end method

.method setStatusBarCarrierLabelView(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    .line 750
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 752
    .local v0, "linearlayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 754
    .end local v0    # "linearlayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 755
    return-void
.end method

.method setStatusBarCarrierLabelVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    return-void

    .line 758
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setTwoPhoneModeIcon(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarContents:Landroid/widget/LinearLayout;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 767
    .local v0, "linearlayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 769
    .end local v0    # "linearlayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    return-void
.end method

.method setTwoPhoneModeIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    return-void

    .line 773
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 383
    return-void
.end method

.method showStatusBarCarrierLabel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 719
    const-string v1, "IconController"

    const-string v2, "showStatusBarCarrierLabel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setStatusBarCarrierLabelVisibility(Z)V

    .line 723
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 724
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIsStatusBarCarrierTimeOutSet:Z

    .line 725
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 726
    .local v0, "mPlmnHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    .end local v0    # "mPlmnHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 375
    return-void
.end method

.method public updateBatteryTextLevel(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    const v6, 0x7f0d0452

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    return-void
.end method

.method public updateBatteryTextVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 706
    if-eqz p1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 17
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00e9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 290
    .local v9, "iconSize":I
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 296
    .local v2, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 297
    .local v1, "N":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v13, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_2

    .line 301
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 302
    .local v6, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v15}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 300
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 311
    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v15, v15, Landroid/app/Notification;->secFlags:I

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldShowOnIndicator(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 321
    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    .end local v6    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v11, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 327
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 328
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 332
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 333
    .local v12, "toRemoveCount":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v12, :cond_5

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v16, v0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 337
    :cond_5
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_7

    .line 338
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 339
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15, v14, v8, v10}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 345
    .end local v14    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    .line 346
    .local v5, "childCount":I
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 348
    .local v3, "actual":Landroid/view/View;
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 349
    .local v7, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v3, v7, :cond_8

    .line 346
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 352
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15, v7}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15, v7, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 357
    .end local v3    # "actual":Landroid/view/View;
    .end local v7    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_9
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mPLMNShowOnIndicator:Z

    if-eqz v15, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v15

    if-lez v15, :cond_b

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIsStatusBarCarrierTimeOutSet:Z

    if-nez v15, :cond_b

    .line 359
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setStatusBarCarrierLabelVisibility(Z)V

    .line 366
    :cond_a
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyNotificationIconsTint()V

    .line 367
    return-void

    .line 361
    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setStatusBarCarrierLabelVisibility(Z)V

    goto :goto_7
.end method

.method public updateOperatorLogoVisibility()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->updateOperatorLogoVisibility()V

    .line 696
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    const v1, 0x7f0c00e3

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 254
    return-void
.end method

.method public updateSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 272
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 274
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 276
    return-void
.end method
