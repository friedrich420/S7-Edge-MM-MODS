.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field mAwaitingFirstLayout:Z

.field mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

.field mDismissAllButtonAnimating:Z

.field mEnterAnimating:Z

.field mExitAnimating:Z

.field mFilterAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

.field mFocusedTaskIndex:I

.field mHandler:Landroid/os/Handler;

.field mImmutableTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field mLayersDisabled:Z

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

.field mPrevAccessibilityFocusedIndex:I

.field mReaquireAccessibilityFocus:Z

.field mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field mStackViewsAnimationDuration:I

.field mStackViewsClipDirty:Z

.field mStackViewsDirty:Z

.field mStartEnterAnimationCompleted:Z

.field mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

.field mStartEnterAnimationRequestedAfterLayout:Z

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpCoord:[F

.field mTmpMatrix:Landroid/graphics/Matrix;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTaskViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTmpVisibleRange:[I

.field mTmpVisibleRangeAnimating:[I

.field mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

.field mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 125
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 126
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 129
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 135
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 136
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRangeAnimating:[I

    .line 137
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mImmutableTaskViews:Ljava/util/List;

    .line 148
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mReaquireAccessibilityFocus:Z

    .line 153
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 541
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 542
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 170
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 172
    new-instance v0, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 173
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 174
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    .line 175
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFilterAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    .line 176
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V

    .line 178
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 179
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 191
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method private updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v4, 0x1

    .line 1738
    const/4 v0, 0x0

    .line 1739
    .local v0, "anchorTask":Lcom/android/systemui/recents/model/Task;
    const/4 v2, 0x0

    .line 1740
    .local v2, "prevAnchorTaskScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_2

    move v3, v4

    .line 1741
    .local v3, "pullStackForward":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1742
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1743
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    .line 1747
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 1750
    if-eqz v3, :cond_1

    .line 1751
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    .line 1752
    .local v1, "anchorTaskScroll":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    sub-float v6, v1, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 1753
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1757
    .end local v1    # "anchorTaskScroll":F
    :cond_1
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 1758
    return-void

    .line 1740
    .end local v3    # "pullStackForward":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z
    .locals 11
    .param p3, "stackScroll"    # F
    .param p4, "visibleRangeOut"    # [I
    .param p5, "boundTranslationsToRect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;F[IZ)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 347
    .local v5, "taskTransformCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 348
    .local v4, "taskCount":I
    const/4 v1, -0x1

    .line 349
    .local v1, "frontMostVisibleIndex":I
    const/4 v0, -0x1

    .line 352
    .local v0, "backMostVisibleIndex":I
    if-ge v5, v4, :cond_0

    .line 354
    move v2, v5

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 355
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "i":I
    :cond_0
    if-le v5, v4, :cond_1

    .line 359
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 363
    :cond_1
    const/4 v3, 0x0

    .line 364
    .local v3, "prevTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 365
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v7, p3, v8, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    .line 367
    .local v6, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v7, :cond_6

    .line 368
    if-gez v1, :cond_2

    .line 369
    move v1, v2

    .line 371
    :cond_2
    move v0, v2

    .line 384
    :cond_3
    if-eqz p5, :cond_4

    .line 386
    iget v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 389
    iget v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 393
    :cond_4
    add-int/lit8 v7, v4, -0x1

    if-ne v2, v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 395
    const v7, 0x3f733333    # 0.95f

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 398
    :cond_5
    move-object v3, v6

    .line 364
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 373
    :cond_6
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 376
    :goto_2
    if-ltz v2, :cond_7

    .line 377
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 378
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 400
    .end local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_7
    if-eqz p4, :cond_8

    .line 401
    const/4 v7, 0x0

    aput v1, p4, v7

    .line 402
    const/4 v7, 0x1

    aput v0, p4, v7

    .line 405
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRangeAnimating:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, p4, v9

    aput v9, v7, v8

    .line 406
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRangeAnimating:[I

    const/4 v9, 0x1

    const/4 v7, 0x0

    aget v7, p4, v7

    const/4 v10, 0x3

    if-le v7, v10, :cond_9

    const/4 v7, 0x0

    aget v7, p4, v7

    add-int/lit8 v7, v7, -0x3

    :goto_3
    aput v7, v8, v9

    .line 409
    :cond_8
    const/4 v7, -0x1

    if-eq v1, v7, :cond_a

    const/4 v7, -0x1

    if-eq v0, v7, :cond_a

    const/4 v7, 0x1

    :goto_4
    return v7

    .line 406
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 409
    :cond_a
    const/4 v7, 0x0

    goto :goto_4
.end method


# virtual methods
.method clipTaskViews()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    .line 549
    return-void
.end method

.method clipTaskViews([I)V
    .locals 15
    .param p1, "visibleRange"    # [I

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v7

    .line 555
    .local v7, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 556
    .local v6, "taskViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v10, v6, -0x1

    if-ge v2, v10, :cond_4

    .line 557
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 558
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v4, 0x0

    .line 559
    .local v4, "nextTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v8, 0x0

    .line 560
    .local v8, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v0, 0x0

    .line 562
    .local v0, "clipBottom":I
    const/4 v1, 0x0

    .line 564
    .local v1, "clipRight":I
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 566
    move v3, v2

    .line 567
    .local v3, "nextIndex":I
    :cond_0
    add-int/lit8 v10, v6, -0x1

    if-ge v3, v10, :cond_1

    .line 568
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 569
    .restart local v8    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 570
    move-object v4, v8

    .line 578
    :cond_1
    if-eqz v4, :cond_2

    .line 581
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    aput v14, v10, v11

    .line 582
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v11, 0x0

    invoke-static {v4, p0, v10, v11}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 583
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, p0, v10, v11}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[FLandroid/graphics/Matrix;)F

    .line 584
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    .line 595
    .end local v3    # "nextIndex":I
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 596
    .local v5, "taskIdx":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    if-nez v10, :cond_3

    if-eqz p1, :cond_3

    const/4 v10, 0x1

    aget v10, p1, v10

    if-gt v10, v5, :cond_3

    const/4 v10, 0x0

    aget v10, p1, v10

    if-ge v5, v10, :cond_3

    .line 599
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    .line 556
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 605
    :cond_3
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    goto :goto_1

    .line 609
    .end local v0    # "clipBottom":I
    .end local v1    # "clipRight":I
    .end local v4    # "nextTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v5    # "taskIdx":I
    .end local v8    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    if-lez v6, :cond_5

    .line 611
    add-int/lit8 v10, v6, -0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 614
    .restart local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    .line 617
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 618
    return-void
.end method

.method public computeRects(IILandroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "launchedWithAltTab"    # Z
    .param p5, "launchedFromHome"    # Z

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 919
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 920
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 892
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    .line 894
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    move-result v0

    .line 896
    .local v0, "scrolled":Z
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    if-eqz v1, :cond_3

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRangeAnimating:[I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    .line 906
    :goto_0
    if-eqz v0, :cond_2

    .line 908
    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 910
    :cond_2
    return-void

    .line 900
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateDismissButtonPosition()V

    goto :goto_0
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public destroyViewPool()V
    .locals 3

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    if-eqz v0, :cond_0

    .line 285
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 287
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->destroyHeaderView()V

    goto :goto_0

    .line 291
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public disableLayersForOneFrame()V
    .locals 3

    .prologue
    .line 1533
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayersDisabled:Z

    .line 1534
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 1535
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1536
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->disableLayersForOneFrame()V

    .line 1535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1538
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->dismiss()V

    .line 1973
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 4

    .prologue
    .line 781
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 782
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 787
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 788
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_1

    .line 789
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayersDisabled:Z

    .line 1529
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1530
    return-void
.end method

.method public ensureFocusedTask(Z)Z
    .locals 8
    .param p1, "findClosestToCenter"    # Z

    .prologue
    .line 683
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v6, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 685
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 686
    .local v1, "taskViewCount":I
    if-eqz p1, :cond_0

    .line 689
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 690
    .local v4, "x":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 691
    .local v5, "y":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 692
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 693
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/systemui/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 694
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 695
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 696
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 702
    .end local v0    # "i":I
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v6, :cond_1

    if-lez v1, :cond_1

    .line 703
    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 704
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 705
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 708
    .end local v1    # "taskViewCount":I
    .end local v2    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 691
    .restart local v0    # "i":I
    .restart local v1    # "taskViewCount":I
    .restart local v2    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 708
    .end local v0    # "i":I
    .end local v1    # "taskViewCount":I
    .end local v2    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public focusNextTask(ZZ)Z
    .locals 1
    .param p1, "forward"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZLandroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public focusNextTask(ZZLandroid/util/MutableBoolean;)Z
    .locals 6
    .param p1, "forward"    # Z
    .param p2, "animateFocusedState"    # Z
    .param p3, "isMoved"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 725
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    .line 726
    .local v2, "numTasks":I
    if-nez v2, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v5

    .line 728
    :cond_1
    if-eqz p1, :cond_5

    const/4 v0, -0x1

    .line 729
    .local v0, "direction":I
    :goto_1
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    add-int v1, v4, v0

    .line 731
    .local v1, "newIndex":I
    const/4 v4, -0x2

    if-ne v1, v4, :cond_2

    .line 732
    add-int/lit8 v1, v2, -0x1

    .line 735
    :cond_2
    if-ltz v1, :cond_8

    add-int/lit8 v4, v2, -0x1

    if-gt v1, v4, :cond_8

    .line 737
    if-eqz p3, :cond_3

    .line 738
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-eq v4, v1, :cond_6

    move v4, v3

    :goto_2
    iput-boolean v4, p3, Landroid/util/MutableBoolean;->value:Z

    .line 741
    :cond_3
    add-int/lit8 v4, v2, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 742
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    .line 744
    sget-boolean v4, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllScroll:Z

    if-eqz v4, :cond_4

    .line 745
    if-eqz p1, :cond_7

    .line 746
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onToggleRecentsBottomContainer(Z)V

    :cond_4
    :goto_3
    move v5, v3

    .line 751
    goto :goto_0

    .end local v0    # "direction":I
    .end local v1    # "newIndex":I
    :cond_5
    move v0, v3

    .line 728
    goto :goto_1

    .restart local v0    # "direction":I
    .restart local v1    # "newIndex":I
    :cond_6
    move v4, v5

    .line 738
    goto :goto_2

    .line 748
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v4, v3}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onToggleRecentsBottomContainer(Z)V

    goto :goto_3

    .line 755
    :cond_8
    if-gez v1, :cond_0

    .line 768
    invoke-virtual {p0, v5, v3, p2}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    move v5, v3

    .line 771
    goto :goto_0
.end method

.method focusTask(IZZ)V
    .locals 5
    .param p1, "taskIndex"    # I
    .param p2, "scrollToNewPosition"    # Z
    .param p3, "animateFocusedState"    # Z

    .prologue
    .line 645
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 648
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 649
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 652
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 653
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v1, p0, v2, p3}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 665
    .local v1, "postScrollRunnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_2

    .line 666
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v0, v3, v4

    .line 667
    .local v0, "newScroll":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v0

    .line 668
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    goto :goto_0

    .line 670
    .end local v0    # "newScroll":F
    :cond_2
    if-eqz v1, :cond_0

    .line 671
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 841
    const-class v0, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 323
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 324
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 325
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 326
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 330
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    return-object v3

    .line 324
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    return-object v0
.end method

.method getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mImmutableTaskViews:Ljava/util/List;

    return-object v0
.end method

.method getTouchableRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1863
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method hideDismissAllButton(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    if-nez v0, :cond_0

    .line 1439
    :goto_0
    return-void

    .line 1424
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButtonAnimating:Z

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$10;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method onFirstLayout()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1033
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v12, v12, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    sub-int v4, v11, v12

    .line 1036
    .local v4, "offscreenY":I
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v12, v12, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    sub-int v3, v11, v12

    .line 1041
    .local v3, "offscreenX":I
    sget-boolean v11, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    if-eqz v11, :cond_1

    .line 1042
    :cond_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 1047
    :cond_1
    const/4 v1, 0x0

    .line 1048
    .local v1, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v7

    .line 1049
    .local v7, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 1050
    .local v6, "taskViewCount":I
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1051
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 1052
    .local v8, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 1053
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v11, v5, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v11, :cond_3

    .line 1054
    move-object v1, v5

    .line 1060
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    add-int/lit8 v0, v6, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 1061
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 1062
    .restart local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 1063
    .restart local v5    # "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_4

    iget-object v11, v1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v11, v5, v1}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v2, v9

    .line 1070
    .local v2, "occludesLaunchTarget":Z
    :goto_2
    iget-boolean v11, v5, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    invoke-virtual {v8, v11, v2, v4}, Lcom/android/systemui/recents/views/TaskView;->prepareEnterRecentsAnimation(ZZI)V

    .line 1060
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1050
    .end local v2    # "occludesLaunchTarget":Z
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v2, v10

    .line 1063
    goto :goto_2

    .line 1076
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    if-eqz v9, :cond_6

    .line 1077
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 1078
    iput-boolean v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    .line 1079
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .line 1084
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v9, :cond_7

    .line 1109
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v9, :cond_9

    .line 1110
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    .line 1120
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-nez v9, :cond_8

    .line 1121
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 1123
    :cond_8
    return-void

    .line 1113
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_3
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 808
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 810
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 811
    .local v2, "taskViewCount":I
    if-lez v2, :cond_0

    .line 812
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 813
    .local v0, "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 814
    .local v1, "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 815
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 816
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 818
    .end local v0    # "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    .end local v1    # "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 819
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 820
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 821
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x1

    .line 825
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 826
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 827
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 828
    .local v0, "taskViewCount":I
    if-le v0, v4, :cond_1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 829
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 830
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-lez v2, :cond_0

    .line 831
    const/16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 833
    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 834
    const/16 v2, 0x2000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 837
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    .line 1001
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 1002
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1003
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1004
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1005
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1006
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1010
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v7, v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 1019
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v4, :cond_2

    .line 1020
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/DismissView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/DismissView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/android/systemui/statusbar/DismissView;->layout(IIII)V

    .line 1025
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v4, :cond_3

    .line 1026
    iput-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 1027
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    .line 1029
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 946
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 947
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 950
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 951
    .local v3, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 952
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->computeRects(IILandroid/graphics/Rect;ZZ)V

    .line 957
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 959
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 960
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v9

    .line 965
    .local v9, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 966
    .local v8, "taskViewCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 967
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    .line 968
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 969
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 973
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v10, v0, v4}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    .line 966
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 983
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v0, :cond_3

    .line 984
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 985
    .local v7, "taskRectWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->dismissAllButtonSizePx:I

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/DismissView;->measure(II)V

    .line 990
    .end local v7    # "taskRectWidth":I
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 991
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 7
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2005
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v5, p2, p3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->computeComponentsRemoved(Ljava/util/List;Ljava/lang/String;I)Ljava/util/HashSet;

    move-result-object v1

    .line 2009
    .local v1, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 2010
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2011
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 2012
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2013
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 2014
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_1

    .line 2016
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$13;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/recents/views/TaskStackView$13;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;I)V

    .line 2010
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2024
    .restart local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_1

    .line 2028
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method onRecentsHidden()V
    .locals 0

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 1462
    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1990
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 1991
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->postInvalidateOnAnimation()V

    .line 1994
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    if-eqz v0, :cond_0

    .line 1995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 1998
    :cond_0
    return-void
.end method

.method public onStackExcludeUnfiltered(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1705
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 1706
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 1545
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1551
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v6

    .line 1552
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v6, :cond_0

    .line 1553
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v9, v6}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1555
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mReaquireAccessibilityFocus:Z

    .line 1561
    :cond_0
    const/4 v0, 0x0

    .line 1562
    .local v0, "anchorTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 1563
    .local v3, "prevAnchorTaskScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-lez v9, :cond_6

    move v4, v7

    .line 1564
    .local v4, "pullStackForward":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 1565
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1566
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    .line 1570
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 1573
    if-eqz v4, :cond_2

    .line 1574
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    .line 1575
    .local v1, "anchorTaskScroll":F
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v10

    sub-float v11, v1, v3

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 1577
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1581
    .end local v1    # "anchorTaskScroll":F
    :cond_2
    const/16 v9, 0xc8

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 1584
    if-eqz p3, :cond_3

    .line 1585
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1586
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_3

    .line 1587
    invoke-virtual {v2, p3}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;)V

    .line 1588
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->fadeInActionButton(II)V

    .line 1594
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_8

    .line 1595
    const/4 v5, 0x1

    .line 1596
    .local v5, "shouldFinishActivity":Z
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1597
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 1598
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_7

    move v5, v7

    .line 1600
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 1601
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onAllTaskViewsDismissed(Ljava/util/ArrayList;)V

    .line 1608
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onToggleRecentsBottomContainer(Z)V

    .line 1620
    .end local v5    # "shouldFinishActivity":Z
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v7, p2}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 1621
    return-void

    .end local v4    # "pullStackForward":Z
    :cond_6
    move v4, v8

    .line 1563
    goto :goto_0

    .restart local v4    # "pullStackForward":Z
    .restart local v5    # "shouldFinishActivity":Z
    :cond_7
    move v5, v8

    .line 1598
    goto :goto_1

    .line 1614
    .end local v5    # "shouldFinishActivity":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V

    goto :goto_2
.end method

.method public onStackUnfiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "newStack"    # Lcom/android/systemui/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1700
    .local p2, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/model/Task;)V

    .line 1967
    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 1885
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "overview_app_info"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1887
    :cond_0
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZZ)V
    .locals 8
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "lockToTask"    # Z
    .param p4, "toSplit"    # Z
    .param p5, "fixToTask"    # Z

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1894
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V

    .line 1897
    :cond_0
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1950
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 1951
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1953
    :cond_0
    return-void
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 13
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "fromDismissButton"    # Z

    .prologue
    .line 1901
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 1902
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    .line 1903
    .local v5, "taskIndex":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v6

    .line 1912
    .local v6, "taskWasFocused":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0229

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1917
    if-eqz p2, :cond_0

    .line 1918
    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 1923
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1925
    if-eqz v6, :cond_1

    .line 1926
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1927
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1928
    .local v2, "nextTaskIndex":I
    if-ltz v2, :cond_1

    .line 1929
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 1930
    .local v1, "nextTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 1931
    .local v3, "nextTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_1

    .line 1934
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    .line 1940
    .end local v1    # "nextTask":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "nextTaskIndex":I
    .end local v3    # "nextTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    sget-boolean v8, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v8, :cond_2

    iget-object v8, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1941
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "lockComponentName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 1946
    .end local v0    # "lockComponentName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "focused"    # Z

    .prologue
    .line 1957
    if-eqz p2, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 1960
    :cond_0
    return-void
