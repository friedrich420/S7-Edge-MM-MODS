.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
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

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .prologue
    .line 10142
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 10143
    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, mExtraScroll:I

    .line 10144
    return-void
.end method

.method private scrollToVisible(III)V
    .registers 21
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 10336
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    iget v6, v14, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 10337
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 10338
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 10339
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    iget-object v14, v14, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 10340
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/AbsListView;

    iget-object v15, v15, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 10342
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_34

    move/from16 v0, p1

    if-le v0, v7, :cond_69

    .line 10343
    :cond_34
    const-string v14, "AbsListView"

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

    .line 10346
    :cond_69
    move/from16 v0, p2

    if-lt v0, v6, :cond_71

    move/from16 v0, p2

    if-le v0, v7, :cond_73

    .line 10348
    :cond_71
    const/16 p2, -0x1

    .line 10351
    :cond_73
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 10352
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 10353
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 10354
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 10356
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_8a

    .line 10357
    sub-int v10, v11, v8

    .line 10359
    :cond_8a
    if-ge v13, v9, :cond_8e

    .line 10360
    sub-int v10, v13, v9

    .line 10363
    :cond_8e
    if-nez v10, :cond_91

    .line 10383
    :goto_90
    return-void

    .line 10367
    :cond_91
    if-ltz p2, :cond_b6

    .line 10368
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10369
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 10370
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 10371
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 10373
    .local v1, "absScroll":I
    if-gez v10, :cond_c0

    add-int v14, v2, v1

    if-le v14, v8, :cond_c0

    .line 10375
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 10382
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_b6
    :goto_b6
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/AbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_90

    .line 10376
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_c0
    if-lez v10, :cond_b6

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_b6

    .line 10378
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_b6
.end method


