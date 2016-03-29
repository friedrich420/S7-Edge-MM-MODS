.class public Lcom/android/systemui/BlockSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "BlockSwipeHelper.java"


# static fields
.field private static final DEBUG_SWIPE:Z

.field private static final mUseRightSwipe:Z

.field private static final mUseSwipeAction:Z


# instance fields
.field private mCanCurrViewBeBlocked:Z

.field private mDirection:I

.field private mInProgressSwipe:Z

.field private mIsLayoutRtl:Z

.field private mIsMaxSwipeSize:Z

.field private mIsZeroSwipeSize:Z

.field private mMaxSwipeSize:F

.field private mPosX:F

.field private mPreviousX:F

.field private mSwipeMargin:I

.field private mSwipePadding:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeAction:Z

    sput-boolean v0, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    .line 42
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRightSwipeAction:Z

    sput-boolean v0, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    .line 43
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeAction:Z

    sput-boolean v0, Lcom/android/systemui/BlockSwipeHelper;->mUseSwipeAction:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    .line 61
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeMargin:I

    .line 63
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipePadding:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BlockSwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BlockSwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/BlockSwipeHelper;->setSwipeVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private doSnap(ZF)V
    .locals 2
    .param p1, "childSwipedFastEnough"    # Z
    .param p2, "velocity"    # F

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 659
    iget-boolean v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsMaxSwipeSize:Z

    if-nez v0, :cond_0

    .line 660
    iget-boolean v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mInProgressSwipe:Z

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_1

    .end local p2    # "velocity":F
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/BlockSwipeHelper;->snapContentView(Landroid/view/View;F)V

    .line 667
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    .line 668
    return-void

    .line 661
    .restart local p2    # "velocity":F
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/BlockSwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private getContentView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 488
    const v1, 0x7f0e0313

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 502
    :goto_0
    return-object v1

    .line 492
    :cond_0
    const v1, 0x7f0e0314

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 494
    goto :goto_0

    .line 502
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDBgView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 550
    const v0, 0x7f0e0304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getNBgView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 546
    const v0, 0x7f0e0303

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 510
    iget-boolean v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_6

    .line 511
    const v2, 0x7f0e018c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 512
    .local v1, "gutsView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 542
    .end local v1    # "gutsView":Landroid/view/View;
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 516
    .restart local v1    # "gutsView":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 517
    sget-boolean v2, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    if-eqz v2, :cond_1

    .line 518
    const-string v2, "SwipeAction"

    const-string v3, "getTargetView():TV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/BlockSwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 523
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 525
    sget-boolean v2, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 528
    :cond_4
    sget-boolean v2, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    if-eqz v2, :cond_5

    .line 529
    const-string v2, "SwipeAction"

    const-string v3, "getTargetView():CV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mInProgressSwipe:Z

    .line 532
    iput-object v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mTargetView:Landroid/view/View;

    move-object p1, v0

    .line 533
    goto :goto_0

    .line 538
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "gutsView":Landroid/view/View;
    :cond_6
    sget-boolean v2, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    if-eqz v2, :cond_7

    .line 539
    const-string v2, "SwipeAction"

    const-string v3, "getTargetView():V"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/BlockSwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method

