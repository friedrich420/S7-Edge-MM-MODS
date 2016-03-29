.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$SwipeActionCallback;,
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static SWIPE_PROGRESS_FADE_START:F

.field protected static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field protected DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field protected MAX_DISMISS_VELOCITY:I

.field protected MAX_ESCAPE_ANIMATION_DURATION:I

.field protected SWIPE_ESCAPE_VELOCITY:F

.field protected mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field protected mCanCurrViewBeDimissed:Z

.field protected mCurrAnimView:Landroid/view/View;

.field protected mCurrView:Landroid/view/View;

.field protected mDensityScale:F

.field protected mDragging:Z

.field private mFalsingThreshold:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field protected mHandler:Landroid/os/Handler;

.field protected mInitialTouchPos:F

.field protected mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field protected mLongPressSent:Z

.field protected mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field protected mPagingTouchSlop:F

.field protected mSwipeActionCallback:Lcom/android/systemui/SwipeHelper$SwipeActionCallback;

.field protected mSwipeDirection:I

.field protected final mTmpPos:[I

.field protected mTouchAboveFalsingThreshold:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 54
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 55
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 88
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 90
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 91
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 92
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 93
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 96
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 98
    const v0, 0x10c000f

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 192
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 195
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 203
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 205
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 206
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 141
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    .line 176
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    if-eqz p2, :cond_0

    .line 178
    move v0, v1

    .line 179
    .local v0, "alpha":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 180
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 184
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 187
    .end local v0    # "alpha":F
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 188
    return-void

    .line 182
    .restart local v0    # "alpha":F
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 130
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 132
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 130
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const-wide/16 v4, 0x0

    .line 298
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 299
    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J

    .prologue
    .line 311
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 312
    .local v1, "animView":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 314
    .local v2, "canAnimViewBeDismissed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v3, 0x1

    .line 316
    .local v3, "isLayoutRtl":Z
    :goto_0
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_2

    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-nez v7, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_2

    :cond_0
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    :cond_1
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    if-eqz v3, :cond_5

    .line 322
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    neg-float v6, v7

    .line 327
    .local v6, "newPos":F
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v7, p7, v8

    if-nez v7, :cond_7

    .line 328
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v4, v7

    .line 329
    .local v4, "duration":J
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-eqz v7, :cond_6

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    int-to-long v8, v7

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 341
    :goto_2
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 342
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 343
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_8

    .line 344
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    :goto_3
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    const-wide/16 v8, 0x0

    cmp-long v7, p4, v8

    if-lez v7, :cond_3

    .line 350
    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 352
    :cond_3
    new-instance v7, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v7, p0, p1, p3, v1}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    new-instance v7, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v7, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 367
    return-void

    .line 314
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "duration":J
    .end local v6    # "newPos":F
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 324
    .restart local v3    # "isLayoutRtl":Z
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v6

    .restart local v6    # "newPos":F
    goto :goto_1

    .line 335
    .restart local v4    # "duration":J
    :cond_6
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v4, v7

    goto :goto_2

    .line 338
    .end local v4    # "duration":J
    :cond_7
    move-wide/from16 v4, p7

    .restart local v4    # "duration":J
    goto :goto_2

    .line 346
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_8
    sget-object v7, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3
.end method

