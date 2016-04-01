.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const-string v1, "StackView"

    iput-object v1, p0, TAG:Ljava/lang/String;

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTouchRect:Landroid/graphics/Rect;

    .line 129
    iput v4, p0, mYVelocity:I

    .line 130
    iput v4, p0, mSwipeGestureType:I

    .line 136
    iput-boolean v4, p0, mTransitionIsSetup:Z

    .line 143
    iput-boolean v4, p0, mClickFeedbackIsValid:Z

    .line 145
    iput-boolean v4, p0, mFirstLayoutHappened:Z

    .line 146
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mLastInteractionTime:J

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, stackInvalidateRect:Landroid/graphics/Rect;

    .line 178
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mResOutColor:I

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mClickColor:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    invoke-direct {p0}, initStackView()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 53
    iget-object v0, p0, mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/StackView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 53
    iget v0, p0, mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/StackView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 53
    iget v0, p0, mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .registers 14
    .param p1, "deltaY"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 658
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, mTouchSlop:I

    if-le v10, v11, :cond_20

    iget v10, p0, mSwipeGestureType:I

    if-nez v10, :cond_20

    .line 659
    const/4 v10, 0x0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_21

    move v5, v7

    .line 660
    .local v5, "swipeGestureType":I
    :goto_16
    invoke-virtual {p0}, cancelLongPress()V

    .line 661
    invoke-virtual {p0, v7}, requestDisallowInterceptTouchEvent(Z)V

    .line 663
    iget-object v10, p0, mAdapter:Landroid/widget/Adapter;

    if-nez v10, :cond_23

    .line 703
    .end local v5    # "swipeGestureType":I
    :cond_20
    :goto_20
    return-void

    :cond_21
    move v5, v8

    .line 659
    goto :goto_16

    .line 664
    .restart local v5    # "swipeGestureType":I
    :cond_23
    invoke-virtual {p0}, getCount()I

    move-result v1

    .line 667
    .local v1, "adapterCount":I
    iget v10, p0, mStackMode:I

    if-nez v10, :cond_72

    .line 668
    if-ne v5, v8, :cond_70

    move v0, v9

    .line 673
    .local v0, "activeIndex":I
    :goto_2e
    iget-boolean v10, p0, mLoopViews:Z

    if-eqz v10, :cond_78

    if-ne v1, v7, :cond_78

    iget v10, p0, mStackMode:I

    if-nez v10, :cond_3a

    if-eq v5, v7, :cond_40

    :cond_3a
    iget v10, p0, mStackMode:I

    if-ne v10, v7, :cond_78

    if-ne v5, v8, :cond_78

    :cond_40
    move v3, v7

    .line 676
    .local v3, "endOfStack":Z
    :goto_41
    iget-boolean v10, p0, mLoopViews:Z

    if-eqz v10, :cond_7a

    if-ne v1, v7, :cond_7a

    iget v10, p0, mStackMode:I

    if-ne v10, v7, :cond_4d

    if-eq v5, v7, :cond_53

    :cond_4d
    iget v10, p0, mStackMode:I

    if-nez v10, :cond_7a

    if-ne v5, v8, :cond_7a

    :cond_53
    move v2, v7

    .line 681
    .local v2, "beginningOfStack":Z
    :goto_54
    iget-boolean v8, p0, mLoopViews:Z

    if-eqz v8, :cond_7c

    if-nez v2, :cond_7c

    if-nez v3, :cond_7c

    .line 682
    const/4 v4, 0x0

    .line 692
    .local v4, "stackMode":I
    :goto_5d
    if-nez v4, :cond_95

    :goto_5f
    iput-boolean v7, p0, mTransitionIsSetup:Z

    .line 694
    invoke-virtual {p0, v0}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 695
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_20

    .line 697
    invoke-direct {p0, v6, v4}, setupStackSlider(Landroid/view/View;I)V

    .line 700
    iput v5, p0, mSwipeGestureType:I

    .line 701
    invoke-virtual {p0}, cancelHandleClick()V

    goto :goto_20

    .end local v0    # "activeIndex":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v6    # "v":Landroid/view/View;
    :cond_70
    move v0, v7

    .line 668
    goto :goto_2e

    .line 670
    :cond_72
    if-ne v5, v8, :cond_76

    move v0, v7

    .restart local v0    # "activeIndex":I
    :goto_75
    goto :goto_2e

    .end local v0    # "activeIndex":I
    :cond_76
    move v0, v9

    goto :goto_75

    .restart local v0    # "activeIndex":I
    :cond_78
    move v3, v9

    .line 673
    goto :goto_41

    .restart local v3    # "endOfStack":Z
    :cond_7a
    move v2, v9

    .line 676
    goto :goto_54

    .line 683
    .restart local v2    # "beginningOfStack":Z
    :cond_7c
    iget v8, p0, mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    const/4 v10, -0x1

    if-eq v8, v10, :cond_84

    if-eqz v2, :cond_88

    .line 684
    :cond_84
    add-int/lit8 v0, v0, 0x1

    .line 685
    const/4 v4, 0x1

    .restart local v4    # "stackMode":I
    goto :goto_5d

    .line 686
    .end local v4    # "stackMode":I
    :cond_88
    iget v8, p0, mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    add-int/lit8 v10, v1, -0x1

    if-eq v8, v10, :cond_91

    if-eqz v3, :cond_93

    .line 687
    :cond_91
    const/4 v4, 0x2

    .restart local v4    # "stackMode":I
    goto :goto_5d

    .line 689
    .end local v4    # "stackMode":I
    :cond_93
    const/4 v4, 0x0

    .restart local v4    # "stackMode":I
    goto :goto_5d

    :cond_95
    move v7, v9

    .line 692
    goto :goto_5f
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 811
    iget v9, p0, mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 812
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 813
    .local v4, "newY":F
    iget v9, p0, mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 814
    .local v1, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mLastInteractionTime:J

    .line 816
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2e

    .line 817
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 818
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, mYVelocity:I

    .line 821
    :cond_2e
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_3a

    .line 822
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 823
    const/4 v9, 0x0

    iput-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 826
    :cond_3a
    iget v9, p0, mSwipeThreshold:I

    if-le v1, v9, :cond_63

    iget v9, p0, mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_63

    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_63

    .line 830
    const/4 v9, 0x0

    iput v9, p0, mSwipeGestureType:I

    .line 833
    iget v9, p0, mStackMode:I

    if-nez v9, :cond_5f

    .line 834
    invoke-virtual {p0}, showPrevious()V

    .line 838
    :goto_53
    iget-object v9, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 891
    :cond_58
    :goto_58
    const/4 v9, -0x1

    iput v9, p0, mActivePointerId:I

    .line 892
    const/4 v9, 0x0

    iput v9, p0, mSwipeGestureType:I

    .line 893
    return-void

    .line 836
    :cond_5f
    invoke-virtual {p0}, showNext()V

    goto :goto_53

    .line 839
    :cond_63
    iget v9, p0, mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_87

    iget v9, p0, mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_87

    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_87

    .line 843
    const/4 v9, 0x0

    iput v9, p0, mSwipeGestureType:I

    .line 846
    iget v9, p0, mStackMode:I

    if-nez v9, :cond_83

    .line 847
    invoke-virtual {p0}, showNext()V

    .line 852
    :goto_7d
    iget-object v9, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_58

    .line 849
    :cond_83
    invoke-virtual {p0}, showPrevious()V

    goto :goto_7d

    .line 853
    :cond_87
    iget v9, p0, mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f2

    .line 856
    iget v9, p0, mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 857
    .local v3, "finalYProgress":F
    :goto_93
    iget v9, p0, mStackMode:I

    if-eqz v9, :cond_9d

    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_e7

    .line 858
    :cond_9d
    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 863
    .local v2, "duration":I
    :goto_a7
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 864
    .local v0, "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 865
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 866
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 868
    .local v5, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 869
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 870
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_58

    .line 856
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_e5
    const/4 v3, 0x0

    goto :goto_93

    .line 860
    .restart local v3    # "finalYProgress":F
    :cond_e7
    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_a7

    .line 871
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    :cond_f2
    iget v9, p0, mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_58

    .line 873
    iget v9, p0, mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_148

    const/4 v3, 0x0

    .line 875
    .restart local v3    # "finalYProgress":F
    :goto_fd
    iget v9, p0, mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_108

    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_14b

    .line 876
    :cond_108
    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 881
    .restart local v2    # "duration":I
    :goto_112
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 882
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 884
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 885
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 887
    .restart local v5    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 888
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_58

    .line 873
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_148
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_fd

    .line 878
    .restart local v3    # "finalYProgress":F
    :cond_14b
    iget-object v9, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_112
