.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mHaveExtraPadding:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1442
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1446
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1447
    invoke-virtual {p0}, getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1448
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_e

    .line 1450
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1452
    :cond_e
    return-void
.end method

.method private updateUpIndicator()V
    .registers 4

    .prologue
    .line 1492
    iget-object v0, p0, mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1493
    iget-object v0, p0, mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    :goto_b
    return-void

    .line 1494
    :cond_c
    iget v0, p0, mUpIndicatorRes:I

    if-eqz v0, :cond_20

    .line 1495
    iget-object v0, p0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 1497
    :cond_20
    iget-object v0, p0, mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1528
    invoke-virtual {p0, p1}, onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1512
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1513
    const/4 v0, 0x1

    return v0
.end method

.method getShowIcon()Z
    .registers 3

    .prologue
    .line 1467
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method getShowUp()Z
    .registers 3

    .prologue
    .line 1459
    iget-object v0, p0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getStartOffset()I
    .registers 3

    .prologue
    .line 1539
    iget-object v0, p0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget v0, p0, mStartOffset:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getUpWidth()I
    .registers 2

    .prologue
    .line 1543
    iget v0, p0, mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1503
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1504
    iget v0, p0, mUpIndicatorRes:I

    if-eqz v0, :cond_a

    .line 1506
    invoke-direct {p0}, updateUpIndicator()V

    .line 1508
    :cond_a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 1533
    const v0, 0x1020047

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mUpView:Landroid/widget/ImageView;

    .line 1534
    const v0, 0x102002c

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mIconView:Landroid/widget/ImageView;

    .line 1535
    iget-object v0, p0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1536
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 33
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1613
    sub-int v25, p5, p3

    div-int/lit8 v23, v25, 0x2

    .line 1614
    .local v23, "vCenter":I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v13

    .line 1615
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v24

    .line 1616
    .local v24, "width":I
    const/16 v19, 0x0

    .line 1617
    .local v19, "upOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6f

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 1619
    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    .line 1620
    .local v16, "upHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v22

    .line 1621
    .local v22, "upWidth":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 1622
    div-int/lit8 v25, v16, 0x2

    sub-int v21, v23, v25

    .line 1623
    .local v21, "upTop":I
    add-int v15, v21, v16

    .line 1626
    .local v15, "upBottom":I
    if-eqz v13, :cond_c3

    .line 1627
    move/from16 v20, v24

    .line 1628
    .local v20, "upRight":I
    sub-int v17, v20, v22

    .line 1629
    .local v17, "upLeft":I
    sub-int p4, p4, v19

    .line 1635
    :goto_5e
    move-object/from16 v0, p0

    iget-object v0, v0, mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1638
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1639
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 1640
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 1641
    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    div-int/lit8 v5, v25, 0x2

    .line 1642
    .local v5, "hCenter":I
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    div-int/lit8 v26, v7, 0x2

    sub-int v26, v23, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1643
    .local v11, "iconTop":I
    add-int v6, v11, v7

    .line 1646
    .local v6, "iconBottom":I
    invoke-virtual {v9}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v14

    .line 1647
    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    sub-int v25, v5, v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1648
    .local v4, "delta":I
    if-eqz v13, :cond_ca

    .line 1649
    sub-int v25, v24, v19

    sub-int v10, v25, v4

    .line 1650
    .local v10, "iconRight":I
    sub-int v8, v10, v12

    .line 1655
    .local v8, "iconLeft":I
    :goto_b7
    move-object/from16 v0, p0

    iget-object v0, v0, mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1656
    return-void

    .line 1631
    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_c3
    move/from16 v20, v22

    .line 1632
    .restart local v20    # "upRight":I
    const/16 v17, 0x0

    .line 1633
    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    goto :goto_5e

    .line 1652
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_ca
    add-int v8, v19, v4

    .line 1653
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_b7
.end method

