.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
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
    .registers 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 4908
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    .line 4909
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4895
    iput-boolean v1, p0, mInWord:Z

    .line 4901
    iput-boolean v1, p0, mLanguageDirectionChanged:Z

    .line 4906
    new-array v1, v2, [I

    iput-object v1, p0, mTextViewLocation:[I

    .line 4910
    iput v2, p0, mHandleType:I

    .line 4911
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4913
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, mTextViewEdgeSlop:F

    .line 4914
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 7

    .prologue
    .line 5170
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5171
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v4}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v3

    .line 5172
    .local v3, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v4, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 5174
    .local v2, "iconSize":I
    const/4 v1, 0x0

    .line 5175
    .local v1, "horizontalOffset":I
    iget-boolean v4, p0, mbSwitchCursor:Z

    invoke-virtual {p0, v4}, getHorizontalGravity(Z)I

    move-result v4

    packed-switch v4, :pswitch_data_42

    .line 5184
    :goto_22
    :pswitch_22
    iget v4, p0, mPositionX:I

    invoke-virtual {v3}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, mHotspotX:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v4, v5, :cond_3f

    const/4 v4, 0x1

    :goto_33
    return v4

    .line 5177
    :pswitch_34
    const/4 v1, 0x0

    .line 5178
    goto :goto_22

    .line 5180
    :pswitch_36
    invoke-virtual {p0}, getPreferredWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v1, v4, v5

    goto :goto_22

    .line 5184
    :cond_3f
    const/4 v4, 0x0

    goto :goto_33

    .line 5175
    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_34
        :pswitch_22
        :pswitch_36
    .end packed-switch
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 5093
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5094
    .local v0, "selectionStart":I
    if-gt p1, v0, :cond_1e

    .line 5096
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 5097
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    const/4 v2, 0x1

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 5101
    :cond_1b
    const/4 v1, 0x0

    iput v1, p0, mTouchWordDelta:F

    .line 5103
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, positionAtCursorOffset(IZ)V

    .line 5104
    :goto_22
    return-void

    .line 5099
    :cond_23
    if-ne p1, v0, :cond_1b

    goto :goto_22
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5156
    iget-object v4, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, mTextViewLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5158
    if-eqz p2, :cond_2a

    .line 5159
    iget-object v4, p0, mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v0, v4, v5

    .line 5160
    .local v0, "leftEdge":I
    int-to-float v4, v0

    iget v5, p0, mTextViewEdgeSlop:F

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_28

    .line 5166
    .end local v0    # "leftEdge":I
    .local v1, "nearEdge":Z
    :goto_27
    return v1

    .end local v1    # "nearEdge":Z
    .restart local v0    # "leftEdge":I
    :cond_28
    move v1, v3

    .line 5160
    goto :goto_27

    .line 5162
    .end local v0    # "leftEdge":I
    :cond_2a
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

    .line 5164
    .local v2, "rightEdge":I
    int-to-float v4, v2

    iget v5, p0, mTextViewEdgeSlop:F

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4e

    .restart local v1    # "nearEdge":Z
    :goto_4d
    goto :goto_27

    .end local v1    # "nearEdge":Z
    :cond_4e
    move v1, v3

    goto :goto_4d
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5125
    iget-boolean v0, p0, mbSwitchCursor:Z

    .line 5127
    .local v0, "bSwitchCursor":Z
    invoke-direct {p0}, isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 5128
    iput-boolean v2, p0, mbSwitchCursor:Z

    .line 5133
    :goto_c
    iget-boolean v4, p0, mbSwitchCursor:Z

    if-eq v0, v4, :cond_48

    .line 5134
    invoke-virtual {p0}, updateDrawable()V

    .line 5135
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5136
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

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, mPositionX:I

    .line 5137
    iget v3, p0, mPositionX:I

    iget-object v4, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, mPositionX:I

    .line 5140
    .end local v1    # "layout":Landroid/text/Layout;
    :goto_44
    return v2

    .line 5130
    :cond_45
    iput-boolean v3, p0, mbSwitchCursor:Z

    goto :goto_c

    :cond_48
    move v2, v3

    .line 5140
    goto :goto_44
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 4932
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4927
    if-eqz p1, :cond_4

    const/4 v0, 0x5

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x3

    goto :goto_3
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4918
    if-eqz p2, :cond_b

    .line 4919
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 4921
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5145
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5146
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_11

    .line 5149
    const/4 v1, 0x0

    iput v1, p0, mTouchWordDelta:F

    .line 5150
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, mPrevX:F

    .line 5152
    :cond_11
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 5112
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5113
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

    .line 5114
    return-void

    .line 5113
    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 5117
    invoke-virtual {p0}, calculateForSwitchingCursor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5118
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5119
    const/4 v0, 0x1

    .line 5121
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
    .line 4947
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4948
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_2c

    .line 4951
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

    .line 5090
    :goto_2b
    return-void

    .line 4955
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_52

    .line 4956
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

    .line 4959
    :cond_52
    const/4 v15, 0x0

    .line 4960
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    .line 4961
    .local v18, "selectionStart":I
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

    .line 4962
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

    .line 4964
    .local v8, "initialOffset":I
    move/from16 v0, v18

    if-gt v8, v0, :cond_af

    .line 4967
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v22

    if-eqz v22, :cond_117

    .line 4968
    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4969
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

    .line 4976
    :cond_af
    :goto_af
    move v13, v8

    .line 4977
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;I)I

    move-result v7

    .line 4978
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v19

    .line 4980
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_da

    .line 4981
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mPrevX:F

    .line 4984
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4985
    .local v16, "selectionEnd":I
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v17

    .line 4986
    .local v17, "selectionEndRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4987
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4993
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_100

    if-eqz v17, :cond_fc

    if-eqz v5, :cond_100

    :cond_fc
    if-nez v17, :cond_130

    if-eqz v5, :cond_130

    .line 4996
    :cond_100
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLanguageDirectionChanged:Z

    .line 4997
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 4998
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_2b

    .line 4971
    .end local v5    # "atRtl":Z
    .end local v7    # "end":I
    .end local v10    # "isLvlBoundary":Z
    .end local v13    # "offset":I
    .end local v16    # "selectionEnd":I
    .end local v17    # "selectionEndRtl":Z
    .end local v19    # "start":I
    :cond_117
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4972
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

    .line 5000
    .restart local v5    # "atRtl":Z
    .restart local v7    # "end":I
    .restart local v10    # "isLvlBoundary":Z
    .restart local v13    # "offset":I
    .restart local v16    # "selectionEnd":I
    .restart local v17    # "selectionEndRtl":Z
    .restart local v19    # "start":I
    :cond_130
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_151

    if-nez v10, :cond_151

    .line 5003
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, positionAndAdjustForCrossingHandles(I)V

    .line 5004
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 5005
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLanguageDirectionChanged:Z

    goto/16 :goto_2b

    .line 5008
    :cond_151
    move-object/from16 v0, p0

    iget v0, v0, mPrevX:F

    move/from16 v22, v0

    sub-float v21, p1, v22

    .line 5009
    .local v21, "xDiff":F
    if-eqz v5, :cond_1c5

    .line 5010
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-ltz v22, :cond_16b

    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1c3

    :cond_16b
    const/4 v9, 0x1

    .line 5016
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

    if-eqz v22, :cond_1e9

    .line 5017
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_1e9

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    if-eqz v5, :cond_1d9

    const/16 v22, -0x1

    :goto_194
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v22

    if-eqz v22, :cond_1e9

    if-eqz v9, :cond_1a4

    move/from16 v0, v16

    if-gt v13, v0, :cond_1a6

    :cond_1a4
    if-nez v9, :cond_1e9

    .line 5023
    :cond_1a6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 5024
    if-eqz v5, :cond_1dc

    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    .line 5026
    .local v12, "nextOffset":I
    :goto_1bc
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_2b

    .line 5010
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    :cond_1c3
    const/4 v9, 0x0

    goto :goto_16c

    .line 5012
    :cond_1c5
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-gtz v22, :cond_1d5

    move-object/from16 v0, p0

    iget v0, v0, mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_1d7

    :cond_1d5
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    :goto_1d6
    goto :goto_16c

    .end local v9    # "isExpanding":Z
    :cond_1d7
    const/4 v9, 0x0

    goto :goto_1d6

    .line 5017
    .restart local v9    # "isExpanding":Z
    :cond_1d9
    const/16 v22, 0x1

    goto :goto_194

    .line 5024
    :cond_1dc
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    goto :goto_1bc

    .line 5031
    :cond_1e9
    if-eqz v9, :cond_262

    .line 5033
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInWord:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1fd

    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_220

    .line 5037
    :cond_1fd
    move/from16 v20, v7

    .line 5038
    .local v20, "wordEndOnCurrLine":I
    if-eqz v11, :cond_20d

    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_20d

    .line 5039
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    .line 5041
    :cond_20d
    sub-int v22, v20, v19

    div-int/lit8 v22, v22, 0x2

    add-int v14, v19, v22

    .line 5042
    .local v14, "offsetThresholdToSnap":I
    if-ge v13, v14, :cond_21f

    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_254

    .line 5045
    :cond_21f
    move v13, v7

    .line 5050
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_220
    :goto_220
    if-le v13, v8, :cond_259

    .line 5051
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 5052
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

    sub-float v22, v4, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 5057
    .end local v4    # "adjustedX":F
    :goto_240
    const/4 v15, 0x1

    .line 5085
    :cond_241
    :goto_241
    if-eqz v15, :cond_24c

    .line 5086
    move-object/from16 v0, p0

    iput v6, v0, mPreviousLineTouched:I

    .line 5087
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, positionAndAdjustForCrossingHandles(I)V

    .line 5089
    :cond_24c
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mPrevX:F

    goto/16 :goto_2b

    .line 5047
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordEndOnCurrLine":I
    :cond_254
    move-object/from16 v0, p0

    iget v13, v0, mPreviousOffset:I

    goto :goto_220

    .line 5055
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_259
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    goto :goto_240

    .line 5059
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, mTouchWordDelta:F

    move/from16 v23, v0

    add-float v23, v23, p1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 5061
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v3, v0, :cond_290

    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_2c8

    .line 5063
    :cond_290
    move-object/from16 v0, p0

    iget v0, v0, mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_2c6

    .line 5065
    move v13, v7

    .line 5066
    if-le v13, v8, :cond_2bd

    .line 5067
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 5068
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

    sub-float v22, v4, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    .line 5076
    .end local v4    # "adjustedX":F
    :goto_2bb
    const/4 v15, 0x1

    goto :goto_241

    .line 5071
    :cond_2bd
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    goto :goto_2bb

    .line 5074
    :cond_2c6
    move v13, v3

    goto :goto_2bb

    .line 5077
    :cond_2c8
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v3, v0, :cond_241

    .line 5080
    move-object/from16 v0, p0

    iget v0, v0, mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchWordDelta:F

    goto/16 :goto_241
.end method

.method public updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 4937
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

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4939
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_26

    .line 4940
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4942
    :cond_26
    invoke-virtual {p0}, updateDrawable()V

    .line 4943
    return-void
.end method