.end method

.method private initStackView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 191
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v6}, configureViewAnimator(II)V

    .line 192
    invoke-virtual {p0, v6}, setStaticTransformationsEnabled(Z)V

    .line 193
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 194
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, mTouchSlop:I

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, mMaximumVelocity:I

    .line 196
    iput v5, p0, mActivePointerId:I

    .line 198
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mHighlight:Landroid/widget/ImageView;

    .line 199
    iget-object v2, p0, mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v2, p0, mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 202
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mClickFeedback:Landroid/widget/ImageView;

    .line 203
    iget-object v2, p0, mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v2, p0, mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 205
    iget-object v2, p0, mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 209
    sget-object v2, sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_80

    .line 210
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 212
    :cond_80
    invoke-virtual {p0, v7}, setClipChildren(Z)V

    .line 213
    invoke-virtual {p0, v7}, setClipToPadding(Z)V

    .line 218
    iput v6, p0, mStackMode:I

    .line 221
    iput v5, p0, mWhichChild:I

    .line 225
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 226
    .local v1, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, mFramePadding:I

    .line 227
    return-void
.end method

.method private measureChildren()V
    .registers 14

    .prologue
    .line 1131
    invoke-virtual {p0}, getChildCount()I

    move-result v5

    .line 1133
    .local v5, "count":I
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v10

    .line 1134
    .local v10, "measuredWidth":I
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v9

    .line 1136
    .local v9, "measuredHeight":I
    int-to-float v11, v10

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, mPaddingRight:I

    sub-int v4, v11, v12

    .line 1138
    .local v4, "childWidth":I
    int-to-float v11, v9

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1141
    .local v1, "childHeight":I
    const/4 v8, 0x0

    .line 1142
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .line 1144
    .local v7, "maxHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2f
    if-ge v6, v5, :cond_5d

    .line 1145
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    .local v0, "child":Landroid/view/View;
    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1149
    iget-object v11, p0, mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_5a

    iget-object v11, p0, mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_5a

    .line 1150
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1151
    .local v3, "childMeasuredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1152
    .local v2, "childMeasuredHeight":I
    if-le v3, v8, :cond_57

    .line 1153
    move v8, v3

    .line 1155
    :cond_57
    if-le v2, v7, :cond_5a

    .line 1156
    move v7, v2

    .line 1144
    .end local v2    # "childMeasuredHeight":I
    .end local v3    # "childMeasuredWidth":I
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1161
    .end local v0    # "child":Landroid/view/View;
    :cond_5d
    const v11, 0x3dcccccd    # 0.1f

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, mNewPerspectiveShiftX:F

    .line 1162
    const v11, 0x3dcccccd    # 0.1f

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, mNewPerspectiveShiftY:F

    .line 1165
    if-lez v8, :cond_76

    if-lez v5, :cond_76

    if-ge v8, v4, :cond_76

    .line 1166
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, mNewPerspectiveShiftX:F

    .line 1169
    :cond_76
    if-lez v7, :cond_81

    if-lez v5, :cond_81

    if-ge v7, v1, :cond_81

    .line 1170
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, mNewPerspectiveShiftY:F

    .line 1172
    :cond_81
    return-void
