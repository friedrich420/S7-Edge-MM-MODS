.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mCollapsibleHeightReserved:I

.field private mDismissOnScrollerFinished:Z

.field private mForceDisallowIntercept:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private mUncollapsibleHeight:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput v4, p0, mActivePointerId:I

    .line 98
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTempRect:Landroid/graphics/Rect;

    .line 102
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 123
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, mMaxWidth:I

    .line 126
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, mMaxCollapsedHeight:I

    .line 128
    const/4 v2, 0x2

    iget v3, p0, mMaxCollapsedHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, mMaxCollapsedHeightSmall:I

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    new-instance v2, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, mScroller:Landroid/widget/OverScroller;

    .line 135
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 137
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 138
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, mTouchSlop:I

    .line 139
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, mMinFlingVelocity:F

    .line 141
    invoke-virtual {p0, v5}, setImportantForAccessibility(I)V

    .line 142
    return-void
.end method

.method private abortAnimation()V
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, mDismissOnScrollerFinished:Z

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, smoothScrollTo(IF)V

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 509
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 510
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 511
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private findChildUnder(FF)Landroid/view/View;
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 519
    invoke-static {p0, p1, p2}, findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .registers 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 524
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_16

    .line 525
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 530
    .end local v0    # "child":Landroid/view/View;
    :goto_12
    return-object v0

    .line 524
    .restart local v0    # "child":Landroid/view/View;
    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 530
    .end local v0    # "child":Landroid/view/View;
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, "v":Landroid/view/View;
    :goto_4
    if-eqz v0, :cond_1a

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 537
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 538
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1b

    .line 540
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v0, p1, p2}, findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .line 544
    :cond_1a
    return-object v0

    .line 542
    .restart local v0    # "v":Landroid/view/View;
    :cond_1b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v0, p1, p2}, findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    :goto_25
    goto :goto_4

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .registers 12
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 788
    .local v2, "heightUsed":I
    instance-of v8, p1, Landroid/widget/AbsListView;

    if-eqz v8, :cond_2a

    move-object v6, p1

    .line 789
    check-cast v6, Landroid/widget/AbsListView;

    .line 790
    .local v6, "lv":Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    .line 792
    .local v7, "lvPaddingBottom":I
    const/4 v4, 0x0

    .line 793
    .local v4, "lowest":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_15
    if-ge v3, v0, :cond_27

    .line 794
    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v7

    .line 795
    .local v1, "bottom":I
    if-le v1, v4, :cond_24

    .line 796
    move v4, v1

    .line 793
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 800
    .end local v1    # "bottom":I
    :cond_27
    if-ge v4, v2, :cond_2a

    .line 801
    move v2, v4

    .line 805
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "lowest":I
    .end local v6    # "lv":Landroid/widget/AbsListView;
    .end local v7    # "lvPaddingBottom":I
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 806
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget v8, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v2

    iget v9, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    return v8
.end method

.method private getMaxCollapsedHeight()I
    .registers 3

    .prologue
    .line 219
    invoke-virtual {p0}, isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, mMaxCollapsedHeightSmall:I

    :goto_8
    iget v1, p0, mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0

    :cond_c
    iget v0, p0, mMaxCollapsedHeight:I

    goto :goto_8
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .registers 8
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    .line 587
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    .line 588
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v1, v4

    .line 589
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 590
    .local v0, "bottom":F
    cmpl-float v4, p1, v1

    if-ltz v4, :cond_28

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_28

    cmpg-float v4, p1, v2

    if-gez v4, :cond_28

    cmpg-float v4, p2, v0

    if-gez v4, :cond_28

    const/4 v4, 0x1

    :goto_27
    return v4

    :cond_28
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .registers 13
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 556
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 557
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_3f

    .line 560
    move-object v2, p1

    .line 573
    .local v2, "directChild":Landroid/view/View;
    :goto_1a
    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v9

    sub-int v1, v8, v9

    .line 574
    .local v1, "clipEdge":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 575
    .local v0, "childCount":I
    invoke-virtual {p0, v2}, indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .local v3, "i":I
    :goto_2e
    if-ge v3, v0, :cond_59

    .line 576
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 577
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_50

    .line 575
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 562
    .end local v0    # "childCount":I
    .end local v1    # "clipEdge":I
    .end local v2    # "directChild":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_3f
    move-object v6, p1

    .line 563
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 564
    .local v5, "p":Landroid/view/ViewParent;
    :goto_44
    if-eq v5, p0, :cond_4e

    move-object v6, v5

    .line 565
    check-cast v6, Landroid/view/View;

    .line 566
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_44

    .line 568
    :cond_4e
    move-object v2, v6

    .restart local v2    # "directChild":Landroid/view/View;
    goto :goto_1a

    .line 580
    .end local v5    # "p":Landroid/view/ViewParent;
    .end local v6    # "v":Landroid/view/View;
    .restart local v0    # "childCount":I
    .restart local v1    # "clipEdge":I
    .restart local v3    # "i":I
    .restart local v4    # "nextChild":Landroid/view/View;
    :cond_50
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3c

    .line 582
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_59
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v8, v1, :cond_60

    const/4 v7, 0x1

    :cond_60
    return v7