.end method

.method public onTaskViewMoved(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1979
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1980
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 1981
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewMoved()V

    .line 1982
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onUserInteraction()V
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1472
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 846
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    :goto_0
    return v0

    .line 849
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v0, v1

    .line 867
    goto :goto_0

    .line 852
    :sswitch_0
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-lez v2, :cond_1

    .line 853
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 859
    :sswitch_1
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 860
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 850
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareViewToEnterPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1771
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1774
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1775
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1779
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1782
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1784
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1787
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1790
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1791
    return-void
.end method

.method public bridge synthetic prepareViewToEnterPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->prepareViewToEnterPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public prepareViewToLeavePool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 11
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1797
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v10

    if-gtz v10, :cond_5

    if-nez p3, :cond_5

    move v3, v9

    .line 1800
    .local v3, "requiresRelayout":Z
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;)V

    .line 1803
    iget-object v10, p1, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v10, :cond_6

    iget-object v10, p1, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    if-gtz v10, :cond_6

    iget v10, p1, Lcom/android/systemui/recents/views/TaskView;->lockButtonVisibility:I

    if-nez v10, :cond_6

    move v0, v9

    .line 1808
    .local v0, "forceLayoutToShowPinButton":Z
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1811
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/DozeTrigger;->hasTriggered()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1812
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1816
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    if-eqz v8, :cond_2

    .line 1817
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->enableFocusAnimations()V

    .line 1821
    :cond_2
    const/4 v2, -0x1

    .line 1822
    .local v2, "insertIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    .line 1823
    .local v4, "taskIndex":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 1825
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    .line 1826
    .local v6, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 1827
    .local v5, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_3

    .line 1828
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 1829
    .local v7, "tvTask":Lcom/android/systemui/recents/model/Task;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v8

    if-ge v4, v8, :cond_7

    .line 1831
    add-int/lit8 v2, v1, 0x0

    .line 1838
    .end local v1    # "i":I
    .end local v5    # "taskViewCount":I
    .end local v6    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v7    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    if-eqz p3, :cond_8

    .line 1839
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1847
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1850
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1851
    invoke-virtual {p1, v9}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1852
    invoke-virtual {p1, v9}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1856
    invoke-virtual {p1, v9}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 1859
    return-void

    .end local v0    # "forceLayoutToShowPinButton":Z
    .end local v2    # "insertIndex":I
    .end local v3    # "requiresRelayout":Z
    .end local v4    # "taskIndex":I
    :cond_5
    move v3, v8

    .line 1797
    goto :goto_0

    .restart local v3    # "requiresRelayout":Z
    :cond_6
    move v0, v8

    .line 1803
    goto :goto_1

    .line 1827
    .restart local v0    # "forceLayoutToShowPinButton":Z
    .restart local v1    # "i":I
    .restart local v2    # "insertIndex":I
    .restart local v4    # "taskIndex":I
    .restart local v5    # "taskViewCount":I
    .restart local v6    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v7    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1841
    .end local v1    # "i":I
    .end local v5    # "taskViewCount":I
    .end local v6    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v7    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, p1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1842
    if-nez v3, :cond_9

    if-eqz v0, :cond_4

    .line 1843
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->requestLayout()V

    goto :goto_3