.end method

.method private onLayout()V
    .registers 4

    .prologue
    .line 563
    iget-boolean v1, p0, mFirstLayoutHappened:Z

    if-nez v1, :cond_a

    .line 564
    const/4 v1, 0x1

    iput-boolean v1, p0, mFirstLayoutHappened:Z

    .line 565
    invoke-direct {p0}, updateChildTransforms()V

    .line 568
    :cond_a
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 569
    .local v0, "newSlideAmount":I
    iget v1, p0, mSlideAmount:I

    if-eq v1, v0, :cond_28

    .line 570
    iput v0, p0, mSlideAmount:I

    .line 571
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, mSwipeThreshold:I

    .line 574
    :cond_28
    iget v1, p0, mPerspectiveShiftY:F

    iget v2, p0, mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3c

    iget v1, p0, mPerspectiveShiftX:F

    iget v2, p0, mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_47

    .line 577
    :cond_3c
    iget v1, p0, mNewPerspectiveShiftY:F

    iput v1, p0, mPerspectiveShiftY:F

    .line 578
    iget v1, p0, mNewPerspectiveShiftX:F

    iput v1, p0, mPerspectiveShiftX:F

    .line 579
    invoke-direct {p0}, updateChildTransforms()V

    .line 581
    :cond_47
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 768
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 769
    .local v5, "pointerId":I
    iget v9, p0, mActivePointerId:I

    if-ne v5, v9, :cond_18

    .line 771
    iget v9, p0, mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_19

    const/4 v1, 0x0

    .line 773
    .local v1, "activeViewIndex":I
    :goto_12
    invoke-virtual {p0, v1}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 774
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_1b

    .line 808
    .end local v1    # "activeViewIndex":I
    .end local v6    # "v":Landroid/view/View;
    :cond_18
    :goto_18
    return-void

    .line 771
    :cond_19
    const/4 v1, 0x1

    goto :goto_12

    .line 780
    .restart local v1    # "activeViewIndex":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_7a

    .line 781
    if-eq v2, v0, :cond_77

    .line 783
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 784
    .local v7, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 786
    .local v8, "y":F
    iget-object v9, p0, mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 787
    iget-object v9, p0, mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 788
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 789
    .local v3, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 792
    .local v4, "oldY":F
    iget v9, p0, mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, mInitialY:F

    .line 793
    iget v9, p0, mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, mInitialX:F

    .line 795
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, mActivePointerId:I

    .line 796
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_18

    .line 797
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_18

    .line 780
    .end local v3    # "oldX":F
    .end local v4    # "oldY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 806
    :cond_7a
    invoke-direct {p0, p1}, handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_18