.end method

.method private isDragging()Z
    .registers 3

    .prologue
    .line 189
    iget-boolean v0, p0, mIsDragging:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, getNestedScrollAxes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isListChildUnderClipped(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 551
    invoke-direct {p0, p1, p2}, findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isMoving()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, mIsDragging:Z

    if-nez v0, :cond_c

    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 403
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 404
    .local v1, "pointerId":I
    iget v3, p0, mActivePointerId:I

    if-ne v1, v3, :cond_23

    .line 407
    if-nez v2, :cond_24

    const/4 v0, 0x1

    .line 408
    .local v0, "newPointerIndex":I
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, mInitialTouchX:F

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, mLastTouchY:F

    iput v3, p0, mInitialTouchY:F

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mActivePointerId:I

    .line 412
    .end local v0    # "newPointerIndex":I
    :cond_23
    return-void

    .line 407
    :cond_24
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private performDrag(F)F
    .registers 14
    .param p1, "dy"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 444
    iget v10, p0, mCollapseOffset:F

    add-float/2addr v10, p1

    iget v11, p0, mCollapsibleHeight:I

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 446
    .local v6, "newPos":F
    iget v10, p0, mCollapseOffset:F

    cmpl-float v10, v6, v10

    if-eqz v10, :cond_5a

    .line 447
    iget v10, p0, mCollapseOffset:F

    sub-float p1, v6, v10

    .line 448
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 449
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v1, :cond_37

    .line 450
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 451
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 452
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v10, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v10, :cond_34

    .line 453
    float-to-int v10, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 449
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 456
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_37
    iget v10, p0, mCollapseOffset:F

    cmpl-float v10, v10, v9

    if-eqz v10, :cond_56

    move v4, v7

    .line 457
    .local v4, "isCollapsedOld":Z
    :goto_3e
    iput v6, p0, mCollapseOffset:F

    .line 458
    iget v10, p0, mTopOffset:I

    int-to-float v10, v10

    add-float/2addr v10, p1

    float-to-int v10, v10

    iput v10, p0, mTopOffset:I

    .line 459
    cmpl-float v9, v6, v9

    if-eqz v9, :cond_58

    move v3, v7

    .line 460
    .local v3, "isCollapsedNew":Z
    :goto_4c
    if-eq v4, v3, :cond_51

    .line 461
    invoke-virtual {p0, v8}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 464
    :cond_51
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    move v7, p1

    .line 467
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :goto_55
    return v7

    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_56
    move v4, v8

    .line 456
    goto :goto_3e

    .restart local v4    # "isCollapsedOld":Z
    :cond_58
    move v3, v8

    .line 459
    goto :goto_4c

    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "isCollapsedOld":Z
    :cond_5a
    move v7, v9

    .line 467
    goto :goto_55
.end method

.method private resetTouch()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 415
    const/4 v0, -0x1

    iput v0, p0, mActivePointerId:I

    .line 416
    iput-boolean v1, p0, mIsDragging:Z

    .line 417
    iput-boolean v1, p0, mOpenOnClick:Z

    .line 418
    const/4 v0, 0x0

    iput v0, p0, mLastTouchY:F

    iput v0, p0, mInitialTouchY:F

    iput v0, p0, mInitialTouchX:F

    .line 419
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 420
    return-void
.end method

.method private smoothScrollTo(IF)V
    .registers 16
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 481
    invoke-direct {p0}, abortAnimation()V

    .line 482
    iget v0, p0, mCollapseOffset:F

    float-to-int v2, v0

    .line 483
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 484
    .local v4, "dy":I
    if-nez v4, :cond_e

    .line 506
    :goto_d
    return-void

    .line 488
    :cond_e
    invoke-virtual {p0}, getHeight()I

    move-result v9

    .line 489
    .local v9, "height":I
    div-int/lit8 v8, v9, 0x2

    .line 490
    .local v8, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v9

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 491
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    int-to-float v3, v8

    invoke-direct {p0, v7}, distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v6, v0, v3

    .line 494
    .local v6, "distance":F
    const/4 v5, 0x0

    .line 495
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 496
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_52

    .line 497
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v3, v6, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 502
    :goto_42
    const/16 v0, 0x12c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 504
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 505
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    goto :goto_d

    .line 499
    :cond_52
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float v10, v0, v3

    .line 500
    .local v10, "pageDelta":F
    add-float v0, v10, v12

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_42
.end method

.method private updateCollapseOffset(IZ)Z
    .registers 10
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 193
    iget v5, p0, mCollapsibleHeight:I

    if-ne p1, v5, :cond_9

    move v2, v3

    .line 215
    :goto_8
    return v2

    .line 197
    :cond_9
    invoke-virtual {p0}, isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 198
    iget v5, p0, mCollapseOffset:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_36

    move v1, v4

    .line 199
    .local v1, "isCollapsedOld":Z
    :goto_16
    if-eqz p2, :cond_38

    iget v5, p0, mCollapsibleHeight:I

    if-ge p1, v5, :cond_38

    iget v5, p0, mCollapseOffset:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-nez v5, :cond_38

    .line 202
    iget v5, p0, mCollapsibleHeight:I

    int-to-float v5, v5

    iput v5, p0, mCollapseOffset:F

    .line 206
    :goto_28
    iget v5, p0, mCollapseOffset:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_44

    move v0, v4

    .line 207
    .local v0, "isCollapsedNew":Z
    :goto_2f
    if-eq v1, v0, :cond_34

    .line 208
    invoke-virtual {p0, v3}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .end local v0    # "isCollapsedNew":Z
    .end local v1    # "isCollapsedOld":Z
    :cond_34
    :goto_34
    move v2, v4

    .line 215
    goto :goto_8

    :cond_36
    move v1, v3

    .line 198
    goto :goto_16

    .line 204
    .restart local v1    # "isCollapsedOld":Z
    :cond_38
    iget v5, p0, mCollapseOffset:F

    iget v6, p0, mCollapsibleHeight:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, mCollapseOffset:F

    goto :goto_28

    :cond_44
    move v0, v3

    .line 206
    goto :goto_2f

    .line 213
    .end local v1    # "isCollapsedOld":Z
    :cond_46
    iget-boolean v3, p0, mOpenOnLayout:Z

    if-eqz v3, :cond_4d

    :goto_4a
    iput v2, p0, mCollapseOffset:F

    goto :goto_34

    :cond_4d
    iget v2, p0, mCollapsibleHeight:I

    int-to-float v2, v2

    goto :goto_4a
.end method


# virtual methods
.method public computeScroll()V
    .registers 4

    .prologue
    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 425
    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 426
    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v0, 0x1

    .line 427
    .local v0, "keepGoing":Z
    :goto_14
    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, performDrag(F)F

    .line 428
    if-eqz v0, :cond_29

    .line 429
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 435
    .end local v0    # "keepGoing":Z
    :cond_26
    :goto_26
    return-void

    .line 426
    :cond_27
    const/4 v0, 0x0

    goto :goto_14

    .line 430
    .restart local v0    # "keepGoing":Z
    :cond_29
    iget-boolean v1, p0, mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_26

    .line 431
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$1;)V

    iput-object v1, p0, mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 432
    iget-object v1, p0, mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method

