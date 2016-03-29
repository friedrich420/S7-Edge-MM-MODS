.class public Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;
.super Ljava/lang/Object;
.source "KeyguardSwipeHelper.java"

# interfaces
.implements Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;
    }
.end annotation


# instance fields
.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mAffordancePivotY:I

.field private mBottomViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceOut:Landroid/view/animation/interpolator/BounceEaseOut;

.field private mCenterIcon:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

.field private mFirstBorder:I

.field private mFullScreenAnimSet:Landroid/animation/AnimatorSet;

.field private mFullScreenModeEnabled:Z

.field private mFullScreenModeShown:Z

.field private mHideBouncerAnimSet:Landroid/animation/AnimatorSet;

.field private mIntercepting:Z

.field private mLeftShortcut:Landroid/view/View;

.field private mLongPressAllowHeight:I

.field private mLongPressCallback:Ljava/lang/Runnable;

.field private mNotiView:Landroid/view/View;

.field private mNotificationPanelView:Landroid/view/View;

.field private mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

.field private mResotreAnimSet:Landroid/animation/AnimatorSet;

.field private mRightShortcut:Landroid/view/View;

.field private mSecondBorder:I

.field private final mSineIn33:Landroid/view/animation/Interpolator;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Landroid/view/View;

.field private mTapAnimSet:Landroid/animation/AnimatorSet;

.field private mTapAnimSet2:Landroid/animation/AnimatorSet;

.field private mTapAnimationCancelled:Z

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I

.field private mUnlockAnimSet:Landroid/animation/AnimatorSet;

.field private mUnlockEventHandler:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

.field private mUnlockExecuted:Z

.field private mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

