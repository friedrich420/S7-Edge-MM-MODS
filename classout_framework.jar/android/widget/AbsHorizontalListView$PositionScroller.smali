.class Landroid/widget/AbsHorizontalListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromLeft:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 3

    .prologue
    .line 5520
    iput-object p1, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5521
    # getter for: Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsHorizontalListView;->access$3800(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, mExtraScroll:I

    .line 5522
    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    .prologue
    .line 5765
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v18

    .line 5766
    .local v18, "listWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5768
    .local v8, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_420

    .line 5940
    :cond_1d
    :goto_1d
    return-void

    .line 5770
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .line 5771
    .local v13, "lastViewIndex":I
    add-int v11, v8, v13

    .line 5773
    .local v11, "lastPos":I
    if-ltz v13, :cond_1d

    .line 5777
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_46

    .line 5779
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 5783
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5784
    .local v12, "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 5785
    .local v17, "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 5786
    .local v14, "lastViewLeft":I
    sub-int v15, v18, v14

    .line 5787
    .local v15, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v11, v0, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5790
    .local v7, "extraScroll":I
    :goto_8a
    sub-int v31, v17, v15

    add-int v28, v31, v7

    .line 5791
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 5793
    move-object/from16 v0, p0

    iput v11, v0, mLastSeenPos:I

    .line 5794
    move-object/from16 v0, p0

    iget v0, v0, mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_1d

    .line 5795
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5787
    .end local v7    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto :goto_8a

    .line 5801
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v17    # "lastViewWidth":I
    :pswitch_d5
    const/16 v22, 0x1

    .line 5802
    .local v22, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v4

    .line 5804
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_1d

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v4, v0, :cond_1d

    add-int v31, v8, v4

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_1d

    .line 5808
    add-int/lit8 v20, v8, 0x1

    .line 5810
    .local v20, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_122

    .line 5812
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5816
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 5817
    .local v21, "nextView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v24

    .line 5818
    .local v24, "nextViewWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v23

    .line 5819
    .local v23, "nextViewLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5820
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_18e

    .line 5821
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v24, v23

    sub-int v33, v33, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 5824
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastSeenPos:I

    .line 5826
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5828
    :cond_18e
    move/from16 v0, v23

    if-le v0, v7, :cond_1d

    .line 5829
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v23, v7

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_1d

    .line 5836
    .end local v4    # "childCount":I
    .end local v7    # "extraScroll":I
    .end local v20    # "nextPos":I
    .end local v21    # "nextView":Landroid/view/View;
    .end local v22    # "nextViewIndex":I
    .end local v23    # "nextViewLeft":I
    .end local v24    # "nextViewWidth":I
    :pswitch_1a7
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_1c0

    .line 5838
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5842
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5843
    .local v9, "firstView":Landroid/view/View;
    if-eqz v9, :cond_1d

    .line 5846
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 5847
    .local v10, "firstViewLeft":I
    if-lez v8, :cond_220

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5850
    .restart local v7    # "extraScroll":I
    :goto_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v10, v7

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 5852
    move-object/from16 v0, p0

    iput v8, v0, mLastSeenPos:I

    .line 5854
    move-object/from16 v0, p0

    iget v0, v0, mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v8, v0, :cond_1d

    .line 5855
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5847
    .end local v7    # "extraScroll":I
    :cond_220
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1f0

    .line 5861
    .end local v9    # "firstView":Landroid/view/View;
    .end local v10    # "firstViewLeft":I
    :pswitch_231
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x2

    .line 5862
    .restart local v13    # "lastViewIndex":I
    if-ltz v13, :cond_1d

    .line 5865
    add-int v11, v8, v13

    .line 5867
    .restart local v11    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_25a

    .line 5869
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5873
    :cond_25a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5874
    .restart local v12    # "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 5875
    .restart local v17    # "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 5876
    .restart local v14    # "lastViewLeft":I
    sub-int v15, v18, v14

    .line 5877
    .restart local v15    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5878
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iput v11, v0, mLastSeenPos:I

    .line 5879
    move-object/from16 v0, p0

    iget v0, v0, mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v11, v0, :cond_2c1

    .line 5880
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v15, v7

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 5881
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5883
    :cond_2c1
    sub-int v26, v18, v7

    .line 5884
    .local v26, "right":I
    add-int v16, v14, v17

    .line 5885
    .local v16, "lastViewRight":I
    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_1d

    .line 5886
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v16

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_1d

    .line 5893
    .end local v7    # "extraScroll":I
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v16    # "lastViewRight":I
    .end local v17    # "lastViewWidth":I
    .end local v26    # "right":I
    :pswitch_2e5
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v8, :cond_2fe

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5899
    :cond_2fe
    move-object/from16 v0, p0

    iput v8, v0, mLastSeenPos:I

    .line 5901
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v4

    .line 5902
    .restart local v4    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, mTargetPos:I

    move/from16 v25, v0

    .line 5903
    .local v25, "position":I
    add-int v31, v8, v4

    add-int/lit8 v11, v31, -0x1

    .line 5905
    .restart local v11    # "lastPos":I
    const/16 v30, 0x0

    .line 5906
    .local v30, "viewTravelCount":I
    move/from16 v0, v25

    if-ge v0, v8, :cond_37f

    .line 5907
    sub-int v31, v8, v25

    add-int/lit8 v30, v31, 0x1

    .line 5913
    :cond_320
    :goto_320
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v4

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 5915
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 5916
    .local v19, "modifier":F
    move/from16 v0, v25

    if-ge v0, v8, :cond_386

    .line 5917
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    .line 5918
    .local v5, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5919
    .local v6, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 5920
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5908
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    .end local v19    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_37f
    move/from16 v0, v25

    if-le v0, v11, :cond_320

    .line 5909
    sub-int v30, v25, v11

    goto :goto_320

    .line 5921
    .restart local v19    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_386
    move/from16 v0, v25

    if-le v0, v11, :cond_3cc

    .line 5922
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    .line 5923
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5924
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 5925
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 5928
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    :cond_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLeft()I

    move-result v29

    .line 5929
    .local v29, "targetLeft":I
    move-object/from16 v0, p0

    iget v0, v0, mOffsetFromLeft:I

    move/from16 v31, v0

    sub-int v5, v29, v31

    .line 5930
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5932
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_1d

    .line 5768
    nop

    :pswitch_data_420
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a7
        :pswitch_d5
        :pswitch_231
        :pswitch_2e5
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .registers 21
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5710
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v14, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5711
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 5712
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 5713
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v14, v14, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v14, Landroid/graphics/Rect;->left:I

    .line 5714
    .local v8, "paddedLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v15, v15, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v9, v14, v15

    .line 5716
    .local v9, "paddedRight":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_34

    move/from16 v0, p1

    if-le v0, v7, :cond_69

    .line 5717
    :cond_34
    const-string v14, "AbsHorizontalListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    :cond_69
    move/from16 v0, p2

    if-lt v0, v6, :cond_71

    move/from16 v0, p2

    if-le v0, v7, :cond_73

    .line 5722
    :cond_71
    const/16 p2, -0x1

    .line 5725
    :cond_73
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5726
    .local v11, "targetChild":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 5727
    .local v12, "targetLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    .line 5728
    .local v13, "targetRight":I
    const/4 v10, 0x0

    .line 5730
    .local v10, "scrollBy":I
    if-le v13, v9, :cond_8a

    .line 5731
    sub-int v10, v13, v9

    .line 5733
    :cond_8a
    if-ge v12, v8, :cond_8e

    .line 5734
    sub-int v10, v12, v8

    .line 5737
    :cond_8e
    if-nez v10, :cond_91

    .line 5757
    :goto_90
    return-void

    .line 5741
    :cond_91
    if-ltz p2, :cond_b6

    .line 5742
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5743
    .local v2, "boundChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 5744
    .local v3, "boundLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 5745
    .local v4, "boundRight":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5747
    .local v1, "absScroll":I
    if-gez v10, :cond_c0

    add-int v14, v4, v1

    if-le v14, v9, :cond_c0

    .line 5749
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 5756
    .end local v1    # "absScroll":I
    .end local v2    # "boundChild":Landroid/view/View;
    .end local v3    # "boundLeft":I
    .end local v4    # "boundRight":I
    :cond_b6
    :goto_b6
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_90

    .line 5750
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundChild":Landroid/view/View;
    .restart local v3    # "boundLeft":I
    .restart local v4    # "boundRight":I
    :cond_c0
    if-lez v10, :cond_b6

    sub-int v14, v3, v1

    if-ge v14, v8, :cond_b6

    .line 5752
    const/4 v14, 0x0

    sub-int v15, v3, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_b6