.method private moveContentView(Landroid/view/View;F)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 604
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 605
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 607
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_4

    move v4, v7

    .line 609
    .local v4, "isLayoutRtl":Z
    :goto_0
    cmpg-float v9, p2, v10

    if-ltz v9, :cond_2

    cmpl-float v9, p2, v10

    if-nez v9, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    :cond_0
    cmpl-float v9, p2, v10

    if-nez v9, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeDirection:I

    if-eq v9, v7, :cond_2

    :cond_1
    cmpl-float v9, p2, v10

    if-nez v9, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    if-eqz v4, :cond_5

    .line 615
    :cond_2
    iget v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v6, v9

    .line 619
    .local v6, "newPos":F
    :goto_1
    iget v9, p0, Lcom/android/systemui/BlockSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    .line 620
    .local v2, "duration":J
    cmpl-float v9, p2, v10

    if-eqz v9, :cond_6

    .line 621
    invoke-virtual {p0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-long v10, v9

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 629
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v1, v12, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 630
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/BlockSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 631
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v9, Lcom/android/systemui/BlockSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 632
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 633
    new-instance v9, Lcom/android/systemui/BlockSwipeHelper$4;

    invoke-direct {v9, p0, p1, v1}, Lcom/android/systemui/BlockSwipeHelper$4;-><init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 639
    new-instance v9, Lcom/android/systemui/BlockSwipeHelper$5;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/BlockSwipeHelper$5;-><init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 645
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 646
    .local v5, "moveContentAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v0, v9, v8

    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/android/systemui/BlockSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/BlockSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 649
    sget-object v7, Lcom/android/systemui/BlockSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 650
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 651
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 653
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":J
    .end local v4    # "isLayoutRtl":Z
    .end local v5    # "moveContentAnimatorSet":Landroid/animation/AnimatorSet;
    .end local v6    # "newPos":F
    :cond_3
    return-void

    :cond_4
    move v4, v8

    .line 607
    goto/16 :goto_0

    .line 617
    .restart local v4    # "isLayoutRtl":Z
    :cond_5
    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    .restart local v6    # "newPos":F
    goto :goto_1

    .line 626
    .restart local v2    # "duration":J
    :cond_6
    iget v9, p0, Lcom/android/systemui/BlockSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    goto :goto_2
.end method

.method private setSwipeVisibility(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 561
    sget-boolean v1, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-eqz v1, :cond_0

    .line 562
    const v1, 0x7f0e030d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, "rViewGroup":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 567
    .end local v0    # "rViewGroup":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 68
    cmpl-float v7, p2, v9

    if-nez v7, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v2, 0x0

    .line 73
    .local v2, "nbgView":Landroid/view/View;
    const/4 v0, 0x0

    .line 74
    .local v0, "dbgView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "targetView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mInProgressSwipe:Z

    if-eqz v7, :cond_f

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    .line 96
    .local v4, "x":F
    sget-boolean v7, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    iget v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 97
    sget-boolean v6, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    if-eqz v6, :cond_2

    .line 98
    const-string v6, "SwipeAction"

    const-string v7, "setTranslation():2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsMaxSwipeSize:Z

    iput-boolean v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    .line 101
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 102
    if-eqz v2, :cond_3

    .line 103
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    :cond_3
    if-eqz v0, :cond_0

    .line 106
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 114
    :cond_4
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    if-ne v7, v5, :cond_b

    .line 115
    iget-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_a

    .line 116
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    cmpl-float v7, v4, v7

    if-nez v7, :cond_5

    .line 117
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    iput v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    .line 136
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_d

    move v1, v5

    .line 137
    .local v1, "isGreaterThanZero":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_6

    .line 138
    if-nez v1, :cond_e

    move v1, v5

    .line 140
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    sget-boolean v6, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-nez v6, :cond_14

    if-nez v1, :cond_14

    .line 142
    :cond_7
    sget-boolean v6, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    if-eqz v6, :cond_8

    .line 143
    const-string v6, "SwipeAction"

    const-string v7, "setTranslation():3"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_8
    iput-boolean v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    .line 146
    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    if-eqz v2, :cond_9

    .line 148
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 150
    :cond_9
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 120
    .end local v1    # "isGreaterThanZero":Z
    :cond_a
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    cmpl-float v7, v4, v7

    if-nez v7, :cond_5

    .line 121
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    goto :goto_1

    .line 124
    :cond_b
    sget-boolean v7, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 125
    iget-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_c

    .line 126
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    cmpl-float v7, v4, v7

    if-nez v7, :cond_5

    .line 127
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    goto :goto_1

    .line 130
    :cond_c
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    cmpl-float v7, v4, v7

    if-nez v7, :cond_5

    .line 131
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    iput v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    goto :goto_1

    :cond_d
    move v1, v6

    .line 136
    goto :goto_2

    .restart local v1    # "isGreaterThanZero":Z
    :cond_e
    move v1, v6

    .line 138
    goto :goto_3

    .line 158
    .end local v1    # "isGreaterThanZero":Z
    .end local v4    # "x":F
    :cond_f
    iget-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v7, :cond_14

    .line 159
    iget v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_12

    move v1, v5

    .line 160
    .restart local v1    # "isGreaterThanZero":Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_10

    .line 161
    if-nez v1, :cond_13

    move v1, v5

    .line 163
    :cond_10
    :goto_5
    sget-boolean v6, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-eqz v6, :cond_14

    if-nez v1, :cond_14

    .line 165
    sget-boolean v6, Lcom/android/systemui/BlockSwipeHelper;->DEBUG_SWIPE:Z

    if-eqz v6, :cond_11

    .line 166
    const-string v6, "SwipeAction"

    const-string v7, "setTranslation():4"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_11
    iput-boolean v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    .line 169
    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .end local v1    # "isGreaterThanZero":Z
    :cond_12
    move v1, v6

    .line 159
    goto :goto_4

    .restart local v1    # "isGreaterThanZero":Z
    :cond_13
    move v1, v6

    .line 161
    goto :goto_5

    .line 175
    .end local v1    # "isGreaterThanZero":Z
    :cond_14
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_16

    .line 176
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 178
    if-eqz v2, :cond_15

    .line 179
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 181
    :cond_15
    if-eqz v0, :cond_0

    .line 182
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 185
    :cond_16
    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private snapContentView(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 455
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 457
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 458
    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 459
    invoke-virtual {p0, v1, v7}, Lcom/android/systemui/BlockSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 460
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v2, 0x96

    .line 461
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 462
    new-instance v4, Lcom/android/systemui/BlockSwipeHelper$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/BlockSwipeHelper$2;-><init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    new-instance v4, Lcom/android/systemui/BlockSwipeHelper$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/BlockSwipeHelper$3;-><init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 476
    .local v3, "snapAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/BlockSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/BlockSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 479
    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 480
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 482
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    .end local v3    # "snapAnimatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    .locals 9
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 570
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 571
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p0, v0}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    .line 573
    .local v3, "position":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_3

    move v2, v5

    .line 574
    .local v2, "isLayoutRtl":Z
    :goto_0
    cmpl-float v7, v3, v8

    if-lez v7, :cond_4

    move v1, v5

    .line 575
    .local v1, "isGreaterThanZero":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 576
    if-nez v1, :cond_5

    move v1, v5

    .line 589
    :cond_0
    :goto_2
    sget-boolean v5, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-eqz v5, :cond_2

    .line 590
    const v5, 0x7f0e030d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 591
    .local v4, "rViewGroup":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 592
    if-nez v1, :cond_2

    .line 593
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 594
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :cond_1
    iget v5, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    div-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 601
    .end local v1    # "isGreaterThanZero":Z
    .end local v2    # "isLayoutRtl":Z
    .end local v3    # "position":F
    .end local v4    # "rViewGroup":Landroid/view/View;
    :cond_2
    return-void

    .restart local v3    # "position":F
    :cond_3
    move v2, v6

    .line 573
    goto :goto_0

    .restart local v2    # "isLayoutRtl":Z
    :cond_4
    move v1, v6

    .line 574
    goto :goto_1

    .restart local v1    # "isGreaterThanZero":Z
    :cond_5
    move v1, v6

    .line 576
    goto :goto_2
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    .line 196
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    if-eqz p2, :cond_1

    .line 198
    move v0, v1

    .line 199
    .local v0, "alpha":F
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 200
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 209
    .end local v0    # "alpha":F
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/BlockSwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 215
    return-void

    .line 202
    .restart local v0    # "alpha":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget v0, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 220
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_2

    :cond_1
    move v8, v7

    :cond_2
    move v7, v8

    :goto_1
    return v7

    .line 222
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 223
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    .line 224
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    .line 225
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    .line 226
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 227
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 228
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 229
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 230
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mInitialTouchPos:F

    .line 233
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeActionCallback:Lcom/android/systemui/SwipeHelper$SwipeActionCallback;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_3

    .line 234
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeActionCallback:Lcom/android/systemui/SwipeHelper$SwipeActionCallback;

    iget-object v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$SwipeActionCallback;->canSwipeAction(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCanCurrViewBeBlocked:Z

    .line 236
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    .line 237
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipePadding:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    .line 239
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/android/systemui/BlockSwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v5

    .line 240
    .local v5, "x":F
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    neg-float v6, v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mMaxSwipeSize:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_5

    .line 241
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_4

    .line 242
    new-instance v6, Lcom/android/systemui/BlockSwipeHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/BlockSwipeHelper$1;-><init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 257
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    .end local v5    # "x":F
    :cond_5
    iput v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    .line 262
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mInProgressSwipe:Z

    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsMaxSwipeSize:Z

    .line 263
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mPosX:F

    .line 264
    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeDirection:I

    if-nez v6, :cond_6

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mPreviousX:F

    .line 267
    :cond_6
    iput-object v12, p0, Lcom/android/systemui/BlockSwipeHelper;->mTargetView:Landroid/view/View;

    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 236
    goto :goto_2

    .line 271
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    if-nez v6, :cond_0

    .line 272
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 274
    .local v4, "pos":F
    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mInitialTouchPos:F

    sub-float v3, v4, v6

    .line 275
    .local v3, "delta":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mPagingTouchSlop:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_8

    .line 276
    iget-object v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 277
    iput-boolean v7, p0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    sub-float/2addr v6, v9

    iput v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mInitialTouchPos:F

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/BlockSwipeHelper;->removeLongPressCallback()V

    .line 283
    :cond_8
    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeDirection:I

    if-nez v6, :cond_0

    .line 284
    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mPreviousX:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_b

    move v2, v7

    .line 285
    .local v2, "currentDirection":I
    :goto_3
    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    if-eqz v6, :cond_9

    .line 286
    mul-int/lit8 v2, v2, -0x1

    .line 288
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    if-eq v2, v6, :cond_a

    .line 289
    iput v4, p0, Lcom/android/systemui/BlockSwipeHelper;->mInitialTouchPos:F

    .line 290
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    .line 292
    :cond_a
    iput v2, p0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    .line 293
    iput v4, p0, Lcom/android/systemui/BlockSwipeHelper;->mPreviousX:F

    goto/16 :goto_0

    .line 284
    .end local v2    # "currentDirection":I
    :cond_b
    const/4 v2, -0x1

    goto :goto_3

    .line 300
    .end local v3    # "delta":F
    .end local v4    # "pos":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_d

    :cond_c
    move v1, v7

    .line 301
    .local v1, "captured":Z
    :goto_4
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    .line 302
    iput-object v12, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    .line 303
    iput-object v12, p0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 304
    iput-boolean v8, p0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/BlockSwipeHelper;->removeLongPressCallback()V

    .line 306
    if-eqz v1, :cond_0

    goto/16 :goto_1

    .end local v1    # "captured":Z
    :cond_d
    move v1, v8

    .line 300
    goto :goto_4

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 317
    const/16 v19, 0x1

    .line 430
    :goto_0
    return v19

    .line 320
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 325
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/BlockSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 326
    const/16 v19, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BlockSwipeHelper;->removeLongPressCallback()V

    .line 332
    const/16 v19, 0x0

    goto :goto_0

    .line 336
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 338
    .local v5, "action":I
    packed-switch v5, :pswitch_data_0

    .line 430
    :cond_3
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 341
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mSwipeDirection:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 343
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v16

    .line 344
    .local v16, "pos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mPreviousX:F

    move/from16 v19, v0

    cmpg-float v19, v19, v16

    if-gez v19, :cond_9

    const/4 v8, 0x1

    .line 345
    .local v8, "currentDirection":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mIsLayoutRtl:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 346
    mul-int/lit8 v8, v8, -0x1

    .line 348
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v8, v0, :cond_5

    .line 349
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BlockSwipeHelper;->mInitialTouchPos:F

    .line 350
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BlockSwipeHelper;->mIsZeroSwipeSize:Z

    .line 352
    :cond_5
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    .line 353
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BlockSwipeHelper;->mPreviousX:F

    .line 356
    .end local v8    # "currentDirection":I
    .end local v16    # "pos":F
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/BlockSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mInitialTouchPos:F

    move/from16 v20, v0

    sub-float v9, v19, v20

    .line 357
    .local v9, "delta":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 358
    .local v4, "absDelta":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BlockSwipeHelper;->getFalsingThreshold()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v4, v19

    if-ltz v19, :cond_7

    .line 359
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BlockSwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mInProgressSwipe:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v17

    .line 366
    .local v17, "size":F
    const v19, 0x3e19999a    # 0.15f

    mul-float v13, v19, v17

    .line 367
    .local v13, "maxScrollDistance":F
    cmpl-float v19, v4, v17

    if-ltz v19, :cond_b

    .line 368
    const/16 v19, 0x0

    cmpl-float v19, v9, v19

    if-lez v19, :cond_a

    move v9, v13

    .line 373
    .end local v13    # "maxScrollDistance":F
    .end local v17    # "size":F
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mIsMaxSwipeSize:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/BlockSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/BlockSwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 344
    .end local v4    # "absDelta":F
    .end local v9    # "delta":F
    .restart local v16    # "pos":F
    :cond_9
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 368
    .end local v16    # "pos":F
    .restart local v4    # "absDelta":F
    .restart local v9    # "delta":F
    .restart local v13    # "maxScrollDistance":F
    .restart local v17    # "size":F
    :cond_a
    neg-float v9, v13

    goto :goto_3

    .line 370
    :cond_b
    div-float v19, v9, v17

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v9, v13, v19

    goto :goto_3

    .line 382
    .end local v4    # "absDelta":F
    .end local v9    # "delta":F
    .end local v13    # "maxScrollDistance":F
    .end local v17    # "size":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mDensityScale:F

    move/from16 v20, v0

    mul-float v14, v19, v20

    .line 384
    .local v14, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mDensityScale:F

    move/from16 v20, v0

    mul-float v10, v19, v20

    .line 386
    .local v10, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v18

    .line 387
    .local v18, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v15

    .line 390
    .local v15, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    cmpl-double v19, v20, v22

    if-lez v19, :cond_d

    const/4 v6, 0x1

    .line 392
    .local v6, "childSwipedFarEnough":Z
    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v19, v19, v10

    if-lez v19, :cond_10

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_10

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-lez v19, :cond_e

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_f

    const/16 v20, 0x1

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .line 395
    .local v7, "childSwipedFastEnough":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mTouchAboveFalsingThreshold:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    const/4 v11, 0x1

    .line 400
    .local v11, "falsingDetected":Z
    :goto_8
    if-nez v11, :cond_12

    if-nez v7, :cond_c

    if-eqz v6, :cond_12

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/4 v12, 0x1

    .line 403
    .local v12, "isEnough":Z
    :goto_9
    if-eqz v12, :cond_1a

    .line 404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mInProgressSwipe:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 407
    sget-boolean v19, Lcom/android/systemui/BlockSwipeHelper;->mUseRightSwipe:Z

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_13

    .end local v18    # "velocity":F
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/BlockSwipeHelper;->moveContentView(Landroid/view/View;F)V

    .line 412
    :goto_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BlockSwipeHelper;->mDragging:Z

    goto/16 :goto_1

    .line 390
    .end local v6    # "childSwipedFarEnough":Z
    .end local v7    # "childSwipedFastEnough":Z
    .end local v11    # "falsingDetected":Z
    .end local v12    # "isEnough":Z
    .restart local v18    # "velocity":F
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 392
    .restart local v6    # "childSwipedFarEnough":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v20, 0x0

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    goto :goto_7

    .line 395
    .restart local v7    # "childSwipedFastEnough":Z
    :cond_11
    const/4 v11, 0x0

    goto :goto_8

    .line 400
    .restart local v11    # "falsingDetected":Z
    :cond_12
    const/4 v12, 0x0

    goto :goto_9

    .line 408
    .restart local v12    # "isEnough":Z
    :cond_13
    const/16 v18, 0x0

    goto :goto_a

    .line 410
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_15

    .end local v18    # "velocity":F
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/BlockSwipeHelper;->snapContentView(Landroid/view/View;F)V

    goto :goto_b

    .restart local v18    # "velocity":F
    :cond_15
    const/16 v18, 0x0

    goto :goto_c

    .line 414
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_19

    sget-boolean v19, Lcom/android/systemui/BlockSwipeHelper;->mUseSwipeAction:Z

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_19

    .line 416
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_18

    .end local v18    # "velocity":F
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BlockSwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .restart local v18    # "velocity":F
    :cond_18
    const/16 v18, 0x0

    goto :goto_d

    .line 418
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/BlockSwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    .line 422
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/BlockSwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public snapContentView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 434
    if-eqz p2, :cond_0

    .line 435
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/BlockSwipeHelper;->snapContentView(Landroid/view/View;F)V

    .line 452
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "contentView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, "nbgView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, "dbgView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 444
    :cond_1
    if-eqz v2, :cond_2

    .line 445
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 447
    :cond_2
    if-eqz v1, :cond_3

    .line 448
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 450
    :cond_3
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/BlockSwipeHelper;->setSwipeVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method
