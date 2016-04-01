.class Landroid/widget/AbsHorizontalListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 4

    .prologue
    .line 5277
    iput-object p1, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5250
    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;-><init>(Landroid/widget/AbsHorizontalListView$FlingRunnable;)V

    iput-object v0, p0, mCheckFlywheel:Ljava/lang/Runnable;

    .line 5278
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mScroller:Landroid/widget/OverScroller;

    .line 5279
    return-void
.end method

.method static synthetic access$1900(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .prologue
    .line 5239
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .registers 8
    .param p1, "delta"    # I

    .prologue
    .line 5323
    iget-object v2, p0, mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v3}, Landroid/widget/AbsHorizontalListView;->access$2500(Landroid/widget/AbsHorizontalListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 5324
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v0

    .line 5325
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 5327
    :cond_23
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5328
    iget-object v2, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 5329
    .local v1, "vel":I
    if-lez p1, :cond_45

    .line 5330
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5340
    .end local v1    # "vel":I
    :cond_3a
    :goto_3a
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5341
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5342
    return-void

    .line 5332
    .restart local v1    # "vel":I
    :cond_45
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3a

    .line 5335
    .end local v1    # "vel":I
    :cond_4f
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5336
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, v2, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v2, :cond_3a

    .line 5337
    iget-object v2, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, v2, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto :goto_3a
.end method

.method endFling()V
    .registers 3

    .prologue
    .line 5354
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5356
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5357
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5359
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 5360
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2900(Landroid/widget/AbsHorizontalListView;)V

    .line 5361
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5363
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 5364
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 5365
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsHorizontalListView;->access$2202(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5367
    :cond_38
    return-void
.end method

.method flywheelTouch()V
    .registers 5

    .prologue
    .line 5370
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5371
    return-void
.end method

.method public run()V
    .registers 30

    .prologue
    .line 5375
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_1e8

    .line 5377
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, endFling()V

    .line 5499
    :cond_c
    :goto_c
    return-void

    .line 5381
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    .line 5386
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v2, v2, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_26

    .line 5387
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 5390
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v2, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 5391
    :cond_38
    invoke-virtual/range {p0 .. p0}, endFling()V

    goto :goto_c

    .line 5395
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 5396
    .local v26, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    .line 5397
    .local v22, "more":Z
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v28

    .line 5401
    .local v28, "x":I
    move-object/from16 v0, p0

    iget v2, v0, mLastFlingX:I

    sub-int v19, v2, v28

    .line 5404
    .local v19, "delta":I
    if-lez v19, :cond_f4

    .line 5406
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5407
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 5408
    .local v20, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5411
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5425
    .end local v20    # "firstView":Landroid/view/View;
    :goto_93
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 5426
    .local v23, "motionView":Landroid/view/View;
    const/16 v25, 0x0

    .line 5427
    .local v25, "oldLeft":I
    if-eqz v23, :cond_b0

    .line 5428
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 5432
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v14

    .line 5433
    .local v14, "atEdge":Z
    if-eqz v14, :cond_145

    if-eqz v19, :cond_145

    const/4 v15, 0x1

    .line 5434
    .local v15, "atEnd":Z
    :goto_c1
    if-eqz v15, :cond_148

    .line 5435
    if-eqz v23, :cond_e9

    .line 5437
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    .line 5438
    .local v3, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v6}, Landroid/widget/AbsHorizontalListView;->access$3400(Landroid/widget/AbsHorizontalListView;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v9, v9, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsHorizontalListView;->access$3500(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z

    .line 5441
    .end local v3    # "overshoot":I
    :cond_e9
    if-eqz v22, :cond_c

    .line 5442
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, edgeReached(I)V

    goto/16 :goto_c

    .line 5414
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 5415
    .local v24, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5417
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 5418
    .local v21, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5421
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3200(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3300(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_93

    .line 5433
    .end local v21    # "lastView":Landroid/view/View;
    .end local v24    # "offsetToLast":I
    .restart local v14    # "atEdge":Z
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v25    # "oldLeft":I
    :cond_145
    const/4 v15, 0x0

    goto/16 :goto_c1

    .line 5447
    .restart local v15    # "atEnd":Z
    :cond_148
    if-eqz v22, :cond_166

    if-nez v15, :cond_166

    .line 5448
    if-eqz v14, :cond_155

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5449
    :cond_155
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mLastFlingX:I

    .line 5450
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 5452
    :cond_166
    invoke-virtual/range {p0 .. p0}, endFling()V

    goto/16 :goto_c

    .line 5470
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v26    # "scroller":Landroid/widget/OverScroller;
    .end local v28    # "x":I
    :pswitch_16b
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 5471
    .restart local v26    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 5472
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$3600(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    .line 5473
    .local v7, "scrollX":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    .line 5474
    .local v18, "currX":I
    sub-int v5, v18, v7

    .line 5475
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v11, v2, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v4 .. v13}, Landroid/widget/AbsHorizontalListView;->access$3700(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 5477
    if-gtz v7, :cond_1c5

    if-lez v18, :cond_1c5

    const/16 v17, 0x1

    .line 5478
    .local v17, "crossRight":Z
    :goto_1a1
    if-ltz v7, :cond_1c8

    if-gez v18, :cond_1c8

    const/16 v16, 0x1

    .line 5479
    .local v16, "crossLeft":Z
    :goto_1a7
    if-nez v17, :cond_1ab

    if-eqz v16, :cond_1cb

    .line 5480
    :cond_1ab
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 5481
    .local v27, "velocity":I
    if-eqz v16, :cond_1b9

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 5484
    :cond_1b9
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5485
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, start(I)V

    goto/16 :goto_c

    .line 5477
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    .end local v27    # "velocity":I
    :cond_1c5
    const/16 v17, 0x0

    goto :goto_1a1

    .line 5478
    .restart local v17    # "crossRight":Z
    :cond_1c8
    const/16 v16, 0x0

    goto :goto_1a7

    .line 5487
    .restart local v16    # "crossLeft":Z
    :cond_1cb
    invoke-virtual/range {p0 .. p0}, startSpringback()V

    goto/16 :goto_c

    .line 5490
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5491
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 5494
    .end local v5    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v18    # "currX":I
    :cond_1e2
    invoke-virtual/range {p0 .. p0}, endFling()V

    goto/16 :goto_c

    .line 5375
    nop

    :pswitch_data_1e8
    .packed-switch 0x3
        :pswitch_d
        :pswitch_17
        :pswitch_9
        :pswitch_16b
    .end packed-switch
.end method

.method start(I)V
    .registers 11
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 5282
    if-gez p1, :cond_37

    move v1, v6

    .line 5283
    .local v1, "initialX":I
    :goto_7
    iput v1, p0, mLastFlingX:I

    .line 5284
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5285
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5287
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5288
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5297
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_36

    .line 5298
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const-string v2, "AbsHorizontalListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    # setter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$2202(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5300
    :cond_36
    return-void

    .end local v1    # "initialX":I
    :cond_37
    move v1, v2

    .line 5282
    goto :goto_7
.end method

.method startOverfling(I)V
    .registers 13
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 5314
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5315
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$2400(Landroid/widget/AbsHorizontalListView;)I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5317
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5318
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5319
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5320
    return-void
.end method

.method startScroll(IIZ)V
    .registers 10
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5345
    if-gez p1, :cond_24

    const v1, 0x7fffffff

    .line 5346
    .local v1, "initialX":I
    :goto_6
    iput v1, p0, mLastFlingX:I

    .line 5347
    iget-object v3, p0, mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_26

    sget-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_e
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5348
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5349
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5350
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5351
    return-void

    .end local v1    # "initialX":I
    :cond_24
    move v1, v2

    .line 5345
    goto :goto_6

    .line 5347
    .restart local v1    # "initialX":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_e
.end method

.method startSpringback()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 5303
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$2300(Landroid/widget/AbsHorizontalListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5304
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5305
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5306
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5311
    :goto_22
    return-void

    .line 5308
    :cond_23
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5309
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_22
.end method
