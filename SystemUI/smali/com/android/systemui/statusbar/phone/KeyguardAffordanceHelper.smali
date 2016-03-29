.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;,
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;

.field private mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mMotionCancelled:Z

.field private mPreviewAnimationStarted:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mTouchTargetSize:I

.field private mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x3f547ae1    # 0.83f

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 102
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 8
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "top"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .param p4, "bottom"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    const v5, 0x3f547ae1    # 0.83f

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v2, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 106
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 109
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private centerSwipePossible()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v0

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 350
    :goto_0
    return-object v0

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_0

    .line 346
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->centerSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_0

    .line 350
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "icon"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 662
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private initDimens()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 126
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    .line 135
    return-void
.end method

.method private initIcons()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    .line 156
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 12
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 358
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 359
    .local v4, "pos":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 361
    aget v7, v4, v6

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v2, v7, v8

    .line 362
    .local v2, "iconX":F
    aget v7, v4, v5

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v3, v7, v8

    .line 364
    .local v3, "iconY":F
    sub-float v7, p2, v2

    float-to-double v8, v7

    sub-float v7, p3, v3

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 365
    .local v0, "distance":D
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-double v8, v7

    cmpg-double v7, v0, v8

    if-gtz v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 5
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 370
    .local v0, "pos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 372
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private leftSwipePossible()Z
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v0

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rightSwipePossible()Z
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v0

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startPreviewAnimation(Landroid/view/View;Z)V
    .locals 10
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 170
    if-nez p2, :cond_1

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mPreviewAnimationStarted:Z

    .line 171
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPreviewAnimation() show="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-eqz p2, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShowHelpTextAnimation()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startDelayedShowAnimation()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->startShowHelpTextAnimation()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShowHelpTextAnimation()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 205
    :goto_1
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startHideHelpTextAnimation()V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startHideAnimation()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->startHideHelpTextAnimation()V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startHideHelpTextAnimation()V

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_1

    .line 197
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_7

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_1

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_1
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z
    .param p6, "force"    # Z
    .param p7, "forceNoCircleAnimation"    # Z

    .prologue
    .line 637
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p6, :cond_0

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FZ)V

    goto :goto_0
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 650
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v0

    .line 651
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 652
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 653
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZ)V

    .line 654
    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelDAAffordance()V

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelDAAffordance()V

    .line 941
    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

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

.method public isShortcutHintAnimationPlaying()Z
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isPlayingHintAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isPlayingHintAnimation()Z

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

.method public isShortcutPreviewAnimationPlaying()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mPreviewAnimationStarted:Z

    return v0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 0
    .param p1, "animate"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 754
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 701
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 705
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 210
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSimPermDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimDisabledPermanently()Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 222
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 224
    .local v3, "x":F
    packed-switch v0, :pswitch_data_0

    .line 257
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, "targetView":Landroid/view/View;
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eq v5, v2, :cond_4

    .line 228
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    goto :goto_0

    .line 232
    :cond_4
    check-cast v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .end local v2    # "targetView":Landroid/view/View;
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 235
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    .line 236
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 239
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 244
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eqz v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 249
    .local v1, "ret":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isPlayingHintAnimation()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isWaitingLaunchAppInSecure()Z

    move-result v5

    if-nez v5, :cond_5

    .line 251
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    .line 253
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removePreviews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 759
    return-void
.end method

.method public reset(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 710
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 711
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 712
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 725
    return-void
.end method

.method public setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 762
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 846
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    .line 412
    .local v0, "leftView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v10

    .line 414
    .local v10, "rightView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    if-eqz p1, :cond_1

    move-object v11, v10

    .line 415
    .local v11, "targetView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :goto_0
    if-eqz p1, :cond_2

    move-object v1, v0

    .line 417
    .local v1, "otherView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :goto_1
    invoke-virtual {v11, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShortcutHintAnimation()V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startShortcutHintAnimation()V

    .line 420
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->startShortcutHintAnimation()V

    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShortcutHintAnimation()V

    .line 423
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    new-instance v7, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 429
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x96

    const/4 v8, 0x0

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 435
    return-void

    .end local v1    # "otherView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .end local v11    # "targetView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :cond_1
    move-object v11, v0

    .line 414
    goto :goto_0

    .restart local v11    # "targetView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :cond_2
    move-object v1, v10

    .line 415
    goto :goto_1
.end method

.method public stopHintAnimationAndHideShortcuts(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->stopHintAnimationAndHideShortcut(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->stopHintAnimationAndHideShortcut(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->stopShortcutHintAnimation()V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->stopShortcutHintAnimation()V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->stopShortcutHintAnimation()V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->stopShortcutHintAnimation()V

    .line 926
    :cond_0
    return-void
.end method

.method public updatePreviews()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    goto :goto_0
.end method
