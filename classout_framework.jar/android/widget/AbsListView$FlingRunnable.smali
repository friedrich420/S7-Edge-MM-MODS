.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 4

    .prologue
    .line 6556
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6529
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, mCheckFlywheel:Ljava/lang/Runnable;

    .line 6557
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mScroller:Landroid/widget/OverScroller;

    .line 6558
    return-void
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 6518
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .registers 8
    .param p1, "delta"    # I

    .prologue
    .line 6625
    iget-object v2, p0, mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 6626
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 6627
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 6629
    :cond_23
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6630
    iget-object v2, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 6631
    .local v1, "vel":I
    if-lez p1, :cond_45

    .line 6632
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6642
    .end local v1    # "vel":I
    :cond_3a
    :goto_3a
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 6643
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6644
    return-void

    .line 6634
    .restart local v1    # "vel":I
    :cond_45
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3a

    .line 6637
    .end local v1    # "vel":I
    :cond_4f
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6638
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_3a

    .line 6639
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_3a
.end method

.method endFling()V
    .registers 3

    .prologue
    .line 6656
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6658
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6659
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6661
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6662
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)V

    .line 6663
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6665
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 6666
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 6667
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3002(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6669
    :cond_38
    return-void
.end method

.method flywheelTouch()V
    .registers 5

    .prologue
    .line 6672
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6673
    return-void
.end method

.method public run()V
    .registers 31

    .prologue
    .line 6677
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_1de

    .line 6679
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, endFling()V

    .line 6802
    :cond_c
    :goto_c
    return-void

    .line 6683
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    .line 6688
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_26

    .line 6689
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 6692
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 6693
    :cond_38
    invoke-virtual/range {p0 .. p0}, endFling()V

    goto :goto_c

    .line 6697
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 6698
    .local v27, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v23

    .line 6699
    .local v23, "more":Z
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v29

    .line 6703
    .local v29, "y":I
    move-object/from16 v0, p0

    iget v2, v0, mLastFlingY:I

    sub-int v20, v2, v29

    .line 6706
    .local v20, "delta":I
    if-lez v20, :cond_f5

    .line 6708
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6709
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 6710
    .local v21, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6713
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 6727
    .end local v21    # "firstView":Landroid/view/View;
    :goto_93
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 6728
    .local v24, "motionView":Landroid/view/View;
    const/16 v26, 0x0

    .line 6729
    .local v26, "oldTop":I
    if-eqz v24, :cond_b0

    .line 6730
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v26

    .line 6734
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v15

    .line 6735
    .local v15, "atEdge":Z
    if-eqz v15, :cond_146

    if-eqz v20, :cond_146

    const/16 v16, 0x1

    .line 6736
    .local v16, "atEnd":Z
    :goto_c2
    if-eqz v16, :cond_14a

    .line 6737
    if-eqz v24, :cond_ea

    .line 6739
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v26

    sub-int v2, v20, v2

    neg-int v4, v2

    .line 6740
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 6743
    .end local v4    # "overshoot":I
    :cond_ea
    if-eqz v23, :cond_c

    .line 6744
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, edgeReached(I)V

    goto/16 :goto_c

    .line 6716
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .line 6717
    .local v25, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v25

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6719
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 6720
    .local v22, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6723
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_93

    .line 6735
    .end local v22    # "lastView":Landroid/view/View;
    .end local v25    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v24    # "motionView":Landroid/view/View;
    .restart local v26    # "oldTop":I
    :cond_146
    const/16 v16, 0x0

    goto/16 :goto_c2

    .line 6749
    .restart local v16    # "atEnd":Z
    :cond_14a
    if-eqz v23, :cond_168

    if-nez v16, :cond_168

    .line 6750
    if-eqz v15, :cond_157

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 6751
    :cond_157
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mLastFlingY:I

    .line 6752
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 6754
    :cond_168
    invoke-virtual/range {p0 .. p0}, endFling()V

    goto/16 :goto_c

    .line 6772
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v27    # "scroller":Landroid/widget/OverScroller;
    .end local v29    # "y":I
    :pswitch_16d
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 6773
    .restart local v27    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 6774
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;)I

    move-result v9

    .line 6775
    .local v9, "scrollY":I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    .line 6776
    .local v19, "currY":I
    sub-int v7, v19, v9

    .line 6777
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 6779
    if-gtz v9, :cond_1bb

    if-lez v19, :cond_1bb

    const/16 v17, 0x1

    .line 6780
    .local v17, "crossDown":Z
    :goto_1a3
    if-ltz v9, :cond_1be

    if-gez v19, :cond_1be

    const/16 v18, 0x1

    .line 6781
    .local v18, "crossUp":Z
    :goto_1a9
    if-nez v17, :cond_1ad

    if-eqz v18, :cond_1c1

    .line 6782
    :cond_1ad
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 6783
    .local v28, "velocity":I
    if-eqz v18, :cond_c

    move/from16 v0, v28

    neg-int v2, v0

    goto/16 :goto_c

    .line 6779
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    .end local v28    # "velocity":I
    :cond_1bb
    const/16 v17, 0x0

    goto :goto_1a3

    .line 6780
    .restart local v17    # "crossDown":Z
    :cond_1be
    const/16 v18, 0x0

    goto :goto_1a9

    .line 6790
    .restart local v18    # "crossUp":Z
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, startSpringback()V

    goto/16 :goto_c

    .line 6793
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 6794
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 6797
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_1d8
    invoke-virtual/range {p0 .. p0}, endFling()V

    goto/16 :goto_c

    .line 6677
    nop

    :pswitch_data_1de
    .packed-switch 0x3
        :pswitch_d
        :pswitch_17
        :pswitch_9
        :pswitch_16d
    .end packed-switch
.end method

.method start(I)V
    .registers 11
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 6561
    if-gez p1, :cond_3c

    move v2, v6

    .line 6562
    .local v2, "initialY":I
    :goto_7
    iput v2, p0, mLastFlingY:I

    .line 6563
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6564
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 6566
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6567
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6568
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6577
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 6578
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3002(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6580
    :cond_3b
    return-void

    .end local v2    # "initialY":I
    :cond_3c
    move v2, v1

    .line 6561
    goto :goto_7
.end method

.method start(IZ)V
    .registers 13
    .param p1, "initialVelocity"    # I
    .param p2, "accDisabled"    # Z

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 6583
    if-gez p1, :cond_3d

    move v2, v6

    .line 6584
    .local v2, "initialY":I
    :goto_7
    iput v2, p0, mLastFlingY:I

    .line 6585
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6586
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIIIZ)V

    .line 6588
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6589
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6590
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6599
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 6600
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3002(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6602
    :cond_3c
    return-void

    .end local v2    # "initialY":I
    :cond_3d
    move v2, v1

    .line 6583
    goto :goto_7
.end method

.method startOverfling(I)V
    .registers 13
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 6616
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6617
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 6619
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6620
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6621
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6622
    return-void
.end method

.method startScroll(IIZ)V
    .registers 10
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6647
    if-gez p1, :cond_24

    const v2, 0x7fffffff

    .line 6648
    .local v2, "initialY":I
    :goto_6
    iput v2, p0, mLastFlingY:I

    .line 6649
    iget-object v3, p0, mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_26

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_e
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6650
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 6651
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6652
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6653
    return-void

    .end local v2    # "initialY":I
    :cond_24
    move v2, v1

    .line 6647
    goto :goto_6

    .line 6649
    .restart local v2    # "initialY":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_e
.end method

.method startSpringback()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 6605
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6606
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6607
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6608
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6613
    :goto_22
    return-void

    .line 6610
    :cond_23
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6611
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_22
.end method