.end method

.method private pacedScroll(Z)V
    .registers 8
    .param p1, "up"    # Z

    .prologue
    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, mLastScrollTime:J

    sub-long v0, v2, v4

    .line 605
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    .line 606
    if-eqz p1, :cond_1a

    .line 607
    invoke-virtual {p0}, showPrevious()V

    .line 611
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastScrollTime:J

    .line 613
    :cond_19
    return-void

    .line 609
    :cond_1a
    invoke-virtual {p0}, showNext()V

    goto :goto_13
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 373
    iget-object v0, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 374
    if-eqz p1, :cond_40

    .line 375
    iget-object v0, p0, mHighlight:Landroid/widget/ImageView;

    sget-object v1, sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v2, p0, mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    iget-object v0, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 377
    iget-object v0, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 378
    iget-object v0, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 379
    iget-object v0, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 381
    iget-object v0, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_40
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .registers 24
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget v3, v0, mPerspectiveShiftY:F

    .line 321
    .local v3, "maxPerspectiveShiftY":F
    move-object/from16 v0, p0

    iget v2, v0, mPerspectiveShiftX:F

    .line 323
    .local v2, "maxPerspectiveShiftX":F
    move-object/from16 v0, p0

    iget v0, v0, mStackMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_127

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, mMaxNumActiveViews:I

    move/from16 v17, v0

    sub-int v17, v17, p1

    add-int/lit8 p1, v17, -0x1

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, mMaxNumActiveViews:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_30

    add-int/lit8 p1, p1, -0x1

    .line 331
    :cond_30
    :goto_30
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mMaxNumActiveViews:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 333
    .local v7, "r":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v7

    mul-float v18, v18, v19

    sub-float v8, v17, v18

    .line 335
    .local v8, "scale":F
    mul-float v6, v7, v3

    .line 336
    .local v6, "perspectiveTranslationY":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v8, v17

    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666    # 0.9f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    mul-float v12, v17, v18

    .line 338
    .local v12, "scaleShiftCorrectionY":F
    add-float v14, v6, v12

    .line 340
    .local v14, "transY":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v7

    mul-float v5, v17, v2

    .line 341
    .local v5, "perspectiveTranslationX":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v8

    invoke-virtual/range {p0 .. p0}, getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666    # 0.9f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    mul-float v11, v17, v18

    .line 343
    .local v11, "scaleShiftCorrectionX":F
    add-float v13, v5, v11

    .line 347
    .local v13, "transX":F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_9f

    move-object/from16 v17, p2

    .line 348
    check-cast v17, Landroid/widget/StackView$StackFrame;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 351
    :cond_9f
    if-eqz p3, :cond_12f

    .line 352
    const-string/jumbo v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v13, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 353
    .local v15, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v14, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 354
    .local v16, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 355
    .local v9, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 357
    .local v10, "scalePropY":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    const/16 v18, 0x2

    aput-object v16, v17, v18

    const/16 v18, 0x3

    aput-object v15, v17, v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 359
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 360
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_123

    .line 361
    check-cast p2, Landroid/widget/StackView$StackFrame;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 363
    :cond_123
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 370
    .end local v4    # "oa":Landroid/animation/ObjectAnimator;
    .end local v9    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "translationY":Landroid/animation/PropertyValuesHolder;
    :goto_126
    return-void

    .line 327
    .end local v5    # "perspectiveTranslationX":F
    .end local v6    # "perspectiveTranslationY":F
    .end local v7    # "r":F
    .end local v8    # "scale":F
    .end local v11    # "scaleShiftCorrectionX":F
    .end local v12    # "scaleShiftCorrectionY":F
    .end local v13    # "transX":F
    .end local v14    # "transY":F
    .restart local p2    # "view":Landroid/view/View;
    :cond_127
    add-int/lit8 p1, p1, -0x1

    .line 328
    if-gez p1, :cond_30

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_30

    .line 365
    .restart local v5    # "perspectiveTranslationX":F
    .restart local v6    # "perspectiveTranslationY":F
    .restart local v7    # "r":F
    .restart local v8    # "scale":F
    .restart local v11    # "scaleShiftCorrectionX":F
    .restart local v12    # "scaleShiftCorrectionY":F
    .restart local v13    # "transX":F
    .restart local v14    # "transY":F
    :cond_12f
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 366
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 367
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 368
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    goto :goto_126
.end method

