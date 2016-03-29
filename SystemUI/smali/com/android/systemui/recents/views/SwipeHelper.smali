.class public Lcom/android/systemui/recents/views/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private initialAlpha:F

.field public mAllowSwipeTowardsEnd:Z

.field public mAllowSwipeTowardsStart:Z

.field mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field public mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mRtl:Z

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 65
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FFLcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F
    .param p5, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 61
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 62
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->rotation:I

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F

    .line 98
    iput-object p2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    .line 99
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    .line 100
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    iput p3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    .line 102
    iput p4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    .line 104
    iput-object p5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/SwipeHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/SwipeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidMoveDirection(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 149
    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 151
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 149
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 277
    .local v1, "canAnimViewBeDismissed":Z
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_1

    cmpl-float v4, p2, v6

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v3, v4

    .line 285
    .local v3, "newPos":F
    :goto_0
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 286
    .local v2, "duration":I
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_3

    .line 287
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 294
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 295
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v4, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$1;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$2;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 315
    return-void

    .line 283
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":I
    .end local v3    # "newPos":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 291
    .restart local v2    # "duration":I
    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 14
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 526
    const/16 v8, 0x3e8

    invoke-virtual {p1, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 527
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v7

    .line 528
    .local v7, "velocity":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    .line 529
    .local v5, "perpendicularVelocity":F
    iget v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v3, v8, v9

    .line 530
    .local v3, "escapeVelocity":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    .line 532
    .local v6, "translation":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    iget-object v12, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v12}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    const/4 v0, 0x1

    .line 534
    .local v0, "childSwipedFarEnough":Z
    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v3

    if-lez v8, :cond_4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    move v9, v8

    :goto_1
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-ne v9, v8, :cond_4

    const/4 v1, 0x1

    .line 538
    .local v1, "childSwipedFastEnough":Z
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 544
    .local v2, "dismissChild":Z
    :goto_4
    const/4 v4, 0x0

    .line 557
    .local v4, "moveChild":Z
    if-eqz v4, :cond_7

    .line 558
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_6

    .end local v7    # "velocity":F
    :goto_5
    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->moveChild(Landroid/view/View;F)V

    .line 568
    :goto_6
    return-void

    .line 532
    .end local v0    # "childSwipedFarEnough":Z
    .end local v1    # "childSwipedFastEnough":Z
    .end local v2    # "dismissChild":Z
    .end local v4    # "moveChild":Z
    .restart local v7    # "velocity":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    .restart local v0    # "childSwipedFarEnough":Z
    :cond_2
    const/4 v8, 0x0

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 538
    .restart local v1    # "childSwipedFastEnough":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 558
    .restart local v2    # "dismissChild":Z
    .restart local v4    # "moveChild":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 559
    :cond_7
    if-eqz v2, :cond_9

    .line 562
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_8

    .end local v7    # "velocity":F
    :goto_7
    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto :goto_6

    .restart local v7    # "velocity":F
    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 565
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 566
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_6
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 176
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 206
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 204
    goto :goto_0

    :cond_1
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method private isValidMoveDirection(Landroid/view/View;F)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 504
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->rotation:I

    if-ne v1, v0, :cond_5

    .line 505
    cmpl-float v1, p2, v2

    if-gtz v1, :cond_0

    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_2

    .line 521
    :cond_1
    :goto_0
    return v0

    .line 508
    :cond_2
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_3

    cmpl-float v1, p2, v2

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 521
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 513
    :cond_5
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_6

    cmpl-float v1, p2, v2

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    :cond_7
    cmpl-float v1, p2, v2

    if-gtz v1, :cond_8

    cmpl-float v1, p2, v2

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-ne v1, v0, :cond_4

    goto :goto_0
.end method

.method private isValidSwipeDirection(F)Z
    .locals 2
    .param p1, "amount"    # F

    .prologue
    const/4 v1, 0x0

    .line 490
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_3

    .line 491
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_1

    .line 492
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 499
    :goto_0
    return v0

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    .line 494
    :cond_1
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_0

    .line 499
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveChild(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 367
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 370
    .local v1, "canAnimViewBeDismissed":Z
    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_2

    .line 371
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 375
    .local v2, "distance":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->rotation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 376
    cmpl-float v5, p2, v7

    if-gtz v5, :cond_1

    cmpl-float v5, p2, v7

    if-nez v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_1

    :cond_0
    cmpl-float v5, p2, v7

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-ne v5, v8, :cond_3

    .line 380
    :cond_1
    int-to-float v4, v2

    .line 394
    .local v4, "newPos":F
    :goto_1
    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 395
    .local v3, "duration":I
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_8

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 403
    :goto_2
    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_9

    sget-object v5, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_X:Landroid/util/Property;

    :goto_3
    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 405
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 407
    new-instance v5, Lcom/android/systemui/recents/views/SwipeHelper$5;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$5;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 432
    return-void

    .line 373
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "distance":I
    .end local v3    # "duration":I
    .end local v4    # "newPos":F
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .restart local v2    # "distance":I
    goto :goto_0

    .line 382
    :cond_3
    neg-int v5, v2

    int-to-float v4, v5

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 385
    .end local v4    # "newPos":F
    :cond_4
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_6

    cmpl-float v5, p2, v7

    if-nez v5, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_6

    :cond_5
    cmpl-float v5, p2, v7

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-ne v5, v8, :cond_7

    .line 389
    :cond_6
    neg-int v5, v2

    int-to-float v4, v5

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 391
    .end local v4    # "newPos":F
    :cond_7
    int-to-float v4, v2

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 400
    .restart local v3    # "duration":I
    :cond_8
    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_2

    .line 403
    :cond_9
    sget-object v5, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_3
.end method

.method private setSwipeAmount(F)V
    .locals 8
    .param p1, "amount"    # F

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 474
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    .line 475
    .local v2, "size":F
    const v3, 0x3e19999a    # 0.15f

    mul-float v1, v3, v2

    .line 476
    .local v1, "maxScrollDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    .line 477
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    move p1, v1

    .line 482
    .end local v1    # "maxScrollDistance":F
    .end local v2    # "size":F
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 483
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v3, :cond_2

    .line 484
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    .line 485
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 487
    .end local v0    # "alpha":F
    :cond_2
    return-void

    .line 477
    .restart local v1    # "maxScrollDistance":F
    .restart local v2    # "size":F
    :cond_3
    neg-float p1, v1

    goto :goto_0

    .line 479
    :cond_4
    div-float v3, p1, v2

    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float p1, v1, v3

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 160
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 318
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 319
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/16 v2, 0xfa

    .line 321
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 327
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$3;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$4;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 363
    return-void
.end method


# virtual methods
.method getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 185
    .local v3, "viewSize":F
    const v4, 0x3f266666    # 0.65f

    mul-float v0, v4, v3

    .line 186
    .local v0, "fadeSize":F
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F

    .line 187
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 188
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 189
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 193
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 194
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 195
    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 190
    :cond_1
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 191
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 212
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    if-eqz v4, :cond_0

    .line 267
    :goto_0
    return v3

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 219
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    goto :goto_0

    .line 221
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 222
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 223
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 224
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/recents/views/SwipeHelper;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    .line 226
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 227
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    .line 240
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F

    goto :goto_1

    .line 243
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_1

    .line 247
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 250
    .local v2, "pos":F
    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v4

    .line 251
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 252
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 253
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 254
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_1

    .line 260
    .end local v1    # "delta":F
    .end local v2    # "pos":F
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 261
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 263
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F

    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 437
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    if-eqz v3, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v2

    .line 442
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-nez v3, :cond_2

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 444
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_0

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 450
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 462
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v3, v4

    .line 455
    .local v1, "delta":F
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setSwipeAmount(F)V

    .line 456
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 180
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 181
    return-void
.end method