# virtual methods
.method public run()V
    .registers 36

    .prologue
    .line 10392
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v19

    .line 10393
    .local v19, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 10395
    .local v9, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_420

    .line 10567
    :cond_1d
    :goto_1d
    return-void

    .line 10397
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .line 10398
    .local v16, "lastViewIndex":I
    add-int v12, v9, v16

    .line 10400
    .local v12, "lastPos":I
    if-ltz v16, :cond_1d

    .line 10404
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_46

    .line 10406
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 10410
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 10411
    .local v13, "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 10412
    .local v15, "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 10413
    .local v18, "lastViewTop":I
    sub-int v17, v19, v18

    .line 10414
    .local v17, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10417
    .local v8, "extraScroll":I
    :goto_8c
    sub-int v31, v15, v17

    add-int v28, v31, v8

    .line 10418
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 10420
    move-object/from16 v0, p0

    iput v12, v0, mLastSeenPos:I

    .line 10421
    move-object/from16 v0, p0

    iget v0, v0, mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v12, v0, :cond_1d

    .line 10422
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10414
    .end local v8    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8c

    .line 10428
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_d7
    const/16 v24, 0x1

    .line 10429
    .local v24, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 10431
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v9, v0, :cond_1d

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v5, v0, :cond_1d

    add-int v31, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_1d

    .line 10435
    add-int/lit8 v21, v9, 0x1

    .line 10437
    .local v21, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_124

    .line 10439
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10443
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 10444
    .local v22, "nextView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 10445
    .local v23, "nextViewHeight":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v25

    .line 10446
    .local v25, "nextViewTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10447
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_190

    .line 10448
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v23, v25

    sub-int v33, v33, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 10451
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mLastSeenPos:I

    .line 10453
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10455
    :cond_190
    move/from16 v0, v25

    if-le v0, v8, :cond_1d

    .line 10456
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_1d

    .line 10463
    .end local v5    # "childCount":I
    .end local v8    # "extraScroll":I
    .end local v21    # "nextPos":I
    .end local v22    # "nextView":Landroid/view/View;
    .end local v23    # "nextViewHeight":I
    .end local v24    # "nextViewIndex":I
    .end local v25    # "nextViewTop":I
    :pswitch_1a9
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v9, v0, :cond_1c2

    .line 10465
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10469
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 10470
    .local v10, "firstView":Landroid/view/View;
    if-eqz v10, :cond_1d

    .line 10473
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 10474
    .local v11, "firstViewTop":I
    if-lez v9, :cond_222

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10477
    .restart local v8    # "extraScroll":I
    :goto_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v8

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 10479
    move-object/from16 v0, p0

    iput v9, v0, mLastSeenPos:I

    .line 10481
    move-object/from16 v0, p0

    iget v0, v0, mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v9, v0, :cond_1d

    .line 10482
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10474
    .end local v8    # "extraScroll":I
    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1f2

    .line 10488
    .end local v10    # "firstView":Landroid/view/View;
    .end local v11    # "firstViewTop":I
    :pswitch_233
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x2

    .line 10489
    .restart local v16    # "lastViewIndex":I
    if-ltz v16, :cond_1d

    .line 10492
    add-int v12, v9, v16

    .line 10494
    .restart local v12    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_25c

    .line 10496
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10500
    :cond_25c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 10501
    .restart local v13    # "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 10502
    .restart local v15    # "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 10503
    .restart local v18    # "lastViewTop":I
    sub-int v17, v19, v18

    .line 10504
    .restart local v17    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10505
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iput v12, v0, mLastSeenPos:I

    .line 10506
    move-object/from16 v0, p0

    iget v0, v0, mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v12, v0, :cond_2c5

    .line 10507
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v17, v8

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 10508
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10510
    :cond_2c5
    sub-int v4, v19, v8

    .line 10511
    .local v4, "bottom":I
    add-int v14, v18, v15

    .line 10512
    .local v14, "lastViewBottom":I
    if-le v4, v14, :cond_1d

    .line 10513
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v4, v14

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_1d

    .line 10520
    .end local v4    # "bottom":I
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v14    # "lastViewBottom":I
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_2e5
    move-object/from16 v0, p0

    iget v0, v0, mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v9, :cond_2fe

    .line 10522
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10526
    :cond_2fe
    move-object/from16 v0, p0

    iput v9, v0, mLastSeenPos:I

    .line 10528
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 10529
    .restart local v5    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, mTargetPos:I

    move/from16 v26, v0

    .line 10530
    .local v26, "position":I
    add-int v31, v9, v5

    add-int/lit8 v12, v31, -0x1

    .line 10532
    .restart local v12    # "lastPos":I
    const/16 v30, 0x0

    .line 10533
    .local v30, "viewTravelCount":I
    move/from16 v0, v26

    if-ge v0, v9, :cond_37f

    .line 10534
    sub-int v31, v9, v26

    add-int/lit8 v30, v31, 0x1

    .line 10540
    :cond_320
    :goto_320
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v5

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 10542
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 10543
    .local v20, "modifier":F
    move/from16 v0, v26

    if-ge v0, v9, :cond_386

    .line 10544
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10545
    .local v6, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 10546
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 10547
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10535
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    .end local v20    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_37f
    move/from16 v0, v26

    if-le v0, v12, :cond_320

    .line 10536
    sub-int v30, v26, v12

    goto :goto_320

    .line 10548
    .restart local v20    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_386
    move/from16 v0, v26

    if-le v0, v12, :cond_3cc

    .line 10549
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10550
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 10551
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 10552
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 10555
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v9

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v29

    .line 10556
    .local v29, "targetTop":I
    move-object/from16 v0, p0

    iget v0, v0, mOffsetFromTop:I

    move/from16 v31, v0

    sub-int v6, v29, v31

    .line 10557
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsListView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v7, v0

    .line 10559
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_1d

    .line 10395
    nop

    :pswitch_data_420
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a9
        :pswitch_d7
        :pswitch_233
        :pswitch_2e5
    .end packed-switch
.end method

.method public start(I)V
    .registers 11
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 10148
    invoke-virtual {p0}, stop()V

    .line 10150
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_16

    .line 10152
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10192
    :cond_15
    :goto_15
    return-void

    .line 10160
    :cond_16
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 10161
    .local v0, "childCount":I
    if-eqz v0, :cond_15

    .line 10166
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget v2, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 10167
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 10170
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10171
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_52

    .line 10172
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 10173
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, mMode:I

    .line 10182
    :goto_40
    if-lez v4, :cond_60

    .line 10183
    div-int v5, v8, v4

    iput v5, p0, mScrollDuration:I

    .line 10187
    :goto_46
    iput v1, p0, mTargetPos:I

    .line 10188
    iput v7, p0, mBoundPos:I

    .line 10189
    iput v7, p0, mLastSeenPos:I

    .line 10191
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 10174
    .end local v4    # "viewTravelCount":I
    :cond_52
    if-le v1, v3, :cond_5c

    .line 10175
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 10176
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, mMode:I

    goto :goto_40

    .line 10178
    .end local v4    # "viewTravelCount":I
    :cond_5c
    invoke-direct {p0, v1, v7, v8}, scrollToVisible(III)V

    goto :goto_15

    .line 10185
    .restart local v4    # "viewTravelCount":I
    :cond_60
    iput v8, p0, mScrollDuration:I

    goto :goto_46
