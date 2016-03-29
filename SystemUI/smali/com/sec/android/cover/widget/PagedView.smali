.class public abstract Lcom/sec/android/cover/widget/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/sec/android/cover/widget/PagedView$SavedState;,
        Lcom/sec/android/cover/widget/PagedView$ScrollInterpolator;,
        Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;
    }
.end annotation


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFirstLayout:Z

    .line 109
    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    .line 123
    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastScreenCenter:I

    .line 139
    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    .line 149
    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCellCountX:I

    .line 150
    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCellCountY:I

    .line 151
    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAllowOverScroll:Z

    .line 153
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    .line 162
    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mLayoutScale:F

    .line 166
    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    .line 173
    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mContentIsRefreshable:Z

    .line 176
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mFadeInAdjacentScreens:Z

    .line 180
    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mUsePagingTouchSlop:Z

    .line 184
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferScrollUpdate:Z

    .line 186
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    .line 189
    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    .line 196
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    .line 197
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 209
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 210
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 211
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 212
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 213
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 214
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 215
    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    .line 219
    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    .line 226
    iput v4, p0, Lcom/sec/android/cover/widget/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 231
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 232
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    .line 233
    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mEdgeSwipeRegionSize:I

    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 237
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 242
    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 243
    const v0, 0x3d0f5c29    # 0.035f

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 245
    const/high16 v0, 0x42820000    # 65.0f

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 246
    const/16 v0, -0x578

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 248
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    .line 249
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 250
    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 256
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 259
    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    .line 260
    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    .line 2081
    new-instance v0, Lcom/sec/android/cover/widget/PagedView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$2;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2758
    new-instance v0, Lcom/sec/android/cover/widget/PagedView$13;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$13;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2768
    new-instance v0, Lcom/sec/android/cover/widget/PagedView$14;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$14;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->init()V

    .line 299
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/widget/PagedView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/sec/android/cover/widget/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/cover/widget/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/cover/widget/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/widget/PagedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/widget/PagedView;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/widget/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/widget/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/widget/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PagedView;

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1764
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1767
    return-void
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "animate"    # Z

    .prologue
    .line 2827
    return-void
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2810
    return-void
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "abortAnimation"    # Z

    .prologue
    .line 2789
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2496
    new-instance v0, Lcom/sec/android/cover/widget/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/cover/widget/PagedView$9;-><init>(Lcom/sec/android/cover/widget/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private getPageSnapDuration()I
    .locals 1

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method private isAnimatingWarpPage()Z
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2437
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2438
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2440
    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2442
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2444
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2445
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2447
    .local v1, "theta":F
    float-to-double v4, v1

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2451
    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 2644
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2645
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2646
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2647
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2648
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2650
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2651
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2652
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2654
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1097
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1100
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1102
    :cond_0
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1091
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2661
    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    .line 2663
    .local v3, "dragView":Landroid/view/View;
    const/4 v7, 0x0

    .line 2664
    .local v7, "toScale":F
    const/4 v6, 0x0

    .line 2667
    .local v6, "toAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2668
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2669
    .local v4, "motionAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2670
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    const-string v9, "scaleY"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2672
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2675
    .local v0, "alphaAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2676
    new-array v8, v11, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2677
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    invoke-direct {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2684
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2685
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2686
    iget v8, p0, Lcom/sec/android/cover/widget/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2687
    new-instance v8, Lcom/sec/android/cover/widget/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/cover/widget/PagedView$12;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2692
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2694
    iput-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    .line 2695
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2292
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2293
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2298
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1778
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1779
    .local v1, "pointerId":I
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1783
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1784
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 1785
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    .line 1786
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    .line 1787
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    .line 1788
    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1789
    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1792
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1783
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1338
    sub-float/2addr p1, v1

    .line 1339
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1774
    :cond_0
    return-void
.end method

.method private resetPageWarp()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 523
    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    .line 524
    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    .line 525
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1723
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->releaseVelocityTracker()V

    .line 1724
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->endReordering()V

    .line 1725
    invoke-direct {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    .line 1726
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    .line 1727
    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    .line 1728
    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    .line 1244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionY:F

    .line 1245
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F

    .line 1246
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v3, v4}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1247
    .local v1, "p":[F
    aget v3, v1, v6

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    .line 1248
    aget v3, v1, v7

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    .line 1249
    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    .line 1250
    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    .line 1251
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    .line 1254
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mEdgeSwipeRegionSize:I

    add-int v0, v3, v4

    .line 1255
    .local v0, "leftEdgeBoundary":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v2, v3, v4

    .line 1256
    .local v2, "rightEdgeBoundary":I
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1257
    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    .line 1259
    :cond_1
    return-void
.end method

.method private setTouchState(I)V
    .locals 1
    .param p1, "touchState"    # I

    .prologue
    .line 1222
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-eq v0, p1, :cond_0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchStateChanged(I)V

    .line 1226
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    .line 1228
    :cond_0
    return-void
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1295
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1296
    .local v0, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1299
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1300
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    .line 1301
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    .line 1302
    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 1303
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    .line 1304
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    .line 1305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mSmoothingTime:F

    .line 1306
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->pageBeginMoving()V

    goto :goto_0
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2183
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2177
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2178
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    .line 2180
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2181
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2212
    :cond_0
    :goto_0
    return-void

    .line 2188
    :cond_1
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2190
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v6

    .line 2191
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v8

    .line 2192
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2193
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2194
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2195
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2198
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2199
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2200
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2202
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2203
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2204
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2205
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2211
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2208
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2209
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1031
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1033
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1034
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1035
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1042
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1038
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1039
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2216
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2217
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2218
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2219
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2221
    new-instance v1, Lcom/sec/android/cover/widget/PagedView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/widget/PagedView$4;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2227
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2229
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    .line 893
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2123
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->computeScrollHelper()Z

    .line 620
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 592
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->scrollTo(II)V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    .line 614
    :goto_0
    return v0

    .line 600
    :cond_2
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_4

    .line 601
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    .line 602
    iput v4, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitched()V

    .line 607
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-nez v1, :cond_3

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->pageEndMoving()V

    .line 611
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 614
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1369
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v2

    .line 1371
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1373
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1375
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1378
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1379
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1382
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1383
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1384
    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    .line 1385
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1390
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_0

    .line 1387
    :cond_2
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    .line 1388
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1267
    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1268
    .local v0, "pointerIndex":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return v10

    .line 1272
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1273
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1274
    .local v6, "y":F
    float-to-int v11, v2

    float-to-int v12, v6

    invoke-direct {p0, v11, v12}, Lcom/sec/android/cover/widget/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1279
    iget-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    if-eqz v11, :cond_0

    .line 1282
    :cond_2
    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    sub-float v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v3, v11

    .line 1283
    .local v3, "xDiff":I
    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 1285
    .local v7, "yDiff":I
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchSlop:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1286
    .local v1, "touchSlop":I
    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mPagingTouchSlop:I

    if-le v3, v11, :cond_5

    move v5, v9

    .line 1287
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1288
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_7

    move v8, v9

    .line 1290
    .local v8, "yMoved":Z
    :goto_3
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_9

    :cond_3
    iget-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v11, :cond_8

    if-eqz v5, :cond_9

    :cond_4
    :goto_4
    move v10, v9

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v10

    .line 1286
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v10

    .line 1287
    goto :goto_2

    .restart local v4    # "xMoved":Z
    :cond_7
    move v8, v10

    .line 1288
    goto :goto_3

    .line 1290
    .restart local v8    # "yMoved":Z
    :cond_8
    if-nez v4, :cond_4

    :cond_9
    move v9, v10

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 943
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 945
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 948
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    .line 949
    invoke-virtual {p0, v7}, Lcom/sec/android/cover/widget/PagedView;->screenScrolled(I)V

    .line 950
    iput v7, p0, Lcom/sec/android/cover/widget/PagedView;->mLastScreenCenter:I

    .line 954
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v5

    .line 955
    .local v5, "pageCount":I
    if-lez v5, :cond_7

    .line 956
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->getVisiblePages([I)V

    .line 957
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 958
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 959
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 960
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 962
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 963
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 967
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 968
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 969
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 967
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 971
    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/widget/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 973
    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 977
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 978
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 981
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 985
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1014
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    .line 1025
    :goto_0
    return v0

    .line 1019
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1020
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1025
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1884
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1885
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1886
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2355
    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    .line 2361
    new-instance v0, Lcom/sec/android/cover/widget/PagedView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$6;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    .line 2367
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    .line 2368
    new-instance v1, Lcom/sec/android/cover/widget/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/cover/widget/PagedView$7;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2374
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2376
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    .line 2378
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1052
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1053
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1055
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1056
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1066
    :cond_0
    return-void

    .line 1059
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1062
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1063
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 837
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v2

    .line 840
    :cond_1
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    .line 843
    .local v0, "childOffsets":[I
    :goto_1
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 844
    aget v2, v0, p1

    goto :goto_0

    .line 840
    .end local v0    # "childOffsets":[I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    .line 846
    .restart local v0    # "childOffsets":[I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 850
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 851
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 853
    :cond_4
    if-eqz v0, :cond_0

    .line 854
    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1820
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1821
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinimumWidth:I

    .line 1822
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1839
    const v7, 0x7fffffff

    .line 1840
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1841
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1842
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    .line 1843
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1844
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1845
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1846
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1847
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1848
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1849
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1850
    move v7, v3

    .line 1851
    move v8, v5

    .line 1843
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1854
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 861
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 862
    :cond_0
    const/4 v0, 0x0

    .line 873
    :cond_1
    :goto_0
    return v0

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 865
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_0

    .line 867
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 868
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 870
    .local v0, "offset":I
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    .line 871
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 881
    const-string v3, "WidgetPagedView"

    const-string v4, "getScaledMeasuredWidth => child view is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMinimumWidth:I

    .line 888
    :goto_0
    return v3

    .line 885
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 886
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mMinimumWidth:I

    .line 887
    .local v2, "minWidth":I
    if-le v2, v1, :cond_1

    move v0, v2

    .line 888
    .local v0, "maxWidth":I
    :goto_1
    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    .end local v0    # "maxWidth":I
    :cond_1
    move v0, v1

    .line 887
    goto :goto_1
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 2074
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2
    .param p1, "range"    # [I

    .prologue
    const/4 v0, 0x0

    .line 897
    aput v0, p1, v0

    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 932
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2167
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2126
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2132
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2134
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    .line 2135
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2136
    if-eqz p1, :cond_2

    .line 2137
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2140
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2141
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2142
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/widget/PagedView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/widget/PagedView$3;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2157
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 435
    return p1
.end method

.method protected final init()V
    .locals 4

    .prologue
    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 306
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 307
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sec/android/cover/widget/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/sec/android/cover/widget/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 311
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchSlop:I

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPagingTouchSlop:I

    .line 313
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaximumVelocity:I

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    .line 315
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    const/high16 v2, -0x3d6a0000    # -75.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpPeekAmount:F

    .line 318
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 320
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingThresholdVelocity:I

    .line 321
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinFlingVelocity:I

    .line 322
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinSnapVelocity:I

    .line 323
    invoke-virtual {p0, p0}, Lcom/sec/android/cover/widget/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 324
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    .line 819
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 820
    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    .line 821
    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    .line 822
    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 834
    :cond_0
    return-void

    .line 826
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    .line 827
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    .line 828
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 829
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 830
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 831
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 832
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2345
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsReordering:Z

    .line 2346
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2347
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2349
    :cond_0
    return v0

    .line 2347
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 2078
    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .locals 2

    .prologue
    .line 2007
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 342
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 344
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 333
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 336
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 337
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected notifyPageSwitched()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 488
    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 482
    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    .line 806
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    .line 808
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    .line 815
    return-void
.end method

.method protected onEndReordering()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2301
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2302
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2303
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2310
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/cover/widget/PagedView;->mIsReordering:Z

    .line 2313
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getVisiblePages([I)V

    .line 2314
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/cover/widget/PagedView;->boundByReorderablePages(Z[I)V

    .line 2315
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v0

    .line 2316
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2317
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v5

    if-le v1, v2, :cond_2

    .line 2318
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2316
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2321
    :cond_3
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 12
    .param p1, "vel"    # Landroid/graphics/PointF;

    .prologue
    .line 2586
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2593
    .local v4, "startTime":J
    new-instance v9, Lcom/sec/android/cover/widget/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/sec/android/cover/widget/PagedView$10;-><init>(Lcom/sec/android/cover/widget/PagedView;J)V

    .line 2615
    .local v9, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2616
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    .line 2617
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2618
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2619
    new-instance v0, Lcom/sec/android/cover/widget/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/widget/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2625
    .local v0, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2628
    .local v8, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2629
    .local v7, "mDropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2630
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2631
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2632
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2633
    new-instance v2, Lcom/sec/android/cover/widget/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/sec/android/cover/widget/PagedView$11;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2638
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2639
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    .line 2640
    return-void

    .line 2631
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1759
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1741
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1742
    const/4 v1, 0x0

    .line 1743
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1748
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1749
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1750
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollRight()V

    .line 1754
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1745
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1746
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1752
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1736
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2747
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2712
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2713
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2714
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2715
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2716
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2717
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2719
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2700
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2701
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2702
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2703
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2705
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2706
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2708
    :cond_1
    return-void

    .line 2701
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1116
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1119
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1120
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1218
    :cond_0
    :goto_0
    return v3

    .line 1127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1128
    .local v0, "action":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-eq v5, v3, :cond_0

    .line 1132
    :cond_2
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1218
    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1138
    :pswitch_1
    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1139
    iget-boolean v5, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1140
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1154
    :pswitch_2
    iget-boolean v5, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    if-eqz v5, :cond_5

    .line 1155
    const-string v5, "interceptTouch(): DOWN"

    invoke-direct {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    .line 1158
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1165
    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1166
    .local v2, "xDist":I
    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchSlop:I

    if-ge v2, v5, :cond_7

    :cond_6
    move v1, v3

    .line 1167
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_8

    .line 1168
    invoke-direct {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    .line 1169
    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_7
    move v1, v4

    .line 1166
    goto :goto_2

    .line 1171
    .restart local v1    # "finishedScrolling":Z
    :cond_8
    iget-boolean v5, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/cover/widget/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1174
    :cond_9
    invoke-direct {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1176
    :cond_a
    invoke-direct {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1201
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "xDist":I
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->resetTouchState()V

    .line 1203
    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/cover/widget/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 1209
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1210
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 754
    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    .line 762
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 763
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 766
    .local v8, "offsetY":I
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 768
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 769
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 770
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 771
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 772
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 773
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 774
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 778
    .local v2, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 780
    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 769
    .end local v2    # "childHeight":I
    .end local v5    # "childWidth":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 784
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 785
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateCurrentPageScroll()V

    .line 787
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 788
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mFirstLayout:Z

    .line 791
    :cond_4
    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 794
    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iget v10, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/cover/widget/PagedView;->swapPages(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 628
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v26

    if-nez v26, :cond_1

    .line 629
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 745
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 637
    .local v24, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 638
    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 639
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 642
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 643
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 644
    .local v16, "maxSize":I
    const/high16 v26, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 645
    .local v19, "parentWidthSize":I
    move/from16 v18, v16

    .line 646
    .local v18, "parentHeightSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    .line 647
    .local v21, "scaledWidthSize":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    .line 648
    .local v20, "scaledHeightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 650
    if-eqz v24, :cond_2

    if-nez v11, :cond_3

    .line 651
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 656
    :cond_3
    if-lez v25, :cond_4

    if-gtz v12, :cond_5

    .line 657
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 666
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingTop()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingBottom()I

    move-result v27

    add-int v23, v26, v27

    .line 667
    .local v23, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingRight()I

    move-result v27

    add-int v13, v26, v27

    .line 681
    .local v13, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v5

    .line 682
    .local v5, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v5, :cond_8

    .line 684
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 685
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 688
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 689
    const/high16 v9, -0x80000000

    .line 695
    .local v9, "childWidthMode":I
    :goto_2
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 696
    const/high16 v7, -0x80000000

    .line 701
    .local v7, "childHeightMode":I
    :goto_3
    sub-int v26, v25, v13

    move/from16 v0, v26

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 703
    .local v8, "childWidthMeasureSpec":I
    sub-int v26, v12, v23

    move/from16 v0, v26

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 706
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 682
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 691
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childHeightMode":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childWidthMode":I
    :cond_6
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "childWidthMode":I
    goto :goto_2

    .line 698
    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childHeightMode":I
    goto :goto_3

    .line 708
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightMode":I
    .end local v9    # "childWidthMode":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->setMeasuredDimension(II)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    .line 715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->setCurrentPage(I)V

    .line 718
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mChildCountOnLastMeasure:I

    .line 720
    if-lez v5, :cond_a

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 731
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 732
    .local v17, "offset":I
    sub-int v26, v25, v17

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 734
    .local v22, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->setPageSpacing(I)V

    .line 738
    .end local v17    # "offset":I
    .end local v22    # "spacing":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    .line 740
    if-lez v5, :cond_b

    .line 741
    add-int/lit8 v26, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v26

    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 743
    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 0

    .prologue
    .line 2864
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public onPageEndWarp()V
    .locals 0

    .prologue
    .line 2868
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1000
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1001
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    .line 1005
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1006
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1007
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1009
    :goto_1
    return v2

    .line 1003
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1009
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v28

    if-gtz v28, :cond_0

    .line 1413
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v28

    .line 1712
    :goto_0
    return v28

    .line 1415
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1417
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1419
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 1712
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v28, 0x1

    goto :goto_0

    .line 1425
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-nez v28, :cond_2

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1430
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->pageBeginMoving()V

    .line 1438
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1439
    const-string v28, "onTouch(): DOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 1435
    :cond_3
    const/16 v28, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    goto :goto_2

    .line 1444
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 1446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1448
    .local v21, "pointerIndex":I
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 1449
    const/16 v28, 0x1

    goto :goto_0

    .line 1451
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    .line 1452
    .local v27, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    move/from16 v29, v0

    add-float v28, v28, v29

    sub-float v7, v28, v27

    .line 1454
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    .line 1459
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_7

    .line 1460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    move/from16 v28, v0

    add-float v28, v28, v7

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    .line 1461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x4e6e6b28    # 1.0E9f

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSmoothingTime:F

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1472
    :goto_3
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 1473
    float-to-int v0, v7

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v7, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1465
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDeferScrollUpdate:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    .line 1466
    float-to-int v0, v7

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->scrollBy(II)V

    goto :goto_3

    .line 1470
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_3

    .line 1475
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1477
    .end local v7    # "deltaX":F
    .end local v21    # "pointerIndex":I
    .end local v27    # "x":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1479
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 1480
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    .line 1484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1485
    .local v22, "pt":[F
    const/16 v28, 0x0

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    .line 1486
    const/16 v28, 0x1

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1491
    .local v8, "dragViewIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v6, v0

    .line 1492
    .local v6, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    const/16 v29, 0x0

    aget v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v15, v0

    .line 1493
    .local v15, "leftBufferEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    const/16 v29, 0x0

    aget v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1496
    .local v24, "rightBufferEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    .line 1498
    .local v13, "isHoveringOverDelete":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/sec/android/cover/widget/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    move/from16 v20, v0

    .line 1514
    .local v20, "parentX":F
    const/16 v17, -0x1

    .line 1515
    .local v17, "pageIndexToSnapTo":I
    int-to-float v0, v15

    move/from16 v28, v0

    cmpg-float v28, v20, v28

    if-gez v28, :cond_a

    if-lez v8, :cond_a

    .line 1516
    add-int/lit8 v17, v8, -0x1

    .line 1521
    :cond_9
    :goto_4
    move/from16 v18, v17

    .line 1522
    .local v18, "pageUnderPointIndex":I
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    if-nez v13, :cond_b

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    aput v30, v28, v29

    .line 1525
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->boundByReorderablePages(Z[I)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v0, v18

    move/from16 v1, v28

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    move/from16 v28, v0

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1530
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    .line 1531
    new-instance v28, Lcom/sec/android/cover/widget/PagedView$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/android/cover/widget/PagedView$1;-><init>(Lcom/sec/android/cover/widget/PagedView;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1517
    .end local v18    # "pageUnderPointIndex":I
    :cond_a
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v20, v28

    if-lez v28, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v8, v0, :cond_9

    .line 1518
    add-int/lit8 v17, v8, 0x1

    goto/16 :goto_4

    .line 1585
    .restart local v18    # "pageUnderPointIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1586
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1588
    .end local v6    # "bufferSize":I
    .end local v8    # "dragViewIndex":I
    .end local v13    # "isHoveringOverDelete":Z
    .end local v15    # "leftBufferEdge":I
    .end local v17    # "pageIndexToSnapTo":I
    .end local v18    # "pageUnderPointIndex":I
    .end local v20    # "parentX":F
    .end local v22    # "pt":[F
    .end local v24    # "rightBufferEdge":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1589
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1594
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1595
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    .line 1596
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1598
    .restart local v21    # "pointerIndex":I
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 1599
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1601
    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    .line 1602
    .restart local v27    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 1603
    .local v25, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1604
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1605
    .local v26, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    move/from16 v28, v0

    sub-float v28, v27, v28

    move/from16 v0, v28

    float-to-int v7, v0

    .line 1606
    .local v7, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v19

    .line 1607
    .local v19, "pageWidth":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ecccccd    # 0.4f

    mul-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-lez v28, :cond_14

    const/4 v14, 0x1

    .line 1610
    .local v14, "isSignificantMove":Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    move/from16 v30, v0

    add-float v29, v29, v30

    sub-float v29, v29, v27

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    .line 1612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    const/high16 v29, 0x41c80000    # 25.0f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_15

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mFlingThresholdVelocity:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_15

    const/4 v12, 0x1

    .line 1618
    .local v12, "isFling":Z
    :goto_6
    const/16 v23, 0x0

    .line 1619
    .local v23, "returnToOriginalPage":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ea8f5c3    # 0.33f

    mul-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-lez v28, :cond_f

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->signum(F)F

    move-result v28

    int-to-float v0, v7

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->signum(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_f

    if-eqz v12, :cond_f

    .line 1621
    const/16 v23, 0x1

    .line 1628
    :cond_f
    if-eqz v14, :cond_10

    if-lez v7, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    if-eqz v12, :cond_17

    if-lez v26, :cond_17

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    if-lez v28, :cond_17

    .line 1630
    if-nez v23, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v28

    if-eqz v28, :cond_16

    :cond_12
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    .line 1632
    .local v9, "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPageWithVelocity(II)V

    .line 1695
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v9    # "finalPage":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v19    # "pageWidth":I
    .end local v21    # "pointerIndex":I
    .end local v23    # "returnToOriginalPage":Z
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v26    # "velocityX":I
    .end local v27    # "x":F
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1697
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1607
    .restart local v5    # "activePointerId":I
    .restart local v7    # "deltaX":I
    .restart local v19    # "pageWidth":I
    .restart local v21    # "pointerIndex":I
    .restart local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v26    # "velocityX":I
    .restart local v27    # "x":F
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1612
    .restart local v14    # "isSignificantMove":Z
    :cond_15
    const/4 v12, 0x0

    goto :goto_6

    .line 1630
    .restart local v12    # "isFling":Z
    .restart local v23    # "returnToOriginalPage":Z
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, -0x1

    goto :goto_7

    .line 1633
    :cond_17
    if-eqz v14, :cond_18

    if-gez v7, :cond_18

    if-eqz v12, :cond_19

    :cond_18
    if-eqz v12, :cond_1b

    if-gez v26, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1b

    .line 1635
    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    .line 1636
    .restart local v9    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1635
    .end local v9    # "finalPage":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, 0x1

    goto :goto_9

    .line 1638
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1640
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v19    # "pageWidth":I
    .end local v21    # "pointerIndex":I
    .end local v23    # "returnToOriginalPage":Z
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v26    # "velocityX":I
    .end local v27    # "x":F
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e

    .line 1644
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1645
    .local v16, "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    .line 1646
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1648
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1650
    .end local v16    # "nextPage":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1655
    .restart local v16    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    .line 1656
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1658
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1660
    .end local v16    # "nextPage":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 1662
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 1663
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    .line 1667
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1668
    .restart local v22    # "pt":[F
    const/16 v28, 0x0

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    .line 1669
    const/16 v28, 0x1

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    .line 1670
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1671
    const/4 v11, 0x0

    .line 1674
    .local v11, "handledFling":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    .line 1675
    .local v10, "flingToDeleteVector":Landroid/graphics/PointF;
    if-eqz v10, :cond_21

    .line 1676
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/cover/widget/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1677
    const/4 v11, 0x1

    .line 1680
    :cond_21
    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1683
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->onDropToDelete()V

    goto/16 :goto_8

    .line 1688
    .end local v10    # "flingToDeleteVector":Landroid/graphics/PointF;
    .end local v11    # "handledFling":Z
    .end local v22    # "pt":[F
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mWarpPageExposed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isAnimatingWarpPage()Z

    move-result v28

    if-nez v28, :cond_23

    .line 1689
    const-string v28, "unhandled tap"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    .line 1691
    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1701
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    .line 1704
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1708
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .locals 0
    .param p1, "newTouchState"    # I

    .prologue
    .line 1234
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1731
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1394
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->dampedOverScroll(F)V

    .line 1395
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 2

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageBeginWarp()V

    .line 497
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 498
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->swapPages(II)V

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageBeginMoving()V

    .line 503
    :cond_1
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_2

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 512
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->swapPages(II)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageEndWarp()V

    .line 515
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->resetPageWarp()V

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageEndMoving()V

    .line 519
    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2723
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2742
    :goto_0
    return v0

    .line 2726
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2742
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2728
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2729
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollRight()V

    goto :goto_0

    .line 2735
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2736
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2726
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1796
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1797
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexToPage(I)I

    move-result v0

    .line 1798
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1799
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    .line 1801
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 989
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexToPage(I)I

    move-result v0

    .line 990
    .local v0, "page":I
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    .line 992
    const/4 v1, 0x1

    .line 994
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 799
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 556
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->scrollTo(II)V

    .line 557
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2012
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 2013
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    .line 2018
    :cond_0
    :goto_0
    return-void

    .line 2015
    :cond_1
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    .line 2016
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2023
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2025
    :cond_1
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2026
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 561
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    .line 563
    if-gez p1, :cond_2

    .line 564
    invoke-super {p0, v4, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 565
    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 566
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->overScroll(F)V

    .line 578
    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    .line 579
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mSmoothingTime:F

    .line 582
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 584
    .local v0, "p":[F
    aget v1, v0, v4

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 585
    aget v1, v0, v5

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 588
    .end local v0    # "p":[F
    :cond_1
    return-void

    .line 568
    :cond_2
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    .line 569
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 570
    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 571
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->overScroll(F)V

    goto :goto_0

    .line 574
    :cond_3
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    .line 575
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :goto_0
    return-void

    .line 466
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateCurrentPageScroll()V

    .line 469
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicator()V

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitched()V

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 548
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v0

    .line 549
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 550
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2658
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 748
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    .line 749
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    .line 750
    return-void
.end method

.method public setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    .line 396
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 399
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 365
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 366
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 368
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    .line 369
    aget v1, v0, v3

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 372
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2095
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    .line 2096
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2097
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    iput-boolean v3, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    .line 2103
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2104
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2106
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    .line 2107
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2108
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2109
    if-eqz p1, :cond_2

    .line 2110
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2112
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2113
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2114
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 3

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 1859
    .local v0, "newPage":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    const-string v2, "snapToDestination"

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/widget/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1862
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    .line 1863
    return-void

    .line 1860
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1933
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    .line 1934
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1941
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIZ)V

    .line 1942
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIIZ)V

    .line 1960
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1963
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    if-ne p1, v0, :cond_5

    .line 1964
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    .line 1971
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageEndWarp()V

    .line 1973
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->resetPageWarp()V

    .line 1976
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    .line 1977
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1978
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_1

    .line 1980
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1983
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->pageBeginMoving()V

    .line 1984
    invoke-virtual {p0, p3}, Lcom/sec/android/cover/widget/PagedView;->awakenScrollBars(I)Z

    .line 1985
    if-eqz p4, :cond_6

    .line 1986
    const/4 p3, 0x0

    .line 1991
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1992
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1993
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitched()V

    .line 1998
    if-eqz p4, :cond_4

    .line 1999
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->computeScroll()V

    .line 2002
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    .line 2003
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    .line 2004
    return-void

    .line 1968
    .end local v6    # "focusedChild":Landroid/view/View;
    :cond_5
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    goto :goto_0

    .line 1987
    .restart local v6    # "focusedChild":Landroid/view/View;
    :cond_6
    if-nez p3, :cond_2

    .line 1988
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_1
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 1945
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1952
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1953
    .local v1, "newX":I
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    .line 1954
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1955
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIIZ)V

    .line 1956
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIZ)V

    .line 1938
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1891
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 1893
    .local v4, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1894
    const-string v7, "snapToPageWithVelocity"

    iget v8, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-eq v8, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0, v7, v6}, Lcom/sec/android/cover/widget/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1902
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1903
    .local v5, "newX":I
    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1904
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1906
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/cover/widget/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_2

    .line 1909
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    .line 1930
    :goto_0
    return-void

    .line 1917
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1918
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1921
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1922
    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1927
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1929
    invoke-virtual {p0, p1, v0, v3}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method swapPages(II)V
    .locals 5
    .param p1, "indexA"    # I
    .param p2, "indexB"    # I

    .prologue
    .line 2834
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 2835
    .local v1, "viewA":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2836
    .local v2, "viewB":Landroid/view/View;
    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2837
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, v3, v4

    .line 2838
    .local v0, "deltaX":I
    neg-int v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2839
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2841
    .end local v0    # "deltaX":I
    :cond_0
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 444
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v1

    .line 445
    .local v1, "offset":I
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 446
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 447
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/cover/widget/PagedView;->scrollTo(II)V

    .line 448
    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 449
    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 450
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    .prologue
    .line 349
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 350
    .local v0, "x":F
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 351
    .local v1, "y":F
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 352
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 356
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2386
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2387
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2389
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    .line 2390
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2391
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2392
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2394
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/cover/widget/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/cover/widget/PagedView$8;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2423
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2430
    :cond_2
    :goto_0
    return v0

    .line 2426
    :cond_3
    if-eqz p1, :cond_2

    .line 2427
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