.method private updateChildTransforms()V
    .registers 4

    .prologue
    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 472
    invoke-virtual {p0, v0}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_11

    .line 474
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, transformViewAtIndex(ILandroid/view/View;Z)V

    .line 471
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v1    # "v":Landroid/view/View;
    :cond_14
    return-void
.end method


# virtual methods
.method public advance()V
    .registers 9

    .prologue
    .line 1118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, mLastInteractionTime:J

    sub-long v2, v4, v6

    .line 1120
    .local v2, "timeSinceLastInteraction":J
    iget-object v1, p0, mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_d

    .line 1128
    :cond_c
    :goto_c
    return-void

    .line 1121
    :cond_d
    invoke-virtual {p0}, getCount()I

    move-result v0

    .line 1122
    .local v0, "adapterCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-boolean v1, p0, mLoopViews:Z

    if-nez v1, :cond_c

    .line 1124
    :cond_18
    iget v1, p0, mSwipeGestureType:I

    if-nez v1, :cond_c

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_c

    .line 1126
    invoke-virtual {p0}, showNext()V

    goto :goto_c
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 529
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1086
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v2, :cond_17

    move-object v1, v0

    .line 1087
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1088
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1089
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1090
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1091
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1094
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :goto_16
    return-object v1

    :cond_17
    new-instance v1, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    goto :goto_16
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 533
    const/4 v3, 0x0

    .line 535
    .local v3, "expandClipRegion":Z
    iget-object v6, p0, stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 536
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 537
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v1, :cond_44

    .line 538
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 540
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_1f

    iget v6, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_2e

    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_31

    .line 542
    :cond_2e
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 544
    :cond_31
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 545
    .local v2, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 546
    const/4 v3, 0x1

    .line 547
    iget-object v6, p0, stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 537
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 552
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childInvalidateRect":Landroid/graphics/Rect;
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_44
    if-eqz v3, :cond_58

    .line 553
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 554
    iget-object v6, p0, stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 555
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 560
    :goto_57
    return-void

    .line 558
    :cond_58
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_57
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1228
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .registers 6

    .prologue
    .line 520
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, mFramePadding:I

    iget v2, p0, mFramePadding:I

    iget v3, p0, mFramePadding:I

    iget v4, p0, mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 522
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 466
    iget-object v0, p0, mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    invoke-virtual {p0}, invalidate()V

    .line 468
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_11

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 599
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_15
    return v1

    .line 588
    :pswitch_16
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 589
    .local v0, "vscroll":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_25

    .line 590
    const/4 v2, 0x0

    invoke-direct {p0, v2}, pacedScroll(Z)V

    goto :goto_15

    .line 592
    :cond_25
    cmpl-float v2, v0, v3

    if-lez v2, :cond_11

    .line 593
    invoke-direct {p0, v1}, pacedScroll(Z)V

    goto :goto_15

    .line 586
    nop

    :pswitch_data_2e
    .packed-switch 0x8
        :pswitch_16
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1234
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1235
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-le v1, v0, :cond_30

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1236
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1237
    invoke-virtual {p0}, getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_24

    .line 1238
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1240
    :cond_24
    invoke-virtual {p0}, getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_2f

    .line 1241
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1244
    :cond_2f
    return-void

    .line 1235
    :cond_30
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 621
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_4e

    .line 654
    :cond_b
    :goto_b
    :pswitch_b
    iget v5, p0, mSwipeGestureType:I

    if-eqz v5, :cond_10

    const/4 v4, 0x1

    :cond_10
    :goto_10
    return v4

    .line 623
    :pswitch_11
    iget v5, p0, mActivePointerId:I

    if-ne v5, v6, :cond_b

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, mInitialX:F

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, mInitialY:F

    .line 626
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, mActivePointerId:I

    goto :goto_b

    .line 631
    :pswitch_28
    iget v5, p0, mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 632
    .local v3, "pointerIndex":I
    if-ne v3, v6, :cond_38

    .line 634
    const-string v5, "StackView"

    const-string v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 637
    :cond_38
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 638
    .local v2, "newY":F
    iget v5, p0, mInitialY:F

    sub-float v1, v2, v5

    .line 640
    .local v1, "deltaY":F
    invoke-direct {p0, v1}, beginGestureIfNeeded(F)V

    goto :goto_b

    .line 644
    .end local v1    # "deltaY":F
    .end local v2    # "newY":F
    .end local v3    # "pointerIndex":I
    :pswitch_44
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 649
    :pswitch_48
    iput v6, p0, mActivePointerId:I

    .line 650
    iput v4, p0, mSwipeGestureType:I

    goto :goto_b

    .line 621
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_48
        :pswitch_28
        :pswitch_48
        :pswitch_b
        :pswitch_b
        :pswitch_44
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1099
    invoke-virtual {p0}, checkForAndHandleDataChanged()V

    .line 1101
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 1102
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v2, :cond_3a

    .line 1103
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1105
    .local v0, "child":Landroid/view/View;
    iget v6, p0, mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1106
    .local v3, "childRight":I
    iget v6, p0, mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1107
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 1109
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, p0, mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1102
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1113
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_3a
    invoke-direct {p0}, onLayout()V

    .line 1114
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1177
    .local v8, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1178
    .local v5, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1179
    .local v7, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1181
    .local v4, "heightSpecMode":I
    iget v9, p0, mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_54

    iget v9, p0, mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_54

    const/4 v2, 0x1

    .line 1185
    .local v2, "haveChildRefSize":Z
    :goto_1b
    const v1, 0x3f8e38e4

    .line 1186
    .local v1, "factorY":F
    if-nez v4, :cond_58

    .line 1187
    if-eqz v2, :cond_56

    iget v9, p0, mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, mPaddingBottom:I

    add-int v5, v9, v10

    .line 1205
    :cond_34
    :goto_34
    const v0, 0x3f8e38e4

    .line 1206
    .local v0, "factorX":F
    if-nez v7, :cond_7c

    .line 1207
    if-eqz v2, :cond_7a

    iget v9, p0, mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, mPaddingRight:I

    add-int v8, v9, v10

    .line 1222
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v8, v5}, setMeasuredDimension(II)V

    .line 1223
    invoke-direct {p0}, measureChildren()V

    .line 1224
    return-void

    .line 1181
    .end local v0    # "factorX":F
    .end local v1    # "factorY":F
    .end local v2    # "haveChildRefSize":Z
    :cond_54
    const/4 v2, 0x0

    goto :goto_1b

    .line 1187
    .restart local v1    # "factorY":F
    .restart local v2    # "haveChildRefSize":Z
    :cond_56
    const/4 v5, 0x0

    goto :goto_34

    .line 1190
    :cond_58
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_34

    .line 1191
    if-eqz v2, :cond_78

    .line 1192
    iget v9, p0, mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, mPaddingBottom:I

    add-int v3, v9, v10

    .line 1194
    .local v3, "height":I
    if-gt v3, v5, :cond_74

    .line 1195
    move v5, v3

    goto :goto_34

    .line 1197
    :cond_74
    const/high16 v9, 0x1000000

    or-int/2addr v5, v9

    goto :goto_34

    .line 1201
    .end local v3    # "height":I
    :cond_78
    const/4 v5, 0x0

    goto :goto_34

    .line 1207
    .restart local v0    # "factorX":F
    :cond_7a
    const/4 v8, 0x0

    goto :goto_4d

    .line 1210
    :cond_7c
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_4d

    .line 1211
    if-eqz v2, :cond_93

    .line 1212
    iget v9, p0, mReferenceChildWidth:I

    iget v10, p0, mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, mPaddingRight:I

    add-int v6, v9, v10

    .line 1213
    .local v6, "width":I
    if-gt v6, v8, :cond_8f

    .line 1214
    move v8, v6

    goto :goto_4d

    .line 1216
    :cond_8f
    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    goto :goto_4d

    .line 1219
    .end local v6    # "width":I
    :cond_93
    const/4 v8, 0x0

    goto :goto_4d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 710
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 713
    .local v0, "action":I
    iget v10, p0, mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 714
    .local v5, "pointerIndex":I
    if-ne v5, v12, :cond_1c

    .line 716
    const-string v9, "StackView"

    const-string v10, "Error: No data for our primary pointer."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_1b
    return v8

    .line 720
    :cond_1c
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 721
    .local v4, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 722
    .local v3, "newX":F
    iget v10, p0, mInitialY:F

    sub-float v2, v4, v10

    .line 723
    .local v2, "deltaY":F
    iget v10, p0, mInitialX:F

    sub-float v1, v3, v10

    .line 724
    .local v1, "deltaX":F
    iget-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_36

    .line 725
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 727
    :cond_36
    iget-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 729
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_a0

    :cond_40
    :goto_40
    :pswitch_40
    move v8, v9

    .line 763
    goto :goto_1b

    .line 731
    :pswitch_42
    invoke-direct {p0, v2}, beginGestureIfNeeded(F)V

    .line 733
    iget v8, p0, mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float v7, v1, v8

    .line 734
    .local v7, "rx":F
    iget v8, p0, mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_70

    .line 735
    iget v8, p0, mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    sub-float v8, v2, v8

    iget v10, p0, mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 736
    .local v6, "r":F
    iget v8, p0, mStackMode:I

    if-ne v8, v9, :cond_62

    sub-float v6, v11, v6

    .line 737
    :cond_62
    iget-object v8, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v8, v10}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 738
    iget-object v8, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 739
    goto :goto_1b

    .line 740
    .end local v6    # "r":F
    :cond_70
    iget v8, p0, mSwipeGestureType:I

    if-ne v8, v9, :cond_40

    .line 741
    iget v8, p0, mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v10, p0, mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 742
    .restart local v6    # "r":F
    iget v8, p0, mStackMode:I

    if-ne v8, v9, :cond_86

    sub-float v6, v11, v6

    .line 743
    :cond_86
    iget-object v8, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 744
    iget-object v8, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 745
    goto :goto_1b

    .line 750
    .end local v6    # "r":F
    .end local v7    # "rx":F
    :pswitch_92
    invoke-direct {p0, p1}, handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_40

    .line 754
    :pswitch_96
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_40

    .line 758
    :pswitch_9a
    iput v12, p0, mActivePointerId:I

    .line 759
    iput v8, p0, mSwipeGestureType:I

    goto :goto_40

    .line 729
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_92
        :pswitch_42
        :pswitch_9a
        :pswitch_40
        :pswitch_40
        :pswitch_96
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1249
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1269
    :goto_8
    return v0

    .line 1252
    :cond_9
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    .line 1253
    goto :goto_8

    .line 1255
    :cond_11
    sparse-switch p1, :sswitch_data_34

    move v0, v1

    .line 1269
    goto :goto_8

    .line 1257
    :sswitch_16
    invoke-virtual {p0}, getDisplayedChild()I

    move-result v2

    invoke-virtual {p0}, getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_26

    .line 1258
    invoke-virtual {p0}, showNext()V

    goto :goto_8

    :cond_26
    move v0, v1

    .line 1261
    goto :goto_8

    .line 1263
    :sswitch_28
    invoke-virtual {p0}, getDisplayedChild()I

    move-result v2

    if-lez v2, :cond_32

    .line 1264
    invoke-virtual {p0}, showPrevious()V

    goto :goto_8

    :cond_32
    move v0, v1

    .line 1267
    goto :goto_8

    .line 1255
    :sswitch_data_34
    .sparse-switch
        0x1000 -> :sswitch_16
        0x2000 -> :sswitch_28
    .end sparse-switch