.end method

.method public start(II)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 10196
    invoke-virtual {p0}, stop()V

    .line 10198
    const/4 v9, -0x1

    if-ne p2, v9, :cond_a

    .line 10199
    invoke-virtual {p0, p1}, start(I)V

    .line 10271
    :cond_9
    :goto_9
    return-void

    .line 10203
    :cond_a
    iget-object v9, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v9, v9, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v9, :cond_1a

    .line 10205
    iget-object v9, p0, this$0:Landroid/widget/AbsListView;

    new-instance v10, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_9

    .line 10213
    :cond_1a
    iget-object v9, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 10214
    .local v3, "childCount":I
    if-eqz v3, :cond_9

    .line 10219
    iget-object v9, p0, this$0:Landroid/widget/AbsListView;

    iget v5, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 10220
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 10223
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10224
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_67

    .line 10225
    sub-int v1, v6, p2

    .line 10226
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_9

    .line 10231
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 10232
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 10233
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_62

    .line 10234
    move v8, v2

    .line 10235
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, mMode:I

    .line 10261
    .end local v1    # "boundPosFromLast":I
    :goto_4e
    if-lez v8, :cond_86

    .line 10262
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, mScrollDuration:I

    .line 10266
    :goto_55
    iput v4, p0, mTargetPos:I

    .line 10267
    iput p2, p0, mBoundPos:I

    .line 10268
    const/4 v9, -0x1

    iput v9, p0, mLastSeenPos:I

    .line 10270
    iget-object v9, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 10237
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_62
    move v8, v7

    .line 10238
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, mMode:I

    goto :goto_4e

    .line 10240
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_67
    if-le v4, v6, :cond_80

    .line 10241
    sub-int v0, p2, v5

    .line 10242
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_9

    .line 10247
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 10248
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 10249
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_7b

    .line 10250
    move v8, v2

    .line 10251
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, mMode:I

    goto :goto_4e

    .line 10253
    .end local v8    # "viewTravelCount":I
    :cond_7b
    move v8, v7

    .line 10254
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, mMode:I

    goto :goto_4e

    .line 10257
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_80
    const/16 v9, 0xc8

    invoke-direct {p0, v4, p2, v9}, scrollToVisible(III)V

    goto :goto_9

    .line 10264
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_86
    const/16 v9, 0xc8

    iput v9, p0, mScrollDuration:I

    goto :goto_55
.end method

.method public startWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 10275
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, startWithOffset(III)V

    .line 10276
    return-void
.end method

.method public startWithOffset(III)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 10280
    invoke-virtual {p0}, stop()V

    .line 10282
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v7, :cond_15

    .line 10284
    move v3, p2

    .line 10285
    .local v3, "postOffset":I
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    new-instance v8, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10329
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_14
    :goto_14
    return-void

    .line 10293
    .restart local p3    # "duration":I
    :cond_15
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 10294
    .local v0, "childCount":I
    if-eqz v0, :cond_14

    .line 10299
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 10301
    const/4 v7, 0x0

    iget-object v8, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, mTargetPos:I

    .line 10302
    iput p2, p0, mOffsetFromTop:I

    .line 10303
    iput v9, p0, mBoundPos:I

    .line 10304
    iput v9, p0, mLastSeenPos:I

    .line 10305
    const/4 v7, 0x5

    iput v7, p0, mMode:I

    .line 10307
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget v1, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 10308
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 10311
    .local v2, "lastPos":I
    iget v7, p0, mTargetPos:I

    if-ge v7, v1, :cond_64

    .line 10312
    iget v7, p0, mTargetPos:I

    sub-int v6, v1, v7

    .line 10323
    .local v6, "viewTravelCount":I
    :goto_50
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 10324
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_83

    .end local p3    # "duration":I
    :goto_5a
    iput p3, p0, mScrollDuration:I

    .line 10326
    iput v9, p0, mLastSeenPos:I

    .line 10328
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 10313
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_64
    iget v7, p0, mTargetPos:I

    if-le v7, v2, :cond_6d

    .line 10314
    iget v7, p0, mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_50

    .line 10317
    .end local v6    # "viewTravelCount":I
    :cond_6d
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget v8, p0, mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 10318
    .local v5, "targetTop":I
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto :goto_14

    .line 10324
    .end local v5    # "targetTop":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_83
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_5a
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 10387
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10388
    return-void
.end method