.method protected onMeasure(II)V
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, mUpView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v1, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_eb

    const/4 v13, 0x1

    .line 1550
    .local v13, "showUp":Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v1, v0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_ee

    const/4 v12, 0x1

    .line 1552
    .local v12, "showIcon":Z
    :goto_29
    move-object/from16 v0, p0

    iget-boolean v1, v0, mHaveExtraPadding:Z

    if-eqz v1, :cond_5a

    .line 1553
    const/high16 v1, 0x42900000    # 72.0f

    # getter for: Lcom/android/internal/widget/ActionBarView;->mDensity:F
    invoke-static {}, Lcom/android/internal/widget/ActionBarView;->access$500()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v11, v1, v2

    .line 1554
    .local v11, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1555
    .local v14, "temp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1556
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1560
    :goto_53
    move-object/from16 v0, p0

    iget-object v1, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1563
    .end local v11    # "padding":I
    .end local v14    # "temp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v1, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 1564
    .local v15, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v16, v1, v2

    .line 1565
    .local v16, "upMargins":I
    sget-boolean v1, Lcom/android/internal/widget/AbsActionBarView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_f5

    if-nez v13, :cond_f5

    # getter for: Lcom/android/internal/widget/ActionBarView;->mContentInsetStart:I
    invoke-static {}, Lcom/android/internal/widget/ActionBarView;->access$600()I

    move-result v1

    :goto_74
    move-object/from16 v0, p0

    iput v1, v0, mUpWidth:I

    .line 1566
    move-object/from16 v0, p0

    iget v1, v0, mUpWidth:I

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iput v1, v0, mStartOffset:I

    .line 1567
    if-nez v13, :cond_ff

    const/4 v4, 0x0

    .line 1568
    .local v4, "width":I
    :goto_85
    iget v1, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v1, v2

    .line 1570
    .local v7, "height":I
    if-eqz v12, :cond_104

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, mIconView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v1, v0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1573
    .local v10, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v4, v1

    .line 1574
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1581
    .end local v10    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_cf
    :goto_cf
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1582
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1583
    .local v8, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1584
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1586
    .local v9, "heightSize":I
    sparse-switch v17, :sswitch_data_11a

    .line 1597
    :goto_e2
    sparse-switch v8, :sswitch_data_124

    .line 1608
    :goto_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, setMeasuredDimension(II)V

    .line 1609
    return-void

    .line 1549
    .end local v4    # "width":I
    .end local v7    # "height":I
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v12    # "showIcon":Z
    .end local v13    # "showUp":Z
    .end local v15    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "upMargins":I
    .end local v17    # "widthMode":I
    .end local v18    # "widthSize":I
    :cond_eb
    const/4 v13, 0x0

    goto/16 :goto_1c

    .line 1550
    .restart local v13    # "showUp":Z
    :cond_ee
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 1558
    .restart local v11    # "padding":I
    .restart local v12    # "showIcon":Z
    .restart local v14    # "temp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f1
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_53

    .line 1565
    .end local v11    # "padding":I
    .end local v14    # "temp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "upMargins":I
    :cond_f5
    move-object/from16 v0, p0

    iget-object v1, v0, mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    goto/16 :goto_74

    .line 1567
    :cond_ff
    move-object/from16 v0, p0

    iget v4, v0, mStartOffset:I

    goto :goto_85

    .line 1576
    .restart local v4    # "width":I
    .restart local v7    # "height":I
    :cond_104
    if-gez v16, :cond_cf

    .line 1578
    sub-int v4, v4, v16

    goto :goto_cf

    .line 1588
    .restart local v8    # "heightMode":I
    .restart local v9    # "heightSize":I
    .restart local v17    # "widthMode":I
    .restart local v18    # "widthSize":I
    :sswitch_109
    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1589
    goto :goto_e2

    .line 1591
    :sswitch_110
    move/from16 v4, v18

    .line 1592
    goto :goto_e2

    .line 1599
    :sswitch_113
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1600
    goto :goto_e5

    .line 1602
    :sswitch_118
    move v7, v9

    .line 1603
    goto :goto_e5

    .line 1586
    :sswitch_data_11a
    .sparse-switch
        -0x80000000 -> :sswitch_109
        0x40000000 -> :sswitch_110
    .end sparse-switch

    .line 1597
    :sswitch_data_124
    .sparse-switch
        -0x80000000 -> :sswitch_113
        0x40000000 -> :sswitch_118
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1518
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1519
    invoke-virtual {p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1520
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1521
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_14
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1481
    iput-object p1, p0, mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1482
    invoke-direct {p0}, updateUpIndicator()V

    .line 1483
    return-void
.end method

.method setExtraUpPadding(Z)V
    .registers 2
    .param p1, "havePadding"    # Z

    .prologue
    .line 1659
    iput-boolean p1, p0, mHaveExtraPadding:Z

    .line 1660
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1471
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1472
    return-void
.end method

.method public setShowIcon(Z)V
    .registers 4
    .param p1, "showIcon"    # Z

    .prologue
    .line 1463
    iget-object v1, p0, mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1464
    return-void

    .line 1463
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setShowUp(Z)V
    .registers 4
    .param p1, "isUp"    # Z

    .prologue
    .line 1455
    iget-object v1, p0, mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1456
    return-void

    .line 1455
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setUpIndicator(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1486
    iput p1, p0, mUpIndicatorRes:I

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1488
    invoke-direct {p0}, updateUpIndicator()V

    .line 1489
    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1475
    iput-object p1, p0, mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1476
    const/4 v0, 0x0

    iput v0, p0, mUpIndicatorRes:I

    .line 1477
    invoke-direct {p0}, updateUpIndicator()V

    .line 1478
    return-void
.end method