.field private mUnlockViewPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    .line 109
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z

    .line 114
    new-instance v0, Landroid/view/animation/interpolator/BounceEaseOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/BounceEaseOut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBounceOut:Landroid/view/animation/interpolator/BounceEaseOut;

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v4, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 117
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v3, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 119
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    .line 120
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    .line 121
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    .line 122
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    .line 123
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 124
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 125
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mHideBouncerAnimSet:Landroid/animation/AnimatorSet;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressCallback:Ljava/lang/Runnable;

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notiPanelView"    # Landroid/view/View;
    .param p3, "clockView"    # Landroid/view/View;
    .param p4, "notiStackScroller"    # Landroid/view/View;
    .param p5, "statusBarView"    # Landroid/view/View;
    .param p6, "bottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    .prologue
    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    .line 109
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z

    .line 114
    new-instance v0, Landroid/view/animation/interpolator/BounceEaseOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/BounceEaseOut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBounceOut:Landroid/view/animation/interpolator/BounceEaseOut;

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v4, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 117
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v3, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 119
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    .line 120
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    .line 121
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    .line 122
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    .line 123
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 124
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 125
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mHideBouncerAnimSet:Landroid/animation/AnimatorSet;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressCallback:Ljava/lang/Runnable;

    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    .line 160
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    .line 161
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    .line 162
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    .line 163
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLeftShortcut:Landroid/view/View;

    .line 164
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mRightShortcut:Landroid/view/View;

    .line 165
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCenterView()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mCenterIcon:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getEmergencyButtonView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchSlop:I

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFirstBorder:I

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSecondBorder:I

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordancePivotY:I

    .line 178
    invoke-static {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressAllowHeight:I

    .line 181
    new-instance v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mEffectViewController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;-><init>(Landroid/content/Context;Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/effect/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockEventHandler:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setChildViewPivot()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimationCancelled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimationCancelled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isRestoreAnimationRunning()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isTapAnimationRunning()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareTapAffordance()V
    .locals 4

    .prologue
    .line 426
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 467
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBounceOut:Landroid/view/animation/interpolator/BounceEaseOut;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 470
    return-void
.end method

.method private resetChildViewVI()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 638
    const-string v2, "KeyguardSwipeHelper"

    const-string v3, "resetChildViewVI()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->getBarStatus()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->getBarStatus()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 651
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 652
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 656
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 657
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 658
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutHintAnimationPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    .line 661
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 662
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 663
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 664
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 665
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 669
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private setChildViewPivot()V
    .locals 4

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 503
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 504
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 505
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 508
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 509
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 510
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordancePivotY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 513
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showTapAffordanceAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const v10, 0x3f733333    # 0.95f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 473
    const-string v2, "KeyguardSwipeHelper"

    const-string v3, "showTapAffordanceAnimation()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->prepareTapAffordance()V

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 478
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 484
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 490
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 491
    return-void
.end method

.method private startAnimationAndUnlock()V
    .locals 6

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockscreenWallpaperType()I

    move-result v0

    .line 339
    .local v0, "wallpaperType":I
    const-string v1, "KeyguardSwipeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAnimationAndUnlock() alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wallpaperType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-nez v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->makeExpandedInvisible()V

    goto :goto_0
.end method

.method private updateChildViewVI(DZD)V
    .locals 14
    .param p1, "distance"    # D
    .param p3, "hideShortcut"    # Z
    .param p4, "limit"    # D

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isTapAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isRestoreAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const-wide/16 v6, 0x0

    sub-double v8, p4, p1

    div-double v8, v8, p4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v0, v6

    .line 521
    .local v0, "alpha":F
    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    sub-double v8, p4, p1

    div-double v8, v8, p4

    const-wide v10, 0x3fc9999a00000000L    # 0.20000004768371582

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v1, v6

    .line 522
    .local v1, "clockScale":F
    const-wide v6, 0x3ff0ccccc0000000L    # 1.0499999523162842

    sub-double v8, p4, p1

    div-double v8, v8, p4

    const-wide v10, 0x3fa9999800000000L    # 0.04999995231628418

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v3, v6

    .line 524
    .local v3, "notiScale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 525
    :cond_2
    const v5, 0x3f99999a    # 1.2f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    const v1, 0x3f99999a    # 1.2f

    .line 526
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 527
    :cond_4
    const v5, 0x3f866666    # 1.05f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    const v3, 0x3f99999a    # 1.2f

    .line 528
    :cond_5
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_6

    const/4 v0, 0x0

    .line 530
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleX(F)V

    .line 531
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleY(F)V

    .line 532
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 533
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 534
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 535
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 540
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchSlop:I

    int-to-double v6, v5

    cmpl-double v5, p1, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 541
    if-eqz p3, :cond_0

    .line 542
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutHintAnimationPlaying()Z

    move-result v5

    if-nez v5, :cond_9

    .line 543
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 544
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 547
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 548
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLeftShortcut:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 549
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mRightShortcut:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 550
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mCenterIcon:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 552
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 553
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 554
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 558
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 561
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->stopHintAnimationAndHideShortcuts(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animationRunning()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isTapAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isRestoreAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutHintAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntercept()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mIntercepting:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mIntercepting:Z

    if-nez v2, :cond_1

    .line 187
    const/4 v12, 0x0

    .line 286
    :cond_0
    :goto_0
    return v12

    .line 190
    :cond_1
    const-wide/16 v14, 0x0

    .line 192
    .local v14, "timeOfProcess":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 197
    .local v8, "action":I
    and-int/lit16 v11, v8, 0xff

    .line 199
    .local v11, "maskedAction":I
    const/4 v2, 0x2

    if-eq v11, v2, :cond_2

    .line 200
    const-string v2, "KeyguardSwipeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    packed-switch v11, :pswitch_data_0

    .line 278
    .end local v8    # "action":I
    .end local v11    # "maskedAction":I
    :cond_3
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockEventHandler:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 281
    .local v12, "retValue":Z
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 282
    const-wide/16 v2, 0x1f4

    cmp-long v2, v14, v2

    if-ltz v2, :cond_0

    .line 283
    const-string v2, "KeyguardSwipeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch processing took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v12    # "retValue":Z
    .restart local v8    # "action":I
    .restart local v11    # "maskedAction":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchDownX:F

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchDownY:F

    .line 207
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setChildViewPivot()V

    .line 211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z

    .line 212
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchDownY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressAllowHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 219
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    if-nez v2, :cond_4

    .line 220
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 222
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 223
    .local v13, "touchedEventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    .line 224
    .local v16, "touchedEventY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchDownX:F

    sub-float v2, v13, v2

    float-to-int v9, v2

    .line 225
    .local v9, "diffX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchDownY:F

    sub-float v2, v16, v2

    float-to-int v10, v2

    .line 227
    .local v10, "diffY":I
    int-to-double v2, v9

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v4, v10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    .line 229
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z

    if-eqz v2, :cond_5

    .line 230
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFirstBorder:I

    int-to-double v6, v2

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->setSwipedFraction(F)V

    .line 237
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchSlop:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    :cond_6
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFirstBorder:I

    int-to-double v6, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->updateChildViewVI(DZD)V

    goto/16 :goto_1

    .line 233
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFirstBorder:I

    int-to-double v6, v2

    div-double/2addr v4, v6

    double-to-float v2, v4

    goto :goto_2

    .line 247
    .end local v9    # "diffX":I
    .end local v10    # "diffY":I
    .end local v13    # "touchedEventX":F
    .end local v16    # "touchedEventY":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    if-eqz v2, :cond_8

    .line 249
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setFullScreenMode(Z)V

    .line 252
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mIntercepting:Z

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isTapAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isRestoreAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTouchSlop:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_b

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->resetChildViewVI()V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->showTapAffordanceAnimation()V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->onAffordanceTap()V

    .line 269
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFirstBorder:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-lez v2, :cond_a

    const/4 v2, 0x6

    if-eq v11, v2, :cond_a

    const/4 v2, 0x3

    if-ne v11, v2, :cond_3

    .line 270
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->setSwipedFraction(F)V

    goto/16 :goto_1

    .line 260
    :cond_b
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mDistance:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFirstBorder:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-lez v2, :cond_c

    const/4 v2, 0x6

    if-eq v11, v2, :cond_c

    const/4 v2, 0x3

    if-ne v11, v2, :cond_9

    .line 261
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->restoreChildViewVI()V

    goto :goto_3

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onUnlockExecuted()V
    .locals 3

    .prologue
    .line 319
    const-string v0, "KeyguardSwipeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnlockExecuted() mUnlockExecuted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUnlockViewPressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->restoreChildViewVI()V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockEventHandler:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->reset()V

    .line 328
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "Do not execute unlock \'cause device is not in interactive states"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->startAnimationAndUnlock()V

    goto :goto_0
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    .line 355
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "onUnlockViewPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    .line 357
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 2

    .prologue
    .line 361
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "onUnlockViewReleased()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewPressed:Z

    .line 363
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 2
    .param p1, "isSwiped"    # Z

    .prologue
    .line 367
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "onUnlockViewSwiped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockEventHandler:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->reset()V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->resetChildViewVI()V

    .line 305
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    .line 307
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->setSwipedFraction(F)V

    .line 310
    return-void
.end method

.method public restoreChildViewVI()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 601
    const-string v2, "KeyguardSwipeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreChildViewVI() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isTapAnimationRunning()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isTapAnimationRunning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockExecuted:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isTapAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    .line 608
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 609
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 612
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 613
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 615
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 616
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 617
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 619
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutHintAnimationPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    .line 620
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 621
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 622
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 623
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 624
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 629
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 631
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 632
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mCenterIcon:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 634
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public setFullScreenMode(Z)V
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const v3, 0x3f733333    # 0.95f

    const/4 v10, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    const-string v0, "KeyguardSwipeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFullScreenMode ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    .line 379
    const/16 v4, 0xb

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v4, v0, v2}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->getBarStatus()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 388
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 389
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    const-wide/16 v4, 0x96

    :goto_2
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v1, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v10, [F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    aput v0, v9, v2

    if-eqz p1, :cond_6

    move v0, v3

    :goto_3
    aput v0, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 414
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v1, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v10, [F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    aput v0, v9, v2

    if-eqz p1, :cond_7

    move v0, v3

    :goto_4
    aput v0, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 415
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v1, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v10, [F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    aput v0, v9, v2

    if-eqz p1, :cond_8

    move v0, v3

    :goto_5
    aput v0, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v8, v2

    if-eqz p1, :cond_9

    :goto_6
    aput v3, v8, v1

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v2

    if-eqz p1, :cond_1

    const/4 v6, 0x0

    :cond_1
    aput v6, v7, v1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 420
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 379
    goto/16 :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    goto/16 :goto_1

    .line 390
    :cond_5
    const-wide/16 v4, 0x12c

    goto/16 :goto_2

    :cond_6
    move v0, v6

    .line 413
    goto/16 :goto_3

    :cond_7
    move v0, v6

    .line 414
    goto :goto_4

    :cond_8
    move v0, v6

    .line 415
    goto :goto_5

    :cond_9
    move v3, v6

    .line 416
    goto :goto_6
.end method

.method public setIntercept(Z)V
    .locals 0
    .param p1, "intercepting"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mIntercepting:Z

    .line 728
    return-void
.end method

.method public setKeyguardAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 736
    return-void
.end method

.method public startUnlockViewAnimation(JZ)V
    .locals 11
    .param p1, "duration"    # J
    .param p3, "unlockAfter"    # Z

    .prologue
    const v10, 0x3f866666    # 1.05f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 672
    const-string v0, "KeyguardSwipeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUnlockViewAnimation() unlockAfter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mClockView.getScaleX()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isTapAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "isTapAnimationRunning() cancel animations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 681
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isRestoreAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "isRestoreAnimationRunning() cancel animations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mResotreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 686
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    const v5, 0x3f99999a    # 1.2f

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    aput v5, v4, v6

    const v5, 0x3f99999a    # 1.2f

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    aput v5, v4, v6

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 696
    if-eqz p3, :cond_2

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mUnlockAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 724
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->userActivity()V

    .line 315
    return-void
.end method
