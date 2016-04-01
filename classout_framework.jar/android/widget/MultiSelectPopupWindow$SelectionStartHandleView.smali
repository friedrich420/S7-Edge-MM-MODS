.class Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;
.super Landroid/widget/MultiSelectPopupWindow$HandleView;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1403
    iput-object p1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1404
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1405
    const/4 v0, 0x1

    iput v0, p0, mHandleType:I

    .line 1406
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 5

    .prologue
    .line 1506
    iget-object v2, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    .line 1507
    .local v1, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    iget-object v2, p0, mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 1509
    .local v0, "iconSize":I
    iget v2, p0, mPositionX:I

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-gez v2, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1470
    iget-boolean v0, p0, mbSwitchCursor:Z

    .line 1472
    .local v0, "bSwitchCursor":Z
    iput-boolean v3, p0, mbSwitchCursor:Z

    .line 1473
    invoke-direct {p0}, isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1474
    iput-boolean v2, p0, mbSwitchCursor:Z

    .line 1477
    :cond_e
    iget-boolean v4, p0, mbSwitchCursor:Z

    if-eq v0, v4, :cond_3d

    .line 1478
    invoke-virtual {p0}, updateDrawable()V

    .line 1479
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1480
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, mPositionX:I

    .line 1481
    iget v3, p0, mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, mPositionX:I

    .line 1484
    .end local v1    # "layout":Landroid/text/Layout;
    :goto_3c
    return v2

    :cond_3d
    move v2, v3

    goto :goto_3c
.end method

.method public getCurrentCursorOffset()I
    .registers 4

    .prologue
    .line 1419
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1420
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_11

    .line 1421
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_11
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1410
    if-eqz p2, :cond_9

    .line 1411
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 1413
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_8
.end method

.method protected positionAtCursorOffset(IZZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    .line 1455
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1456
    invoke-virtual {p0}, calculateForSwitchingCursor()Z

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, mPositionHasChanged:Z

    .line 1458
    invoke-virtual {p0}, invalidate()V

    .line 1459
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 1462
    invoke-direct {p0}, isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, mbSwitchCursor:Z

    if-nez v0, :cond_13

    .line 1463
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1464
    const/4 v0, 0x1

    .line 1466
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected updateDrawable()V
    .registers 5

    .prologue
    .line 1488
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v1

    .line 1489
    .local v1, "offset":I
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1490
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1492
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, mbSwitchCursor:Z

    if-eqz v3, :cond_19

    .line 1493
    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 1496
    :cond_19
    :goto_19
    if-eqz v0, :cond_34

    iget-object v3, p0, mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_1d
    iput-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1497
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, mHotspotX:I

    .line 1499
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_31

    .line 1500
    invoke-virtual {p0}, recalHandleView()V

    .line 1501
    invoke-virtual {p0}, invalidate()V

    .line 1503
    :cond_31
    return-void

    .line 1493
    :cond_32
    const/4 v0, 0x0

    goto :goto_19

    .line 1496
    :cond_34
    iget-object v3, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_1d
.end method

.method public updatePosition(FF)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 1441
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1442
    .local v0, "offset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1444
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1445
    .local v1, "selectionEnd":I
    if-ne v0, v1, :cond_18

    .line 1452
    :goto_17
    return-void

    .line 1448
    :cond_18
    iget v3, p0, mStartRange:I

    if-ge v0, v3, :cond_1e

    .line 1449
    iget v0, p0, mStartRange:I

    .line 1451
    :cond_1e
    invoke-virtual {p0, v0, v4, v4}, positionAtCursorOffset(IZZ)V

    goto :goto_17
.end method

.method public updateSelection(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 1429
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1430
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_12

    .line 1431
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :goto_11
    return-void

    :cond_12
    move-object v1, v0

    .line 1435
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1436
    invoke-virtual {p0}, updateDrawable()V

    goto :goto_11
.end method
