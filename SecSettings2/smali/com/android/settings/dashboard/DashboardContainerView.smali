.class public Lcom/android/settings/dashboard/DashboardContainerView;
.super Landroid/view/ViewGroup;
.source "DashboardContainerView.java"


# instance fields
.field private mCellGapX:F

.field private mCellGapY:F

.field private mNumColumns:I

.field private mNumRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    .line 39
    const v1, 0x7f0c0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    .line 40
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    .line 41
    return-void
.end method


# virtual methods
.method public SetNumColumns(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    .line 46
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v2

    .line 94
    .local v2, "N":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->isLayoutRtl()Z

    move-result v14

    .line 95
    .local v14, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getWidth()I

    move-result v17

    .line 97
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    .line 98
    .local v18, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v19

    .line 99
    .local v19, "y":I
    const/4 v12, 0x0

    .line 101
    .local v12, "cursor":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_4

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardTileView;

    .line 103
    .local v3, "child":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 104
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 101
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v20, v0

    rem-int v10, v12, v20

    .line 109
    .local v10, "col":I
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v11

    .line 111
    .local v11, "colSpan":I
    iget v9, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    .local v9, "childWidth":I
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .local v5, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v20, v0

    div-int v16, v12, v20

    .line 120
    .local v16, "row":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/DashboardTileView;->setDividerVisibility(Z)V

    .line 123
    add-int v20, v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    .line 125
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 126
    add-int/lit8 v16, v16, 0x1

    .line 129
    :cond_1
    if-eqz v14, :cond_2

    sub-int v20, v17, v18

    sub-int v6, v20, v9

    .line 130
    .local v6, "childLeft":I
    :goto_2
    add-int v7, v6, v9

    .line 132
    .local v7, "childRight":I
    move/from16 v8, v19

    .line 133
    .local v8, "childTop":I
    add-int v4, v8, v5

    .line 136
    .local v4, "childBottom":I
    invoke-virtual {v3, v6, v8, v7, v4}, Lcom/android/settings/dashboard/DashboardTileView;->layout(IIII)V

    .line 140
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v20

    add-int v12, v12, v20

    .line 141
    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 142
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    :cond_2
    move/from16 v6, v18

    .line 129
    goto :goto_2

    .line 144
    .restart local v4    # "childBottom":I
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    .restart local v8    # "childTop":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    .line 145
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    .line 148
    .end local v3    # "child":Lcom/android/settings/dashboard/DashboardTileView;
    .end local v4    # "childBottom":I
    .end local v5    # "childHeight":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v9    # "childWidth":I
    .end local v10    # "col":I
    .end local v11    # "colSpan":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "row":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 51
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v3, v15

    .line 53
    .local v3, "availableWidth":I
    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 54
    .local v5, "cellWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v2

    .line 56
    .local v2, "N":I
    const/4 v4, 0x0

    .line 57
    .local v4, "cellHeight":I
    const/4 v7, 0x0

    .line 59
    .local v7, "cursor":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_2

    .line 60
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/settings/dashboard/DashboardTileView;

    .line 61
    .local v13, "v":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 59
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 66
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v6

    .line 67
    .local v6, "colSpan":I
    int-to-float v15, v6

    mul-float/2addr v15, v5

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    const/4 v15, 0x0

    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v12

    .line 71
    .local v12, "newWidthSpec":I
    const/4 v15, 0x0

    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v11

    .line 72
    .local v11, "newHeightSpec":I
    invoke-virtual {v13, v12, v11}, Lcom/android/settings/dashboard/DashboardTileView;->measure(II)V

    .line 75
    if-gtz v4, :cond_1

    .line 76
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getMeasuredHeight()I

    move-result v4

    .line 79
    :cond_1
    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    add-int/2addr v7, v6

    goto :goto_1

    .line 84
    .end local v6    # "colSpan":I
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "newHeightSpec":I
    .end local v12    # "newWidthSpec":I
    .end local v13    # "v":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_2
    int-to-float v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    .line 85
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    mul-int/2addr v15, v4

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingBottom()I

    move-result v16

    add-int v10, v15, v16

    .line 88
    .local v10, "newHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/android/settings/dashboard/DashboardContainerView;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method
