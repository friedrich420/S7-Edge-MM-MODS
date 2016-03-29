.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mBottomSpacing:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mSideSpacing:I

.field private mTopSpacing:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 48
    sget-object v4, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 51
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 52
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 53
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    .line 58
    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    .line 61
    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 64
    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    goto :goto_1

    .line 67
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    goto :goto_1

    .line 70
    :pswitch_5
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    goto :goto_1

    .line 75
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v6

    .line 124
    .local v6, "isRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    .line 125
    .local v2, "children":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v15, v2

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    div-int v10, v15, v16

    .line 126
    .local v10, "rows":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    .line 128
    .local v14, "y":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 129
    .local v7, "mLocalNumColumns":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v15, v2, :cond_0

    move v7, v2

    .line 131
    :cond_0
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    if-ge v9, v10, :cond_5

    .line 132
    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 133
    .local v13, "x":I
    :goto_1
    const/4 v8, 0x0

    .line 134
    .local v8, "maxHeight":I
    mul-int v11, v9, v7

    .line 135
    .local v11, "startOfRow":I
    add-int v15, v11, v7

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 136
    .local v3, "endOfRow":I
    move v5, v11

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_4

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 139
    .local v12, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 140
    .local v4, "height":I
    if-eqz v6, :cond_1

    .line 141
    sub-int/2addr v13, v12

    .line 143
    :cond_1
    add-int v15, v13, v12

    add-int v16, v14, v4

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 144
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 145
    if-eqz v6, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v13, v15

    .line 136
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 132
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "endOfRow":I
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v8    # "maxHeight":I
    .end local v11    # "startOfRow":I
    .end local v12    # "width":I
    .end local v13    # "x":I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    goto :goto_1

    .line 148
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "endOfRow":I
    .restart local v4    # "height":I
    .restart local v5    # "i":I
    .restart local v8    # "maxHeight":I
    .restart local v11    # "startOfRow":I
    .restart local v12    # "width":I
    .restart local v13    # "x":I
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v15, v12

    add-int/2addr v13, v15

    goto :goto_3

    .line 151
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "height":I
    .end local v12    # "width":I
    :cond_4
    add-int/2addr v14, v8

    .line 153
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v14, v15

    .line 131
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "endOfRow":I
    .end local v5    # "i":I
    .end local v8    # "maxHeight":I
    .end local v11    # "startOfRow":I
    .end local v13    # "x":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-nez v18, :cond_0

    .line 81
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    const-string v19, "Needs a maximum width"

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 83
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 85
    .local v17, "width":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 86
    .local v10, "mLocalNumColumns":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v7

    .line 87
    .local v7, "children":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_1

    move v10, v7

    .line 89
    :cond_1
    add-int/lit8 v18, v10, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    div-int v5, v18, v10

    .line 90
    .local v5, "childWidth":I
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 91
    .local v6, "childWidthSpec":I
    const/4 v4, 0x0

    .line 92
    .local v4, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    move/from16 v16, v0

    .line 93
    .local v16, "totalHeight":I
    add-int v18, v7, v10

    add-int/lit8 v18, v18, -0x1

    div-int v14, v18, v10

    .line 94
    .local v14, "rows":I
    const/4 v13, 0x0

    .local v13, "row":I
    :goto_0
    if-ge v13, v14, :cond_5

    .line 95
    mul-int v15, v13, v10

    .line 96
    .local v15, "startOfRow":I
    add-int v18, v15, v10

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 97
    .local v8, "endOfRow":I
    const/4 v11, 0x0

    .line 98
    .local v11, "maxHeight":I
    move v9, v15

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 99
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v6, v4}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 103
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 104
    .local v12, "maxHeightSpec":I
    move v9, v15

    :goto_2
    if-ge v9, v8, :cond_4

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 106
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v11, :cond_3

    .line 107
    invoke-virtual {v3, v6, v12}, Landroid/view/View;->measure(II)V

    .line 104
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 110
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    add-int v16, v16, v11

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v16, v16, v18

    .line 94
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 116
    .end local v8    # "endOfRow":I
    .end local v9    # "i":I
    .end local v11    # "maxHeight":I
    .end local v12    # "maxHeightSpec":I
    .end local v15    # "startOfRow":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    move/from16 v18, v0

    add-int v16, v16, v18

    .line 118
    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/qs/PseudoGridView;->getDefaultSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method