.end method

.method start(I)V
    .registers 11
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 5525
    invoke-virtual {p0}, stop()V

    .line 5527
    iget-object v5, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v5, v5, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_16

    .line 5529
    iget-object v5, p0, this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v6, Landroid/widget/AbsHorizontalListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller$1;-><init>(Landroid/widget/AbsHorizontalListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 5569
    :cond_15
    :goto_15
    return-void

    .line 5537
    :cond_16
    iget-object v5, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 5538
    .local v0, "childCount":I
    if-eqz v0, :cond_15

    .line 5543
    iget-object v5, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v5, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5544
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 5547
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5548
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_52

    .line 5549
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 5550
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, mMode:I

    .line 5559
    :goto_40
    if-lez v4, :cond_60

    .line 5560
    div-int v5, v8, v4

    iput v5, p0, mScrollDuration:I

    .line 5564
    :goto_46
    iput v1, p0, mTargetPos:I

    .line 5565
    iput v7, p0, mBoundPos:I

    .line 5566
    iput v7, p0, mLastSeenPos:I

    .line 5568
    iget-object v5, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 5551
    .end local v4    # "viewTravelCount":I
    :cond_52
    if-le v1, v3, :cond_5c

    .line 5552
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 5553
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, mMode:I

    goto :goto_40

    .line 5555
    .end local v4    # "viewTravelCount":I
    :cond_5c
    invoke-virtual {p0, v1, v7, v8}, scrollToVisible(III)V

    goto :goto_15

    .line 5562
    .restart local v4    # "viewTravelCount":I
    :cond_60
    iput v8, p0, mScrollDuration:I

    goto :goto_46
.end method

.method start(II)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 5572
    invoke-virtual {p0}, stop()V

    .line 5574
    const/4 v9, -0x1

    if-ne p2, v9, :cond_a

    .line 5575
    invoke-virtual {p0, p1}, start(I)V

    .line 5647
    :cond_9
    :goto_9
    return-void

    .line 5579
    :cond_a
    iget-object v9, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v9, v9, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v9, :cond_1a

    .line 5581
    iget-object v9, p0, this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v10, Landroid/widget/AbsHorizontalListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller$2;-><init>(Landroid/widget/AbsHorizontalListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_9

    .line 5589
    :cond_1a
    iget-object v9, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 5590
    .local v3, "childCount":I
    if-eqz v3, :cond_9

    .line 5595
    iget-object v9, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v9, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5596
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 5599
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 5600
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_67

    .line 5601
    sub-int v1, v6, p2

    .line 5602
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_9

    .line 5607
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 5608
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 5609
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_62

    .line 5610
    move v8, v2

    .line 5611
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, mMode:I

    .line 5637
    .end local v1    # "boundPosFromLast":I
    :goto_4e
    if-lez v8, :cond_86

    .line 5638
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, mScrollDuration:I

    .line 5642
    :goto_55
    iput v4, p0, mTargetPos:I

    .line 5643
    iput p2, p0, mBoundPos:I

    .line 5644
    const/4 v9, -0x1

    iput v9, p0, mLastSeenPos:I

    .line 5646
    iget-object v9, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 5613
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_62
    move v8, v7

    .line 5614
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, mMode:I

    goto :goto_4e

    .line 5616
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_67
    if-le v4, v6, :cond_80

    .line 5617
    sub-int v0, p2, v5

    .line 5618
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_9

    .line 5623
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 5624
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 5625
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_7b

    .line 5626
    move v8, v2

    .line 5627
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, mMode:I

    goto :goto_4e

    .line 5629
    .end local v8    # "viewTravelCount":I
    :cond_7b
    move v8, v7

    .line 5630
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, mMode:I

    goto :goto_4e

    .line 5633
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_80
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, scrollToVisible(III)V

    goto :goto_9

    .line 5640
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_86
    const/16 v9, 0xc8

    iput v9, p0, mScrollDuration:I

    goto :goto_55
.end method

.method startWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 5650
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, startWithOffset(III)V

    .line 5651
    return-void
.end method

.method startWithOffset(III)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 5654
    invoke-virtual {p0}, stop()V

    .line 5656
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v7, v7, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v7, :cond_15

    .line 5658
    move v3, p2

    .line 5659
    .local v3, "postOffset":I
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v8, Landroid/widget/AbsHorizontalListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller$3;-><init>(Landroid/widget/AbsHorizontalListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 5703
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_14
    :goto_14
    return-void

    .line 5667
    .restart local p3    # "duration":I
    :cond_15
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 5668
    .local v0, "childCount":I
    if-eqz v0, :cond_14

    .line 5673
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v7

    add-int/2addr p2, v7

    .line 5675
    const/4 v7, 0x0

    iget-object v8, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, mTargetPos:I

    .line 5676
    iput p2, p0, mOffsetFromLeft:I

    .line 5677
    iput v9, p0, mBoundPos:I

    .line 5678
    iput v9, p0, mLastSeenPos:I

    .line 5679
    const/4 v7, 0x5

    iput v7, p0, mMode:I

    .line 5681
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v1, v7, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5682
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 5685
    .local v2, "lastPos":I
    iget v7, p0, mTargetPos:I

    if-ge v7, v1, :cond_64

    .line 5686
    iget v7, p0, mTargetPos:I

    sub-int v6, v1, v7

    .line 5697
    .local v6, "viewTravelCount":I
    :goto_50
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 5698
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_83

    .end local p3    # "duration":I
    :goto_5a
    iput p3, p0, mScrollDuration:I

    .line 5700
    iput v9, p0, mLastSeenPos:I

    .line 5702
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 5687
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_64
    iget v7, p0, mTargetPos:I

    if-le v7, v2, :cond_6d

    .line 5688
    iget v7, p0, mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_50

    .line 5691
    .end local v6    # "viewTravelCount":I
    :cond_6d
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget v8, p0, mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 5692
    .local v5, "targetLeft":I
    iget-object v7, p0, this$0:Landroid/widget/AbsHorizontalListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto :goto_14

    .line 5698
    .end local v5    # "targetLeft":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_83
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_5a
.end method

.method stop()V
    .registers 2

    .prologue
    .line 5760
    iget-object v0, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5761
    return-void
.end method