.method dispatchOnDismissed()V
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_9

    .line 472
    iget-object v0, p0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    .line 474
    :cond_9
    iget-object v0, p0, mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_15

    .line 475
    iget-object v0, p0, mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 478
    :cond_15
    return-void
.end method

.method public forceDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "bSet"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, mForceDisallowIntercept:Z

    .line 232
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 860
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 845
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 850
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 851
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    .line 855
    :goto_b
    return-object v0

    .line 852
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 853
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .line 855
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 689
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCollapsed()Z
    .registers 3

    .prologue
    .line 154
    iget v0, p0, mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSmallCollapsed()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, mSmallCollapsed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 603
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 604
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 605
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 610
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 611
    invoke-direct {p0}, abortAnimation()V

    .line 612
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 694
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 696
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 697
    iget v0, p0, mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    .line 698
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 699
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 705
    :cond_19
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 706
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 238
    .local v0, "action":I
    if-nez v0, :cond_d

    .line 239
    iget-object v7, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 242
    :cond_d
    iget-object v7, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 244
    packed-switch v0, :pswitch_data_aa

    .line 286
    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v5, p0, mIsDragging:Z

    if-eqz v5, :cond_1c

    .line 287
    invoke-direct {p0}, abortAnimation()V

    .line 289
    :cond_1c
    iget-boolean v5, p0, mIsDragging:Z

    return v5

    .line 246
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 247
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 248
    .local v4, "y":F
    iput v3, p0, mInitialTouchX:F

    .line 249
    iput v4, p0, mLastTouchY:F

    iput v4, p0, mInitialTouchY:F

    .line 250
    invoke-direct {p0, v3, v4}, isListChildUnderClipped(FF)Z

    move-result v7

    if-eqz v7, :cond_3a

    iget v7, p0, mCollapsibleHeight:I

    if-lez v7, :cond_3a

    :goto_37
    iput-boolean v5, p0, mOpenOnClick:Z

    goto :goto_15

    :cond_3a
    move v5, v6

    goto :goto_37

    .line 255
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 256
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 257
    .restart local v4    # "y":F
    iget v7, p0, mInitialTouchY:F

    sub-float v1, v4, v7

    .line 258
    .local v1, "dy":F
    const/4 v2, 0x0

    .line 260
    .local v2, "isChildScrollBarTouched":Z
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    if-le v7, v5, :cond_5d

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/GridView;

    if-eqz v7, :cond_5d

    .line 261
    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v2, v7, Landroid/view/View;->mTwScrollingByScrollbar:Z

    .line 263
    :cond_5d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    invoke-direct {p0, v3, v4}, findChildUnder(FF)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-boolean v7, p0, mForceDisallowIntercept:Z

    if-nez v7, :cond_15

    invoke-virtual {p0}, getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_15

    if-nez v2, :cond_15

    .line 266
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, mActivePointerId:I

    .line 267
    iput-boolean v5, p0, mIsDragging:Z

    .line 268
    iget v5, p0, mLastTouchY:F

    iget v6, p0, mTouchSlop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, mLastTouchY:F

    add-float/2addr v6, v1

    iget v7, p0, mLastTouchY:F

    iget v8, p0, mTouchSlop:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, mLastTouchY:F

    goto/16 :goto_15

    .line 275
    .end local v1    # "dy":F
    .end local v2    # "isChildScrollBarTouched":Z
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_9f
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    .line 281
    :pswitch_a4
    invoke-direct {p0}, resetTouch()V

    goto/16 :goto_15

    .line 244
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_a4
        :pswitch_3c
        :pswitch_a4
        :pswitch_15
        :pswitch_15
        :pswitch_9f
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 811
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v12

    .line 813
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v14, v0, mTopOffset:I

    .line 814
    .local v14, "ypos":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v7

    .line 815
    .local v7, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v15

    sub-int v10, v12, v15

    .line 817
    .local v10, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v3

    .line 818
    .local v3, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v3, :cond_60

    .line 819
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 820
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 822
    .local v8, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_32

    .line 818
    :goto_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 826
    :cond_32
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int v11, v14, v15

    .line 827
    .local v11, "top":I
    iget-boolean v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v15, :cond_44

    .line 828
    int-to-float v15, v11

    move-object/from16 v0, p0

    iget v0, v0, mCollapseOffset:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v11, v15

    .line 830
    :cond_44
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v1, v11, v15

    .line 832
    .local v1, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 833
    .local v4, "childWidth":I
    sub-int v13, v10, v7

    .line 834
    .local v13, "widthAvailable":I
    sub-int v15, v13, v4

    div-int/lit8 v15, v15, 0x2

    add-int v6, v7, v15

    .line 835
    .local v6, "left":I
    add-int v9, v6, v4

    .line 837
    .local v9, "right":I
    invoke-virtual {v2, v6, v11, v9, v1}, Landroid/view/View;->layout(IIII)V

    .line 839
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v14, v1, v15

    goto :goto_2f

    .line 841
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childWidth":I
    .end local v6    # "left":I
    .end local v8    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v9    # "right":I
    .end local v11    # "top":I
    .end local v13    # "widthAvailable":I
    :cond_60
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 729
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 730
    .local v13, "sourceWidth":I
    move v14, v13

    .line 731
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 735
    .local v9, "heightSize":I
    move-object/from16 v0, p0

    iget v1, v0, mMaxWidth:I

    if-ltz v1, :cond_17

    .line 736
    move-object/from16 v0, p0

    iget v1, v0, mMaxWidth:I

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 739
    :cond_17
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 740
    .local v3, "widthSpec":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 741
    .local v5, "heightSpec":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v15

    add-int v4, v1, v15

    .line 742
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v15

    add-int v6, v1, v15

    .line 745
    .local v6, "heightUsed":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v8

    .line 746
    .local v8, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3c
    if-ge v10, v8, :cond_65

    .line 747
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 748
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 749
    .local v11, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v1, v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v1, :cond_62

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v15, 0x8

    if-eq v1, v15, :cond_62

    move-object/from16 v1, p0

    .line 750
    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 751
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getHeightUsed(Landroid/view/View;)I

    move-result v1

    add-int/2addr v6, v1

    .line 746
    :cond_62
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    .line 755
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_65
    move v7, v6

    .line 758
    .local v7, "alwaysShowHeight":I
    const/4 v10, 0x0

    :goto_67
    if-ge v10, v8, :cond_90

    .line 759
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 760
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 761
    .restart local v11    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v1, v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v1, :cond_8d

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v15, 0x8

    if-eq v1, v15, :cond_8d

    move-object/from16 v1, p0

    .line 762
    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 763
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getHeightUsed(Landroid/view/View;)I

    move-result v1

    add-int/2addr v6, v1

    .line 758
    :cond_8d
    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    .line 767
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_90
    move-object/from16 v0, p0

    iget v12, v0, mCollapsibleHeight:I

    .line 768
    .local v12, "oldCollapsibleHeight":I
    const/4 v1, 0x0

    sub-int v15, v6, v7

    invoke-direct/range {p0 .. p0}, getMaxCollapsedHeight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mCollapsibleHeight:I

    .line 770
    move-object/from16 v0, p0

    iget v1, v0, mCollapsibleHeight:I

    sub-int v1, v6, v1

    move-object/from16 v0, p0

    iput v1, v0, mUncollapsibleHeight:I

    .line 772
    invoke-direct/range {p0 .. p0}, isDragging()Z

    move-result v1

    if-nez v1, :cond_d2

    const/4 v1, 0x1

    :goto_b6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, updateCollapseOffset(IZ)Z

    .line 774
    const/4 v1, 0x0

    sub-int v15, v9, v6

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v15, v0, mCollapseOffset:F

    float-to-int v15, v15

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, mTopOffset:I

    .line 776
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, setMeasuredDimension(II)V

    .line 777
    return-void

    .line 772
    :cond_d2
    const/4 v1, 0x0

    goto :goto_b6
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 658
    if-nez p4, :cond_2b

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, mMinFlingVelocity:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    .line 659
    iget-object v2, p0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v2, :cond_2c

    cmpg-float v2, p3, v4

    if-gez v2, :cond_2c

    iget v2, p0, mCollapseOffset:F

    iget v3, p0, mCollapsibleHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2c

    .line 661
    iget v0, p0, mCollapsibleHeight:I

    iget v2, p0, mUncollapsibleHeight:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, p3}, smoothScrollTo(IF)V

    .line 662
    iput-boolean v1, p0, mDismissOnScrollerFinished:Z

    :goto_2a
    move v0, v1

    .line 668
    :cond_2b
    return v0

    .line 664
    :cond_2c
    cmpl-float v2, p3, v4

    if-lez v2, :cond_34

    :goto_30
    invoke-direct {p0, v0, p3}, smoothScrollTo(IF)V

    goto :goto_2a

    :cond_34
    iget v0, p0, mCollapsibleHeight:I

    goto :goto_30
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 649
    iget v1, p0, mMinFlingVelocity:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_12

    iget v1, p0, mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_12

    .line 650
    invoke-direct {p0, v0, p3}, smoothScrollTo(IF)V

    .line 651
    const/4 v0, 0x1

    .line 653
    :cond_12
    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 673
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 681
    :goto_9
    return v0

    .line 677
    :cond_a
    const/16 v2, 0x1000

    if-ne p2, v2, :cond_18

    iget v2, p0, mCollapseOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_18

    .line 678
    invoke-direct {p0, v1, v3}, smoothScrollTo(IF)V

    goto :goto_9

    :cond_18
    move v0, v1

    .line 681
    goto :goto_9
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 642
    if-lez p3, :cond_d

    .line 643
    const/4 v0, 0x1

    neg-int v1, p3

    int-to-float v1, v1

    invoke-direct {p0, v1}, performDrag(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    aput v1, p4, v0

    .line 645
    :cond_d
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 635
    if-gez p5, :cond_7

    .line 636
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, performDrag(F)F

    .line 638
    :cond_7
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 621
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 622
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 872
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 873
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 874
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, mOpenOnLayout:Z

    .line 875
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 865
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 866
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v1, p0, mCollapsibleHeight:I

    if-lez v1, :cond_18

    iget v1, p0, mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    const/4 v1, 0x1

    :goto_15
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 867
    return-object v0

    .line 866
    :cond_18
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 616
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 626
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 627
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 628
    iget v0, p0, mCollapseOffset:F

    iget v1, p0, mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, smoothScrollTo(IF)V

    .line 630
    :cond_1b
    return-void

    .line 628
    :cond_1c
    iget v0, p0, mCollapsibleHeight:I

    goto :goto_17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 296
    .local v1, "action":I
    move-object/from16 v0, p0

    iget-object v12, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "handled":Z
    packed-switch v1, :pswitch_data_268

    :goto_11
    :pswitch_11
    move v12, v3

    .line 398
    :goto_12
    return v12

    .line 301
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 302
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 303
    .local v10, "y":F
    move-object/from16 v0, p0

    iput v9, v0, mInitialTouchX:F

    .line 304
    move-object/from16 v0, p0

    iput v10, v0, mLastTouchY:F

    move-object/from16 v0, p0

    iput v10, v0, mInitialTouchY:F

    .line 305
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mActivePointerId:I

    .line 306
    move-object/from16 v0, p0

    iget v12, v0, mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5d

    const/4 v4, 0x1

    .line 307
    .local v4, "hitView":Z
    :goto_43
    move-object/from16 v0, p0

    iget-object v12, v0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-nez v12, :cond_4f

    move-object/from16 v0, p0

    iget v12, v0, mCollapsibleHeight:I

    if-lez v12, :cond_5f

    :cond_4f
    const/4 v3, 0x1

    .line 308
    :goto_50
    if-eqz v4, :cond_61

    if-eqz v3, :cond_61

    const/4 v12, 0x1

    :goto_55
    move-object/from16 v0, p0

    iput-boolean v12, v0, mIsDragging:Z

    .line 309
    invoke-direct/range {p0 .. p0}, abortAnimation()V

    goto :goto_11

    .line 306
    .end local v4    # "hitView":Z
    :cond_5d
    const/4 v4, 0x0

    goto :goto_43

    .line 307
    .restart local v4    # "hitView":Z
    :cond_5f
    const/4 v3, 0x0

    goto :goto_50

    .line 308
    :cond_61
    const/4 v12, 0x0

    goto :goto_55

    .line 314
    .end local v4    # "hitView":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_63
    move-object/from16 v0, p0

    iget v12, v0, mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 315
    .local v5, "index":I
    if-gez v5, :cond_b1

    .line 316
    const-string v12, "ResolverDrawerLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad pointer id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mActivePointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", resetting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v5, 0x0

    .line 318
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mActivePointerId:I

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mInitialTouchX:F

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, mInitialTouchY:F

    .line 322
    :cond_b1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 323
    .restart local v9    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 324
    .restart local v10    # "y":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, mIsDragging:Z

    if-nez v12, :cond_108

    .line 325
    move-object/from16 v0, p0

    iget v12, v0, mInitialTouchY:F

    sub-float v2, v10, v12

    .line 326
    .local v2, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_108

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_108

    .line 327
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mIsDragging:Z

    .line 328
    move-object/from16 v0, p0

    iget v12, v0, mLastTouchY:F

    move-object/from16 v0, p0

    iget v13, v0, mTouchSlop:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, mLastTouchY:F

    add-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, mLastTouchY:F

    move-object/from16 v0, p0

    iget v15, v0, mTouchSlop:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mLastTouchY:F

    .line 332
    .end local v2    # "dy":F
    :cond_108
    move-object/from16 v0, p0

    iget-boolean v12, v0, mIsDragging:Z

    if-eqz v12, :cond_119

    .line 333
    move-object/from16 v0, p0

    iget v12, v0, mLastTouchY:F

    sub-float v2, v10, v12

    .line 334
    .restart local v2    # "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, performDrag(F)F

    .line 336
    .end local v2    # "dy":F
    :cond_119
    move-object/from16 v0, p0

    iput v10, v0, mLastTouchY:F

    goto/16 :goto_11

    .line 341
    .end local v5    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_11f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 342
    .local v7, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 343
    .local v6, "pointerId":I
    move-object/from16 v0, p0

    iput v6, v0, mActivePointerId:I

    .line 344
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mInitialTouchX:F

    .line 345
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, mInitialTouchY:F

    goto/16 :goto_11

    .line 350
    .end local v6    # "pointerId":I
    .end local v7    # "pointerIndex":I
    :pswitch_147
    invoke-direct/range {p0 .. p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_11

    .line 355
    :pswitch_14c
    move-object/from16 v0, p0

    iget-boolean v8, v0, mIsDragging:Z

    .line 356
    .local v8, "wasDragging":Z
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, mIsDragging:Z

    .line 357
    if-nez v8, :cond_186

    move-object/from16 v0, p0

    iget v12, v0, mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_186

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_186

    .line 359
    move-object/from16 v0, p0

    iget-object v12, v0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v12, :cond_186

    .line 360
    invoke-virtual/range {p0 .. p0}, dispatchOnDismissed()V

    .line 361
    invoke-direct/range {p0 .. p0}, resetTouch()V

    .line 362
    const/4 v12, 0x1

    goto/16 :goto_12

    .line 365
    :cond_186
    move-object/from16 v0, p0

    iget-boolean v12, v0, mOpenOnClick:Z

    if-eqz v12, :cond_1c2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, mInitialTouchX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, mInitialTouchY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c2

    .line 367
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, smoothScrollTo(IF)V

    .line 368
    const/4 v12, 0x1

    goto/16 :goto_12

    .line 370
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v12, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v13, v0, mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    .line 372
    .local v11, "yvel":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, mMinFlingVelocity:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_224

    .line 373
    move-object/from16 v0, p0

    iget-object v12, v0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v12, :cond_213

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_213

    move-object/from16 v0, p0

    iget v12, v0, mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, mCollapsibleHeight:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_213

    .line 375
    move-object/from16 v0, p0

    iget v12, v0, mCollapsibleHeight:I

    move-object/from16 v0, p0

    iget v13, v0, mUncollapsibleHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, smoothScrollTo(IF)V

    .line 376
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, mDismissOnScrollerFinished:Z

    .line 384
    :goto_20e
    invoke-direct/range {p0 .. p0}, resetTouch()V

    goto/16 :goto_11

    .line 378
    :cond_213
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_21f

    const/4 v12, 0x0

    :goto_219
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, smoothScrollTo(IF)V

    goto :goto_20e

    :cond_21f
    move-object/from16 v0, p0

    iget v12, v0, mCollapsibleHeight:I

    goto :goto_219

    .line 381
    :cond_224
    move-object/from16 v0, p0

    iget v12, v0, mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23b

    const/4 v12, 0x0

    :goto_234
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, smoothScrollTo(IF)V

    goto :goto_20e

    :cond_23b
    move-object/from16 v0, p0

    iget v12, v0, mCollapsibleHeight:I

    goto :goto_234

    .line 389
    .end local v8    # "wasDragging":Z
    .end local v11    # "yvel":F
    :pswitch_240
    move-object/from16 v0, p0

    iget-boolean v12, v0, mIsDragging:Z

    if-eqz v12, :cond_25c

    .line 390
    move-object/from16 v0, p0

    iget v12, v0, mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_262

    const/4 v12, 0x0

    :goto_256
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, smoothScrollTo(IF)V

    .line 393
    :cond_25c
    invoke-direct/range {p0 .. p0}, resetTouch()V

    .line 394
    const/4 v12, 0x1

    goto/16 :goto_12

    .line 390
    :cond_262
    move-object/from16 v0, p0

    iget v12, v0, mCollapsibleHeight:I

    goto :goto_256

    .line 299
    nop

    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14c
        :pswitch_63
        :pswitch_240
        :pswitch_11
        :pswitch_11f
        :pswitch_147
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 710
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    if-ne p1, v2, :cond_c

    .line 724
    :cond_b
    :goto_b
    return v0

    .line 715
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    .line 716
    goto :goto_b

    .line 719
    :cond_14
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_b

    iget v2, p0, mCollapseOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_b

    .line 720
    invoke-direct {p0, v0, v3}, smoothScrollTo(IF)V

    move v0, v1

    .line 721
    goto :goto_b
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 596
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 597
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, smoothScrollTo(IF)V

    .line 599
    :cond_14
    return-void
.end method

.method public setCollapsed(Z)V
    .registers 4
    .param p1, "collapsed"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, isLaidOut()Z

    move-result v0

    if-nez v0, :cond_9

    .line 159
    iput-boolean p1, p0, mOpenOnLayout:Z

    .line 163
    :goto_8
    return-void

    .line 161
    :cond_9
    if-eqz p1, :cond_12

    iget v0, p0, mCollapsibleHeight:I

    :goto_d
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, smoothScrollTo(IF)V

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setCollapsibleHeightReserved(I)V
    .registers 7
    .param p1, "heightPixels"    # I

    .prologue
    .line 166
    iget v2, p0, mCollapsibleHeightReserved:I

    .line 167
    .local v2, "oldReserved":I
    iput p1, p0, mCollapsibleHeightReserved:I

    .line 169
    iget v3, p0, mCollapsibleHeightReserved:I

    sub-int v0, v3, v2

    .line 170
    .local v0, "dReserved":I
    if-eqz v0, :cond_14

    iget-boolean v3, p0, mIsDragging:Z

    if-eqz v3, :cond_14

    .line 171
    iget v3, p0, mLastTouchY:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, mLastTouchY:F

    .line 174
    :cond_14
    iget v1, p0, mCollapsibleHeight:I

    .line 175
    .local v1, "oldCollapsibleHeight":I
    iget v3, p0, mCollapsibleHeight:I

    invoke-direct {p0}, getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, mCollapsibleHeight:I

    .line 177
    invoke-direct {p0}, isDragging()Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x1

    :goto_29
    invoke-direct {p0, v1, v3}, updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 182
    :goto_2f
    return-void

    .line 177
    :cond_30
    const/4 v3, 0x0

    goto :goto_29

    .line 181
    :cond_32
    invoke-virtual {p0}, invalidate()V

    goto :goto_2f
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .prologue
    .line 224
    iput-object p1, p0, mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 225
    return-void
.end method

.method public setSmallCollapsed(Z)V
    .registers 2
    .param p1, "smallCollapsed"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, mSmallCollapsed:Z

    .line 146
    invoke-virtual {p0}, requestLayout()V

    .line 147
    return-void
.end method
