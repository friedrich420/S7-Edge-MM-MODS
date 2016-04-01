.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$1;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"

.field private static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mOriginalEndPadding:I

.field private mOriginalStartPadding:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-virtual {p0, v4}, setBaselineAligned(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v1, "density":F
    const/high16 v5, 0x42600000    # 56.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, mMinCellSize:I

    .line 90
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, mGeneratedItemPadding:I

    .line 91
    iput-object p1, p0, mPopupContext:Landroid/content/Context;

    .line 92
    iput v4, p0, mPopupTheme:I

    .line 95
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11600bd

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_54

    :goto_35
    sput-boolean v3, mIsThemeDeviceDefaultFamily:Z

    .line 101
    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102d8

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x44

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, mOriginalStartPadding:I

    .line 103
    const/16 v3, 0x45

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, mOriginalEndPadding:I

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_54
    move v3, v4

    .line 97
    goto :goto_35
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 51
    iget-object v0, p0, mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 51
    iget-object v0, p0, mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 18
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 439
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 441
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 442
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 444
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_61

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 446
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_1c
    if-eqz v7, :cond_63

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_63

    const/4 v6, 0x1

    .line 448
    .local v6, "hasText":Z
    :goto_25
    const/4 v0, 0x0

    .line 449
    .local v0, "cellsUsed":I
    if-lez p2, :cond_4a

    if-eqz v6, :cond_2d

    const/4 v11, 0x2

    if-lt p2, v11, :cond_4a

    .line 450
    :cond_2d
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 452
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 455
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 456
    rem-int v11, v9, p1

    if-eqz v11, :cond_44

    add-int/lit8 v0, v0, 0x1

    .line 457
    :cond_44
    if-eqz v6, :cond_4a

    const/4 v11, 0x2

    if-ge v0, v11, :cond_4a

    const/4 v0, 0x2

    .line 460
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_4a
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_65

    if-eqz v6, :cond_65

    const/4 v5, 0x1

    .line 461
    .local v5, "expandable":Z
    :goto_51
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 463
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 464
    mul-int v10, v0, p1

    .line 465
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 467
    return v0

    .line 444
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_61
    const/4 v7, 0x0

    goto :goto_1c

    .line 446
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_63
    const/4 v6, 0x0

    goto :goto_25

    .line 460
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_65
    const/4 v5, 0x0

    goto :goto_51
.end method

.method private onMeasureExactFormat(II)V
    .registers 45
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 201
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 202
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 203
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 205
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 206
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 208
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, getChildMeasureSpec(III)I

    move-result v22

    .line 211
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 215
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 217
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_4c

    .line 219
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    .line 420
    :goto_4b
    return-void

    .line 223
    :cond_4c
    move-object/from16 v0, p0

    iget v0, v0, mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 225
    .local v5, "cellSize":I
    move v8, v4

    .line 226
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 227
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 228
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 229
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 230
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 233
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 235
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v12

    .line 236
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_68
    move/from16 v0, v20

    if-ge v0, v12, :cond_14a

    .line 237
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 238
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_83

    .line 236
    :cond_80
    :goto_80
    add-int/lit8 v20, v20, 0x1

    goto :goto_68

    .line 240
    :cond_83
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 241
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 243
    if-eqz v21, :cond_a6

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 249
    :cond_a6
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 250
    .local v23, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 251
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 252
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 253
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 254
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 255
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 256
    if-eqz v21, :cond_145

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_145

    const/16 v38, 0x1

    :goto_ea
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 259
    sget-boolean v38, mIsThemeDeviceDefaultFamily:Z

    if-eqz v38, :cond_fa

    .line 260
    move/from16 v0, v21

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 265
    :cond_fa
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_148

    const/4 v7, 0x1

    .line 267
    .local v7, "cellsAvailable":I
    :goto_103
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 270
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 271
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_11b

    add-int/lit8 v14, v14, 0x1

    .line 272
    :cond_11b
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_125

    const/16 v16, 0x1

    .line 274
    :cond_125
    sub-int/2addr v8, v9

    .line 275
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 276
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_80

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_80

    .line 256
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_145
    const/16 v38, 0x0

    goto :goto_ea

    :cond_148
    move v7, v8

    .line 265
    goto :goto_103

    .line 281
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_14a
    if-eqz v16, :cond_181

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_181

    const/4 v10, 0x1

    .line 286
    .local v10, "centerSingleExpandedItem":Z
    :goto_155
    const/16 v30, 0x0

    .line 287
    .local v30, "needsExpansion":Z
    :goto_157
    if-lez v14, :cond_1c1

    if-lez v8, :cond_1c1

    .line 288
    const v26, 0x7fffffff

    .line 289
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 290
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 291
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_164
    move/from16 v0, v20

    if-ge v0, v12, :cond_1bb

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 293
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 296
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_183

    .line 291
    :cond_17e
    :goto_17e
    add-int/lit8 v20, v20, 0x1

    goto :goto_164

    .line 281
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_181
    const/4 v10, 0x0

    goto :goto_155

    .line 299
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_183
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_1a1

    .line 300
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 301
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 302
    const/16 v27, 0x1

    goto :goto_17e

    .line 303
    :cond_1a1
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_17e

    .line 304
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 305
    add-int/lit8 v27, v27, 0x1

    goto :goto_17e

    .line 310
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1bb
    or-long v32, v32, v28

    .line 312
    move/from16 v0, v27

    if-le v0, v8, :cond_26f

    .line 345
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_1c1
    if-nez v16, :cond_2fe

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_2fe

    const/16 v31, 0x1

    .line 346
    .local v31, "singleItem":Z
    :goto_1cd
    if-lez v8, :cond_37e

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_37e

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_1e5

    if-nez v31, :cond_1e5

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_37e

    .line 348
    :cond_1e5
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 350
    .local v13, "expandCount":F
    if-nez v31, :cond_243

    .line 352
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_214

    .line 353
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 354
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_214

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 356
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_214
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_243

    .line 357
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 358
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_243

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 362
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_243
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_302

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 365
    .local v15, "extraPixels":I
    :goto_255
    const/16 v20, 0x0

    :goto_257
    move/from16 v0, v20

    if-ge v0, v12, :cond_37d

    .line 366
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_305

    .line 365
    :cond_26c
    :goto_26c
    add-int/lit8 v20, v20, 0x1

    goto :goto_257

    .line 315
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_26f
    add-int/lit8 v26, v26, 0x1

    .line 317
    const/16 v20, 0x0

    :goto_273
    move/from16 v0, v20

    if-ge v0, v12, :cond_2fa

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 319
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 320
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_2b0

    .line 322
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_2ad

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 317
    :cond_2ad
    :goto_2ad
    add-int/lit8 v20, v20, 0x1

    goto :goto_273

    .line 326
    :cond_2b0
    if-eqz v10, :cond_2e1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2e1

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_2e1

    .line 328
    sget-boolean v38, mIsThemeDeviceDefaultFamily:Z

    if-eqz v38, :cond_2e1

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 334
    :cond_2e1
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 335
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 336
    add-int/lit8 v8, v8, -0x1

    goto :goto_2ad

    .line 339
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_2fa
    const/16 v30, 0x1

    .line 340
    goto/16 :goto_157

    .line 345
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_2fe
    const/16 v31, 0x0

    goto/16 :goto_1cd

    .line 362
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_302
    const/4 v15, 0x0

    goto/16 :goto_255

    .line 368
    .restart local v15    # "extraPixels":I
    :cond_305
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 369
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 370
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_33e

    .line 372
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 373
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 374
    if-nez v20, :cond_33a

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_33a

    .line 377
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 379
    :cond_33a
    const/16 v30, 0x1

    goto/16 :goto_26c

    .line 380
    :cond_33e
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_361

    .line 381
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 382
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 383
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 384
    const/16 v30, 0x1

    goto/16 :goto_26c

    .line 389
    :cond_361
    if-eqz v20, :cond_36b

    .line 390
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 392
    :cond_36b
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_26c

    .line 393
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_26c

    .line 398
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_37d
    const/4 v8, 0x0

    .line 402
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_37e
    if-eqz v30, :cond_3c1

    .line 403
    const/16 v20, 0x0

    :goto_382
    move/from16 v0, v20

    if-ge v0, v12, :cond_3c1

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 405
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 407
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_39f

    .line 403
    :goto_39c
    add-int/lit8 v20, v20, 0x1

    goto :goto_382

    .line 409
    :cond_39f
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 410
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_39c

    .line 415
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_3c1
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_3cb

    .line 416
    move/from16 v19, v25

    .line 419
    :cond_3cb
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    goto/16 :goto_4b
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 642
    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dismissPopupMenus()V
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 750
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 752
    :cond_9
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 615
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 617
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 618
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 623
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 628
    if-eqz p1, :cond_1c

    .line 629
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_16

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    .line 632
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_d
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_15

    .line 633
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 637
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_15
    :goto_15
    return-object v0

    .line 629
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 637
    :cond_1c
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_15
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .prologue
    .line 647
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 648
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 649
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 680
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_40

    .line 681
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 682
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 683
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 684
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 685
    iget-object v1, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 686
    iget-object v2, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_43

    iget-object v1, p0, mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_2f
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 688
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 689
    iget-object v1, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 692
    .end local v0    # "context":Landroid/content/Context;
    :cond_40
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 686
    .restart local v0    # "context":Landroid/content/Context;
    :cond_43
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    goto :goto_2f
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 599
    invoke-virtual {p0}, getMenu()Landroid/view/Menu;

    .line 600
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .prologue
    .line 759
    if-eqz p1, :cond_6

    sget-boolean v3, mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_8

    .line 760
    :cond_6
    const/4 v2, 0x0

    .line 771
    :cond_7
    :goto_7
    return v2

    .line 762
    :cond_8
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 765
    .local v2, "result":Z
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_24

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_24

    .line 766
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 768
    :cond_24
    if-lez p1, :cond_7

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_7

    .line 769
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_7
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 668
    iput-object p1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 669
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x0

    .line 654
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_b

    .line 655
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 657
    :cond_b
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverflowReserved()Z
    .registers 2

    .prologue
    .line 605
    iget-boolean v0, p0, mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1f

    .line 149
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 151
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 152
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 153
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 156
    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 578
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 579
    invoke-virtual {p0}, dismissPopupMenus()V

    .line 580
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 38
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    .line 473
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 574
    :cond_b
    :goto_b
    return-void

    .line 477
    :cond_c
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v6

    .line 478
    .local v6, "childCount":I
    sub-int v30, p5, p3

    div-int/lit8 v15, v30, 0x2

    .line 479
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, getDividerWidth()I

    move-result v7

    .line 480
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 481
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 482
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 483
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 484
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 485
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v11

    .line 486
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_32
    if-ge v10, v6, :cond_c6

    .line 487
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 488
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_49

    .line 486
    :goto_46
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    .line 492
    :cond_49
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/ActionMenuView$LayoutParams;

    .line 493
    .local v19, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a1

    .line 494
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_65

    .line 496
    add-int v18, v18, v7

    .line 499
    :cond_65
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 502
    .local v9, "height":I
    if-eqz v11, :cond_8c

    .line 503
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 504
    .local v12, "l":I
    add-int v20, v12, v18

    .line 509
    .local v20, "r":I
    :goto_79
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 510
    .local v26, "t":I
    add-int v5, v26, v9

    .line 511
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 513
    sub-int v29, v29, v18

    .line 514
    const/4 v8, 0x1

    .line 515
    goto :goto_46

    .line 506
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_8c
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 507
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_79

    .line 516
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_a1
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 517
    .local v21, "size":I
    add-int v17, v17, v21

    .line 518
    sub-int v29, v29, v21

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_c3

    .line 520
    add-int v17, v17, v7

    .line 522
    :cond_c3
    add-int/lit8 v16, v16, 0x1

    goto :goto_46

    .line 526
    .end local v19    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_c6
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_fd

    if-nez v8, :cond_fd

    .line 528
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 529
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 530
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 531
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 532
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 533
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 534
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    .line 538
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_fd
    if-eqz v8, :cond_141

    const/16 v30, 0x0

    :goto_101
    sub-int v22, v16, v30

    .line 539
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_144

    div-int v30, v29, v22

    :goto_109
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 541
    .local v23, "spacerSize":I
    if-eqz v11, :cond_175

    .line 542
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 543
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_11e
    if-ge v10, v6, :cond_b

    .line 544
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 545
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 546
    .local v13, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_13e

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_147

    .line 543
    :cond_13e
    :goto_13e
    add-int/lit8 v10, v10, 0x1

    goto :goto_11e

    .line 538
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_141
    const/16 v30, 0x1

    goto :goto_101

    .line 539
    .restart local v22    # "spacerCount":I
    :cond_144
    const/16 v30, 0x0

    goto :goto_109

    .line 550
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_147
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 551
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 552
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 553
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 554
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 555
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_13e

    .line 558
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_175
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v24

    .line 559
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_17a
    if-ge v10, v6, :cond_b

    .line 560
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 561
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 562
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_19a

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19d

    .line 559
    :cond_19a
    :goto_19a
    add-int/lit8 v10, v10, 0x1

    goto :goto_17a

    .line 566
    :cond_19d
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 567
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 568
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 569
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 570
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 571
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_19a
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 165
    iget-boolean v4, p0, mFormatItems:Z

    .line 166
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_3a

    move v6, v7

    :goto_d
    iput-boolean v6, p0, mFormatItems:Z

    .line 168
    iget-boolean v6, p0, mFormatItems:Z

    if-eq v4, v6, :cond_15

    .line 169
    iput v8, p0, mFormatItemsWidth:I

    .line 174
    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 175
    .local v5, "widthSize":I
    iget-boolean v6, p0, mFormatItems:Z

    if-eqz v6, :cond_2c

    iget-object v6, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_2c

    iget v6, p0, mFormatItemsWidth:I

    if-eq v5, v6, :cond_2c

    .line 176
    iput v5, p0, mFormatItemsWidth:I

    .line 177
    iget-object v6, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 180
    :cond_2c
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 181
    .local v1, "childCount":I
    iget-boolean v6, p0, mFormatItems:Z

    if-eqz v6, :cond_3c

    if-lez v1, :cond_3c

    .line 182
    invoke-direct {p0, p1, p2}, onMeasureExactFormat(II)V

    .line 197
    :goto_39
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_3a
    move v6, v8

    .line 166
    goto :goto_d

    .line 185
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v1, :cond_5f

    .line 186
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 188
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 190
    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v6, :cond_55

    iget-boolean v6, v3, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_5c

    .line 191
    :cond_55
    iget v6, p0, mOriginalStartPadding:I

    iget v7, p0, mOriginalEndPadding:I

    invoke-virtual {v0, v6, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 195
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_5f
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_39
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3
    .param p1, "exclusive"    # Z

    .prologue
    .line 781
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 782
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 700
    iput-object p1, p0, mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 701
    iput-object p2, p0, mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 702
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 159
    iput-object p1, p0, mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 160
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 588
    invoke-virtual {p0}, getMenu()Landroid/view/Menu;

    .line 589
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 590
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 610
    iput-boolean p1, p0, mReserveOverflow:Z

    .line 611
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 116
    iget v0, p0, mPopupTheme:I

    if-eq v0, p1, :cond_c

    .line 117
    iput p1, p0, mPopupTheme:I

    .line 118
    if-nez p1, :cond_d

    .line 119
    iget-object v0, p0, mContext:Landroid/content/Context;

    iput-object v0, p0, mPopupContext:Landroid/content/Context;

    .line 124
    :cond_c
    :goto_c
    return-void

    .line 121
    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, mPopupContext:Landroid/content/Context;

    goto :goto_c
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .registers 3
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 140
    iput-object p1, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 141
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 142
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