.end method

.method public showNext()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 393
    iget v1, p0, mSwipeGestureType:I

    if-eqz v1, :cond_6

    .line 403
    :goto_5
    return-void

    .line 394
    :cond_6
    iget-boolean v1, p0, mTransitionIsSetup:Z

    if-nez v1, :cond_1f

    .line 395
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 397
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, setupStackSlider(Landroid/view/View;I)V

    .line 398
    iget-object v1, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 399
    iget-object v1, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 402
    .end local v0    # "v":Landroid/view/View;
    :cond_1f
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    goto :goto_5
.end method

.method showOnly(IZ)V
    .registers 10
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 425
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 428
    iget v0, p0, mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_6
    iget v4, p0, mCurrentWindowStart:I

    if-lt v0, v4, :cond_36

    .line 429
    invoke-virtual {p0}, getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, modulo(II)I

    move-result v1

    .line 430
    .local v1, "index":I
    iget-object v4, p0, mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 431
    .local v3, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_33

    .line 432
    iget-object v4, p0, mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 433
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 428
    .end local v2    # "v":Landroid/view/View;
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 436
    .end local v1    # "index":I
    .end local v3    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_36
    iget-object v4, p0, mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_3f

    .line 437
    iget-object v4, p0, mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 439
    :cond_3f
    iput-boolean v6, p0, mTransitionIsSetup:Z

    .line 440
    iput-boolean v6, p0, mClickFeedbackIsValid:Z

    .line 441
    return-void