.method protected getFalsingThreshold()I
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 475
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method protected getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method protected getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method protected getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected getSwipeProgressForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 163
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 164
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 165
    .local v2, "result":F
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 166
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 167
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 171
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    .line 168
    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 169
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method protected getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 229
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    move v5, v4

    :goto_1
    return v5

    .line 231
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 232
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 233
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 234
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 235
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 236
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 237
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 238
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 239
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 242
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    .line 244
    new-instance v6, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 259
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 268
    .local v3, "pos":F
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v3, v6

    .line 269
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 270
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 271
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 281
    .end local v2    # "delta":F
    .end local v3    # "pos":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_5

    :cond_4
    move v1, v5

    .line 282
    .local v1, "captured":Z
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 283
    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 284
    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 285
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 287
    if-eqz v1, :cond_0

    goto/16 :goto_1

    .end local v1    # "captured":Z
    :cond_5
    move v1, v4

    .line 281
    goto :goto_2

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 390
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v15, :cond_0

    .line 391
    const/4 v15, 0x1

    .line 470
    :goto_0
    return v15

    .line 394
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v15, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 399
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 400
    const/4 v15, 0x1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 406
    const/4 v15, 0x0

    goto :goto_0

    .line 410
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 412
    .local v3, "action":I
    packed-switch v3, :pswitch_data_0

    .line 470
    :cond_3
    :goto_1
    const/4 v15, 0x1

    goto :goto_0

    .line 415
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v15, :cond_3

    .line 416
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 417
    .local v6, "delta":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 418
    .local v2, "absDelta":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v15, v2, v15

    if-ltz v15, :cond_4

    .line 419
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 423
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v13

    .line 425
    .local v13, "size":F
    const v15, 0x3e19999a    # 0.15f

    mul-float v10, v15, v13

    .line 426
    .local v10, "maxScrollDistance":F
    cmpl-float v15, v2, v13

    if-ltz v15, :cond_7

    .line 427
    const/4 v15, 0x0

    cmpl-float v15, v6, v15

    if-lez v15, :cond_6

    move v6, v10

    .line 432
    .end local v10    # "maxScrollDistance":F
    .end local v13    # "size":F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 434
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    goto :goto_1

    .line 427
    .restart local v10    # "maxScrollDistance":F
    .restart local v13    # "size":F
    :cond_6
    neg-float v6, v10

    goto :goto_2

    .line 429
    :cond_7
    div-float v15, v6, v13

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    mul-float v6, v10, v15

    goto :goto_2

    .line 439
    .end local v2    # "absDelta":F
    .end local v6    # "delta":F
    .end local v10    # "maxScrollDistance":F
    .end local v13    # "size":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v15, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v16, v0

    mul-float v11, v15, v16

    .line 441
    .local v11, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 442
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v16, v0

    mul-float v8, v15, v16

    .line 443
    .local v8, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v14

    .line 444
    .local v14, "velocity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v12

    .line 447
    .local v12, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    cmpl-double v15, v16, v18

    if-lez v15, :cond_9

    const/4 v4, 0x1

    .line 449
    .local v4, "childSwipedFarEnough":Z
    :goto_3
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v15, v15, v8

    if-lez v15, :cond_c

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-lez v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_b

    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v5, 0x1

    .line 452
    .local v5, "childSwipedFastEnough":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v15}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez v15, :cond_d

    const/4 v9, 0x1

    .line 455
    .local v9, "falsingDetected":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_e

    if-nez v9, :cond_e

    if-nez v5, :cond_8

    if-eqz v4, :cond_e

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/4 v7, 0x1

    .line 459
    .local v7, "dismissChild":Z
    :goto_8
    if-eqz v7, :cond_10

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_f

    .end local v14    # "velocity":F
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 447
    .end local v4    # "childSwipedFarEnough":Z
    .end local v5    # "childSwipedFastEnough":Z
    .end local v7    # "dismissChild":Z
    .end local v9    # "falsingDetected":Z
    .restart local v14    # "velocity":F
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 449
    .restart local v4    # "childSwipedFarEnough":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    .line 452
    .restart local v5    # "childSwipedFastEnough":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 455
    .restart local v9    # "falsingDetected":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    .line 461
    .restart local v7    # "dismissChild":Z
    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 464
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 224
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 110
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 106
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 114
    return-void
.end method

.method public setSwipeActionCallback(Lcom/android/systemui/SwipeHelper$SwipeActionCallback;)V
    .locals 0
    .param p1, "swipeCallback"    # Lcom/android/systemui/SwipeHelper$SwipeActionCallback;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeActionCallback:Lcom/android/systemui/SwipeHelper$SwipeActionCallback;

    .line 528
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 370
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 372
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 373
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 374
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 375
    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 380
    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 387
    return-void
.end method

.method public snapContentView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 530
    return-void
.end method