.end method

.method public bridge synthetic prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Z

    .prologue
    .line 77
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->prepareViewToLeavePool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method requestSynchronizeStackViewsWithModel()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 297
    return-void
.end method

.method requestSynchronizeStackViewsWithModel(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    goto :goto_0
.end method

.method public requestUpdateStackViewsClip()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 318
    :cond_0
    return-void
.end method

.method reset()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask()V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 248
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 249
    .local v2, "taskViewCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 250
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    if-eqz v5, :cond_1

    .line 255
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 256
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    if-eqz v1, :cond_1

    .line 257
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 259
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->reset()V

    goto :goto_1

    .line 265
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->reset()V

    .line 266
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 267
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 268
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 269
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 270
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    if-eqz v5, :cond_2

    .line 271
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 272
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->resetTrigger()V

    .line 274
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 276
    iput-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 277
    iput-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    .line 278
    return-void
.end method

.method public resetFocusedTask()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 795
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 796
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 797
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 798
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 802
    .end local v0    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 803
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 804
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    .line 200
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 221
    return-void
.end method

.method public setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 12
    .param p1, "excludeView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "isSet"    # Z

    .prologue
    const-wide/16 v10, 0x14a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1476
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 1477
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1478
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1479
    .local v3, "t":Lcom/android/systemui/recents/views/TaskView;
    if-eq v3, p1, :cond_0

    .line 1480
    if-eqz p2, :cond_1

    .line 1481
    iget v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    if-ne v4, v7, :cond_2

    .line 1482
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    .line 1483
    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    new-array v5, v9, [I

    const/16 v6, 0x4c

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1484
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1485
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1477
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1490
    :cond_1
    iget v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    if-eq v4, v7, :cond_0

    iget-object v4, v3, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_0

    .line 1491
    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    new-array v5, v9, [I

    iget v6, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1492
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1493
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$11;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1506
    iput-object v0, v3, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 1507
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 1512
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "t":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method setStack(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 211
    return-void
.end method

.method public setStackInsetRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 623
    return-void
.end method

.method showDismissAllButton()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    if-nez v0, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButtonAnimating:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButtonAnimating:Z

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/DismissView;->setAlpha(F)V

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackView$9;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 7
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    .prologue
    .line 1318
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1319
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1320
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask()V

    .line 1322
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d022a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1323
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1325
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    .line 1339
    iget-boolean v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->toRight:Z

    if-eqz v4, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    .line 1349
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1350
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1351
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1352
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    add-int/lit8 v4, v4, 0x28

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    .line 1353
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1344
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    neg-int v4, v4

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    goto :goto_0

    .line 1355
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 12
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1128
    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v6, :cond_1

    .line 1129
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    .line 1130
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    if-eqz v6, :cond_3

    .line 1135
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 1136
    iput-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    .line 1137
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    .line 1141
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1143
    const/4 v1, 0x0

    .line 1144
    .local v1, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 1145
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1146
    .local v3, "taskViewCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1147
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    .line 1148
    .local v5, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 1149
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v6, v2, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v6, :cond_5

    .line 1150
    move-object v1, v2

    .line 1156
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_7

    .line 1157
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    .line 1158
    .restart local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 1159
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    new-instance v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v6}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1160
    iput v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    .line 1161
    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    .line 1162
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iput-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    .line 1163
    if-eqz v1, :cond_6

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v6, v2, v1}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    iput-boolean v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    .line 1165
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1166
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    iget-object v10, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v11, 0x0

    invoke-virtual {v6, v2, v9, v10, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1167
    invoke-virtual {v5, p1}, Lcom/android/systemui/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 1156
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1146
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    move v6, v8

    .line 1163
    goto :goto_3

    .line 1174
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v6, :cond_8

    const-wide/16 v6, 0xe6

    :goto_4
    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1184
    iget-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v7, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1174
    :cond_8
    const-wide/16 v6, 0x0

    goto :goto_4
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 8
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    const/4 v7, 0x0

    .line 1229
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1230
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1232
    sget-boolean v4, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    if-eqz v4, :cond_0

    .line 1233
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    .line 1234
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 1247
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslation:I

    .line 1253
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->hideDismissAllButton(Ljava/lang/Runnable;)V

    .line 1255
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v4, v7}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onToggleRecentsBottomContainer(Z)V

    .line 1258
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/views/TaskStackView$7;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 1265
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1268
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 1269
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1270
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1271
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1272
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 1270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1274
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1279
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1280
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1282
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    .line 1283
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimating:Z

    .line 1292
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslation:I

    .line 1297
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1298
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 1299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 1300
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 1301
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskView;->startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 1299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-boolean v3, p2, Lcom/android/systemui/recents/model/Task;->fullscreen:Z

    if-nez v3, :cond_1

    .line 1306
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 1307
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1308
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskView;->startExitToPreviousTopMostAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 1312
    .end local v1    # "i":I
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V
    .locals 10
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "lockToTask"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1380
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1381
    .local v1, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    .line 1382
    .local v5, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1383
    .local v4, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1384
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1385
    .local v3, "t":Lcom/android/systemui/recents/views/TaskView;
    if-ne v3, p1, :cond_0

    .line 1386
    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1387
    invoke-virtual {v3, p2, v9, v9, p3}, Lcom/android/systemui/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    .line 1383
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1389
    :cond_0
    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    .line 1391
    .local v2, "occludesLaunchTarget":Z
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v8, v2, p3}, Lcom/android/systemui/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 1394
    .end local v2    # "occludesLaunchTarget":Z
    .end local v3    # "t":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method synchronizeStackViewsWithModel()Z
    .locals 23

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-eqz v2, :cond_b

    .line 415
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v12

    .line 416
    .local v12, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 419
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 420
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    .line 421
    .local v5, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 422
    .local v6, "visibleRange":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z

    move-result v11

    .line 424
    .local v11, "isValidVisibleRange":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v2, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vis["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/DebugOverlayView;->setText(Ljava/lang/String;)V

    .line 454
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v18

    .line 456
    .local v18, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 457
    .local v17, "taskViewCount":I
    const/4 v13, 0x0

    .line 458
    .local v13, "reaquireAccessibilityFocus":Z
    add-int/lit8 v9, v17, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_4

    .line 459
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 460
    .local v20, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 461
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    .line 462
    .local v16, "taskIndex":I
    const/4 v2, 0x1

    aget v2, v6, v2

    move/from16 v0, v16

    if-gt v2, v0, :cond_2

    const/4 v2, 0x0

    aget v2, v6, v2

    move/from16 v0, v16

    if-gt v0, v2, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 465
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 466
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v13, v2

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-ne v15, v2, :cond_1

    .line 470
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->hideDismissAllButton(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 466
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 476
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mReaquireAccessibilityFocus:Z

    or-int/2addr v13, v2

    .line 477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mReaquireAccessibilityFocus:Z

    .line 481
    const/4 v2, 0x0

    aget v9, v6, v2

    :goto_3
    if-eqz v11, :cond_a

    const/4 v2, 0x1

    aget v2, v6, v2

    if-lt v9, v2, :cond_a

    .line 482
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 483
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 484
    .local v19, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 485
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    .line 487
    .restart local v16    # "taskIndex":I
    if-nez v20, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2, v15, v15}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 489
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayersDisabled:Z

    if-eqz v2, :cond_5

    .line 490
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->disableLayersForOneFrame()V

    .line 492
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    if-lez v2, :cond_6

    .line 495
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_9

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 500
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    .line 505
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-ne v15, v2, :cond_7

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V

    .line 511
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    if-eqz v13, :cond_8

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v18

    .line 518
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 519
    if-lez v17, :cond_8

    invoke-virtual {v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 521
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 522
    .local v8, "atv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v10

    .line 523
    .local v10, "indexOfTask":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-eq v2, v10, :cond_8

    .line 524
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 525
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 481
    .end local v8    # "atv":Lcom/android/systemui/recents/views/TaskView;
    .end local v10    # "indexOfTask":I
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_3

    .line 498
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto/16 :goto_4

    .line 532
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v19    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 534
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 535
    const/4 v2, 0x1

    .line 537
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v5    # "stackScroll":F
    .end local v6    # "visibleRange":[I
    .end local v9    # "i":I
    .end local v11    # "isValidVisibleRange":Z
    .end local v12    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v13    # "reaquireAccessibilityFocus":Z
    .end local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v17    # "taskViewCount":I
    .end local v18    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :goto_5
    return v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_5
.end method

.method updateDismissButtonPosition()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1443
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    if-nez v2, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v4, 0x0

    aput v4, v3, v6

    aput v4, v2, v5

    .line 1448
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1449
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1450
    .local v0, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v2, :cond_0

    .line 1451
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    invoke-static {v1, p0, v2, v5}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 1452
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    aget v3, v3, v6

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DismissView;->setTranslationY(F)V

    .line 1453
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DismissView;->setTranslationX(F)V

    goto :goto_0
.end method

.method updateMinMaxScroll(ZZZ)V
    .locals 2
    .param p1, "boundScrollToNewMinMax"    # Z
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V

    .line 632
    if-eqz p1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 635
    :cond_0
    return-void
.end method

.method public updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 929
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 930
    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 227
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mImmutableTaskViews:Ljava/util/List;

    .line 234
    return-void
.end method
