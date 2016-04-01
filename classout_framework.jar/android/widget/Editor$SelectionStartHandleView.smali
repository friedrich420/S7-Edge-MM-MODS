.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4620
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    .line 4621
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4607
    iput-boolean v1, p0, mInWord:Z

    .line 4613
    iput-boolean v1, p0, mLanguageDirectionChanged:Z

    .line 4618
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, mTextViewLocation:[I

    .line 4622
    const/4 v1, 0x1

    iput v1, p0, mHandleType:I

    .line 4623
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4625
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, mTextViewEdgeSlop:F

    .line 4626
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 5

    .prologue
    .line 4886
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    .line 4887
    .local v1, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v2, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 4889
    .local v0, "iconSize":I
    iget v2, p0, mPositionX:I

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_22

    const/4 v2, 0x1

    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 4805
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4806
    .local v0, "selectionEnd":I
    if-lt p1, v0, :cond_1e

    .line 4808
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 4809
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4813
    :cond_1b
    const/4 v1, 0x0

    iput v1, p0, mTouchWordDelta:F

    .line 4815
    :cond_1e
    invoke-virtual {p0, p1, v2}, positionAtCursorOffset(IZ)V

    .line 4816
    :goto_21
    return-void

    .line 4811
    :cond_22
    if-ne p1, v0, :cond_1b

    goto :goto_21
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4872
    iget-object v4, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, mTextViewLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4874
    if-eqz p2, :cond_35

    .line 4875
    iget-object v4, p0, mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 4877
    .local v2, "rightEdge":I
    int-to-float v4, v2

    iget v5, p0, mTextViewEdgeSlop:F

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_33

    .line 4882
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_32
    return v1

    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_33
    move v1, v3

    .line 4877
    goto :goto_32

    .line 4879
    .end local v2    # "rightEdge":I
    :cond_35
    iget-object v4, p0, mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v0, v4, v5

    .line 4880
    .local v0, "leftEdge":I
    int-to-float v4, v0

    iget v5, p0, mTextViewEdgeSlop:F

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4e

    .restart local v1    # "nearEdge":Z
    :goto_4d
    goto :goto_32

    .end local v1    # "nearEdge":Z
    :cond_4e
    move v1, v3

    goto :goto_4d
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4837
    iget-boolean v0, p0, mbSwitchCursor:Z

    .line 4839
    .local v0, "bSwitchCursor":Z
    iput-boolean v5, p0, mbSwitchCursor:Z

    .line 4841
    invoke-direct {p0}, isHandleViewScreenOut()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4842
    iput-boolean v4, p0, mbSwitchCursor:Z

    .line 4845
    :cond_e
    iget-boolean v6, p0, mbSwitchCursor:Z

    if-eq v0, v6, :cond_59

    .line 4846
    invoke-virtual {p0}, updateDrawable()V

    .line 4847
    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4848
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4849
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_56

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4851
    .local v1, "compensation":F
    :goto_30
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    sub-float/2addr v5, v1

    iget v6, p0, mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, mPositionX:I

    .line 4852
    iget v5, p0, mPositionX:I

    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, mPositionX:I

    .line 4856
    .end local v1    # "compensation":F
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :goto_55
    return v4

    .line 4849
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    :cond_56
    const/high16 v1, -0x41000000    # -0.5f

    goto :goto_30

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_59
    move v4, v5

    .line 4856
    goto :goto_55
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 4644
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4639
    if-eqz p1, :cond_4

    const/4 v0, 0x3

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x5

    goto :goto_3
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4630
    if-eqz p2, :cond_9

    .line 4631
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4633
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4861
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4862
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_11

    .line 4865
    const/4 v1, 0x0

    iput v1, p0, mTouchWordDelta:F

    .line 4866
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, mPrevX:F

    .line 4868
    :cond_11
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4824
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4825
    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;
    invoke-static {v0}, Landroid/widget/Editor;->access$5000(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, mInWord:Z

    .line 4826
    return-void

    .line 4825
    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 4829
    invoke-virtual {p0}, calculateForSwitchingCursor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4830
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 4831
    const/4 v0, 0x1

    .line 4833
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public updatePosition(FF)V
    .registers 27
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4659
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4660
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_2c

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, positionAndAdjustForCrossingHandles(I)V

    .line 4802
    :goto_2b
    return-void

    .line 4667
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_52

    .line 4668
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mPreviousLineTouched:I

    .line 4671
    :cond_52
    const/4 v15, 0x0

    .line 4672
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4673
    .local v16, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4674
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4676
    .local v8, "initialOffset":I
    move/from16 v0, v16

    if-lt v8, v0, :cond_af

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v22

    if-eqz v22, :cond_117

    .line 4680
    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4681
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4688
    :cond_af
    :goto_af
    move v13, v8

    .line 4689
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;I)I

    move-result v7

    .line 4690
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v19

    .line 4692
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_da

    .line 4693
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mPrevX:F

    .line 4696
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    .line 4697
    .local v17, "selectionStart":I
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v18

    .line 4698
    .local v18, "selectionStartRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4699
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4705
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_100

    if-eqz v18, :cond_fc

    if-eqz v5, :cond_100

    :cond_fc
    if-nez v18, :cond_130

    if-eqz v5, :cond_130

    .line 4708
    :cond_100
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLanguageDirectionChanged:Z

    .line 4709
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 4710
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_2b

    .line 4683
    .end local v5    # "atRtl":Z
    .end local v7    # "end":I
    .end local v10    # "isLvlBoundary":Z
    .end local v13    # "offset":I
    .end local v17    # "selectionStart":I
    .end local v18    # "selectionStartRtl":Z
    .end local v19    # "start":I
    :cond_117
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4684
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    goto :goto_af

    .line 4712
    .restart local v5    # "atRtl":Z
    .restart local v7    # "end":I
    .restart local v10    # "isLvlBoundary":Z
    .restart local v13    # "offset":I
    .restart local v17    # "selectionStart":I
    .restart local v18    # "selectionStartRtl":Z
    .restart local v19    # "start":I
    :cond_130
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_151

    if-nez v10, :cond_151

    .line 4715
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, positionAndAdjustForCrossingHandles(I)V

    .line 4716
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 4717
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLanguageDirectionChanged:Z

    goto/16 :goto_2b

    .line 4720
    :cond_151
    move-object/from16 v0, p0

    iget v0, v0, mPrevX:F

    move/from16 v22, v0

    sub-float v21, p1, v22

    .line 4721
    .local v21, "xDiff":F
    if-eqz v5, :cond_1bd

    .line 4722
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-gtz v22, :cond_16b

    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_1bb

    :cond_16b
    const/4 v9, 0x1

    .line 4728
    .local v9, "isExpanding":Z
    :goto_16c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v22

    if-eqz v22, :cond_1de

    .line 4729
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    if-eqz v22, :cond_1de

    if-eqz v9, :cond_19c

    move/from16 v0, v17

    if-lt v13, v0, :cond_19e

    :cond_19c
    if-nez v9, :cond_1de

    .line 4735
    :cond_19e
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 4736
    if-eqz v5, :cond_1d1

    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    .line 4738
    .local v12, "nextOffset":I
    :goto_1b4
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_2b

    .line 4722
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    :cond_1bb
    const/4 v9, 0x0

    goto :goto_16c

    .line 4724
    :cond_1bd
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-ltz v22, :cond_1cd

    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1cf

    :cond_1cd
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    :goto_1ce
    goto :goto_16c

    .end local v9    # "isExpanding":Z
    :cond_1cf
    const/4 v9, 0x0

    goto :goto_1ce

    .line 4736
    .restart local v9    # "isExpanding":Z
    :cond_1d1
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    goto :goto_1b4

    .line 4743
    :cond_1de
    if-eqz v9, :cond_25c

    .line 4745
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInWord:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1f2

    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_218

    .line 4749
    :cond_1f2
    move/from16 v20, v19

    .line 4750
    .local v20, "wordStartOnCurrLine":I
    if-eqz v11, :cond_204

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_204

    .line 4751
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 4753
    :cond_204
    sub-int v22, v7, v20

    div-int/lit8 v22, v22, 0x2

    sub-int v14, v7, v22

    .line 4754
    .local v14, "offsetThresholdToSnap":I
    if-le v13, v14, :cond_216

    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_24e

    .line 4757
    :cond_216
    move/from16 v13, v19

    .line 4762
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_218
    :goto_218
    if-eqz v11, :cond_253

    if-ge v13, v8, :cond_253

    .line 4763
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4764
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 4769
    .end local v4    # "adjustedX":F
    :goto_23a
    const/4 v15, 0x1

    .line 4797
    :cond_23b
    :goto_23b
    if-eqz v15, :cond_246

    .line 4798
    move-object/from16 v0, p0

    iput v6, v0, mPreviousLineTouched:I

    .line 4799
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, positionAndAdjustForCrossingHandles(I)V

    .line 4801
    :cond_246
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mPrevX:F

    goto/16 :goto_2b

    .line 4759
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordStartOnCurrLine":I
    :cond_24e
    move-object/from16 v0, p0

    iget v13, v0, mPreviousOffset:I

    goto :goto_218

    .line 4767
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_253
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    goto :goto_23a

    .line 4771
    :cond_25c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, mTouchWordDelta:F

    move/from16 v23, v0

    sub-float v23, p1, v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4773
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v3, v0, :cond_28a

    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_2c5

    .line 4775
    :cond_28a
    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_2c3

    .line 4777
    move/from16 v13, v19

    .line 4778
    if-eqz v11, :cond_2ba

    if-ge v13, v8, :cond_2ba

    .line 4779
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4780
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 4788
    .end local v4    # "adjustedX":F
    :goto_2b8
    const/4 v15, 0x1

    goto :goto_23b

    .line 4783
    :cond_2ba
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    goto :goto_2b8

    .line 4786
    :cond_2c3
    move v13, v3

    goto :goto_2b8

    .line 4789
    :cond_2c5
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_23b

    .line 4792
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    goto/16 :goto_23b
.end method

.method public updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 4649
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4651
    invoke-virtual {p0}, updateDrawable()V

    .line 4652
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_29

    .line 4653
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4655
    :cond_29
    return-void
.end method