.end method

.method public showPrevious()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 411
    iget v1, p0, mSwipeGestureType:I

    if-eqz v1, :cond_6

    .line 421
    :goto_5
    return-void

    .line 412
    :cond_6
    iget-boolean v1, p0, mTransitionIsSetup:Z

    if-nez v1, :cond_20

    .line 413
    invoke-virtual {p0, v2}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_20

    .line 415
    invoke-direct {p0, v0, v2}, setupStackSlider(Landroid/view/View;I)V

    .line 416
    iget-object v1, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 417
    iget-object v1, p0, mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 420
    .end local v0    # "v":Landroid/view/View;
    :cond_20
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    goto :goto_5
.end method

.method showTapFeedback(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 458
    invoke-virtual {p0}, updateClickFeedback()V

    .line 459
    iget-object v0, p0, mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 461
    invoke-virtual {p0}, invalidate()V

    .line 462
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .registers 22
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    .line 233
    if-nez p4, :cond_1d

    move-object/from16 v13, p3

    .line 234
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 235
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 237
    .local v6, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 238
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 241
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_1d
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_54

    invoke-virtual/range {p0 .. p0}, getNumActiveViews()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_54

    .line 242
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, transformViewAtIndex(ILandroid/view/View;Z)V

    .line 243
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 314
    :cond_43
    :goto_43
    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_53

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, transformViewAtIndex(ILandroid/view/View;Z)V

    .line 317
    :cond_53
    return-void

    .line 245
    :cond_54
    if-nez p1, :cond_d6

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_d6

    move-object/from16 v13, p3

    .line 247
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 248
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 251
    .local v5, "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 252
    .local v4, "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 254
    if-eqz p4, :cond_cc

    .line 255
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 256
    .local v9, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 257
    .local v8, "slideInX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 259
    .local v7, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 261
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v7}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 262
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_43

    .line 264
    .end local v7    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v8    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "slideInY":Landroid/animation/PropertyValuesHolder;
    :cond_cc
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 265
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_43

    .line 267
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_d6
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_153

    if-nez p2, :cond_153

    move-object/from16 v13, p3

    .line 269
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 272
    .restart local v5    # "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 273
    .restart local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 274
    if-eqz p4, :cond_148

    .line 275
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 276
    .local v12, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 277
    .local v11, "slideOutX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 279
    .local v10, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 281
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v10}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 282
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_43

    .line 284
    .end local v10    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v11    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    :cond_148
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 285
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_43

    .line 287
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_153
    if-nez p2, :cond_163

    .line 289
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 290
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_43

    .line 291
    :cond_163
    if-eqz p1, :cond_16a

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_192

    :cond_16a
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_192

    .line 292
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 293
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 294
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 296
    .restart local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 297
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_43

    .line 298
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_192
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1a6

    .line 299
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 300
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_43

    .line 301
    :cond_1a6
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_43

    .line 302
    if-eqz p4, :cond_1bf

    .line 303
    new-instance v13, Landroid/widget/StackView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_43

    .line 309
    :cond_1bf
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_43
.end method

.method updateClickFeedback()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 444
    iget-boolean v1, p0, mClickFeedbackIsValid:Z

    if-nez v1, :cond_2c

    .line 445
    invoke-virtual {p0, v4}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 447
    iget-object v1, p0, mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v3, p0, mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    iget-object v1, p0, mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 450
    iget-object v1, p0, mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 452
    :cond_2a
    iput-boolean v4, p0, mClickFeedbackIsValid:Z

    .line 454
    .end local v0    # "v":Landroid/view/View;
    :cond_2c
    return-void
.end method
