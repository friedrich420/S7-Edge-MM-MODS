.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 3

    .prologue
    .line 3746
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3747
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3748
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mTmpIntOffset:[I

    .line 3749
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3746
    invoke-direct {p0, p1}, <init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .registers 59
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 3754
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    iget-object v0, v11, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v24, v0

    .line 3755
    .local v24, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v24, :cond_10

    move-object/from16 v0, v24

    iget v11, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v11, :cond_11

    .line 3904
    :cond_10
    :goto_10
    return-void

    .line 3758
    :cond_11
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v23

    .line 3759
    .local v23, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v23, :cond_10

    .line 3762
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 3766
    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 3769
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v30

    .line 3770
    .local v30, "layout":Landroid/text/Layout;
    if-eqz v30, :cond_10

    .line 3774
    move-object/from16 v0, p0

    iget-object v4, v0, mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3775
    .local v4, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-virtual {v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 3777
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v43

    .line 3778
    .local v43, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    move/from16 v0, v43

    invoke-virtual {v4, v0, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3781
    move-object/from16 v0, p0

    iget-object v11, v0, mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v51, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v51 .. v51}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3782
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpIntOffset:[I

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 3783
    move-object/from16 v0, p0

    iget-object v11, v0, mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpIntOffset:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget v51, v51, v52

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpIntOffset:[I

    move-object/from16 v52, v0

    const/16 v53, 0x1

    aget v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3784
    move-object/from16 v0, p0

    iget-object v11, v0, mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3786
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v11

    int-to-float v0, v11

    move/from16 v48, v0

    .line 3788
    .local v48, "viewportToContentHorizontalOffset":F
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    int-to-float v0, v11

    move/from16 v49, v0

    .line 3791
    .local v49, "viewportToContentVerticalOffset":F
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 3792
    .local v46, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v46

    instance-of v11, v0, Landroid/text/Spannable;

    if-eqz v11, :cond_201

    move-object/from16 v44, v46

    .line 3793
    check-cast v44, Landroid/text/Spannable;

    .line 3794
    .local v44, "sp":Landroid/text/Spannable;
    invoke-static/range {v44 .. v44}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v21

    .line 3795
    .local v21, "composingTextStart":I
    invoke-static/range {v44 .. v44}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v20

    .line 3796
    .local v20, "composingTextEnd":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_101

    .line 3797
    move/from16 v45, v20

    .line 3798
    .local v45, "temp":I
    move/from16 v20, v21

    .line 3799
    move/from16 v21, v45

    .line 3801
    .end local v45    # "temp":I
    :cond_101
    if-ltz v21, :cond_1e4

    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e4

    const/16 v22, 0x1

    .line 3803
    .local v22, "hasComposingText":Z
    :goto_10b
    if-eqz v22, :cond_201

    .line 3804
    move-object/from16 v0, v46

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 3806
    .local v19, "composingText":Ljava/lang/CharSequence;
    move/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3808
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v37

    .line 3809
    .local v37, "minLine":I
    add-int/lit8 v11, v20, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v36

    .line 3810
    .local v36, "maxLine":I
    move/from16 v32, v37

    .local v32, "line":I
    :goto_130
    move/from16 v0, v32

    move/from16 v1, v36

    if-gt v0, v1, :cond_201

    .line 3811
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v34

    .line 3812
    .local v34, "lineStart":I
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v33

    .line 3813
    .local v33, "lineEnd":I
    move/from16 v0, v34

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 3814
    .local v39, "offsetStart":I
    move/from16 v0, v33

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 3815
    .local v38, "offsetEnd":I
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/16 v51, 0x1

    move/from16 v0, v51

    if-ne v11, v0, :cond_1e8

    const/16 v35, 0x1

    .line 3817
    .local v35, "ltrLine":Z
    :goto_166
    sub-int v11, v38, v39

    new-array v0, v11, [F

    move-object/from16 v50, v0

    .line 3818
    .local v50, "widths":[F
    invoke-virtual/range {v30 .. v30}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    move-object/from16 v0, v46

    move/from16 v1, v39

    move/from16 v2, v38

    move-object/from16 v3, v50

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 3819
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v0, v11

    move/from16 v47, v0

    .line 3820
    .local v47, "top":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v0, v11

    move/from16 v17, v0

    .line 3821
    .local v17, "bottom":F
    move/from16 v5, v39

    .local v5, "offset":I
    :goto_193
    move/from16 v0, v38

    if-ge v5, v0, :cond_1fd

    .line 3822
    sub-int v11, v5, v39

    aget v18, v50, v11

    .line 3823
    .local v18, "charWidth":F
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v27

    .line 3824
    .local v27, "isRtl":Z
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v40

    .line 3825
    .local v40, "primary":F
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v42

    .line 3830
    .local v42, "secondary":F
    if-eqz v35, :cond_1f1

    .line 3831
    if-eqz v27, :cond_1ec

    .line 3832
    sub-float v31, v42, v18

    .line 3833
    .local v31, "left":F
    move/from16 v41, v42

    .line 3848
    .local v41, "right":F
    :goto_1b5
    add-float v6, v31, v48

    .line 3849
    .local v6, "localLeft":F
    add-float v8, v41, v48

    .line 3850
    .local v8, "localRight":F
    add-float v7, v47, v49

    .line 3851
    .local v7, "localTop":F
    add-float v9, v17, v49

    .line 3852
    .local v9, "localBottom":F
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v11, v6, v7}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;FF)Z

    move-result v28

    .line 3853
    .local v28, "isTopLeftVisible":Z
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v11, v8, v9}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;FF)Z

    move-result v25

    .line 3855
    .local v25, "isBottomRightVisible":Z
    const/4 v10, 0x0

    .line 3856
    .local v10, "characterBoundsFlags":I
    if-nez v28, :cond_1d2

    if-eqz v25, :cond_1d4

    .line 3857
    :cond_1d2
    or-int/lit8 v10, v10, 0x1

    .line 3859
    :cond_1d4
    if-eqz v28, :cond_1d8

    if-nez v25, :cond_1da

    .line 3860
    :cond_1d8
    or-int/lit8 v10, v10, 0x2

    .line 3862
    :cond_1da
    if-eqz v27, :cond_1de

    .line 3863
    or-int/lit8 v10, v10, 0x4

    .line 3866
    :cond_1de
    invoke-virtual/range {v4 .. v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3821
    add-int/lit8 v5, v5, 0x1

    goto :goto_193

    .line 3801
    .end local v5    # "offset":I
    .end local v6    # "localLeft":F
    .end local v7    # "localTop":F
    .end local v8    # "localRight":F
    .end local v9    # "localBottom":F
    .end local v10    # "characterBoundsFlags":I
    .end local v17    # "bottom":F
    .end local v18    # "charWidth":F
    .end local v19    # "composingText":Ljava/lang/CharSequence;
    .end local v22    # "hasComposingText":Z
    .end local v25    # "isBottomRightVisible":Z
    .end local v27    # "isRtl":Z
    .end local v28    # "isTopLeftVisible":Z
    .end local v31    # "left":F
    .end local v32    # "line":I
    .end local v33    # "lineEnd":I
    .end local v34    # "lineStart":I
    .end local v35    # "ltrLine":Z
    .end local v36    # "maxLine":I
    .end local v37    # "minLine":I
    .end local v38    # "offsetEnd":I
    .end local v39    # "offsetStart":I
    .end local v40    # "primary":F
    .end local v41    # "right":F
    .end local v42    # "secondary":F
    .end local v47    # "top":F
    .end local v50    # "widths":[F
    :cond_1e4
    const/16 v22, 0x0

    goto/16 :goto_10b

    .line 3815
    .restart local v19    # "composingText":Ljava/lang/CharSequence;
    .restart local v22    # "hasComposingText":Z
    .restart local v32    # "line":I
    .restart local v33    # "lineEnd":I
    .restart local v34    # "lineStart":I
    .restart local v36    # "maxLine":I
    .restart local v37    # "minLine":I
    .restart local v38    # "offsetEnd":I
    .restart local v39    # "offsetStart":I
    :cond_1e8
    const/16 v35, 0x0

    goto/16 :goto_166

    .line 3835
    .restart local v5    # "offset":I
    .restart local v17    # "bottom":F
    .restart local v18    # "charWidth":F
    .restart local v27    # "isRtl":Z
    .restart local v35    # "ltrLine":Z
    .restart local v40    # "primary":F
    .restart local v42    # "secondary":F
    .restart local v47    # "top":F
    .restart local v50    # "widths":[F
    :cond_1ec
    move/from16 v31, v40

    .line 3836
    .restart local v31    # "left":F
    add-float v41, v40, v18

    .restart local v41    # "right":F
    goto :goto_1b5

    .line 3839
    .end local v31    # "left":F
    .end local v41    # "right":F
    :cond_1f1
    if-nez v27, :cond_1f8

    .line 3840
    move/from16 v31, v42

    .line 3841
    .restart local v31    # "left":F
    add-float v41, v42, v18

    .restart local v41    # "right":F
    goto :goto_1b5

    .line 3843
    .end local v31    # "left":F
    .end local v41    # "right":F
    :cond_1f8
    sub-float v31, v40, v18

    .line 3844
    .restart local v31    # "left":F
    move/from16 v41, v40

    .restart local v41    # "right":F
    goto :goto_1b5

    .line 3810
    .end local v18    # "charWidth":F
    .end local v27    # "isRtl":Z
    .end local v31    # "left":F
    .end local v40    # "primary":F
    .end local v41    # "right":F
    .end local v42    # "secondary":F
    :cond_1fd
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_130

    .line 3874
    .end local v5    # "offset":I
    .end local v17    # "bottom":F
    .end local v19    # "composingText":Ljava/lang/CharSequence;
    .end local v20    # "composingTextEnd":I
    .end local v21    # "composingTextStart":I
    .end local v22    # "hasComposingText":Z
    .end local v32    # "line":I
    .end local v33    # "lineEnd":I
    .end local v34    # "lineStart":I
    .end local v35    # "ltrLine":Z
    .end local v36    # "maxLine":I
    .end local v37    # "minLine":I
    .end local v38    # "offsetEnd":I
    .end local v39    # "offsetStart":I
    .end local v44    # "sp":Landroid/text/Spannable;
    .end local v47    # "top":F
    .end local v50    # "widths":[F
    :cond_201
    if-ltz v43, :cond_260

    .line 3875
    move/from16 v5, v43

    .line 3876
    .restart local v5    # "offset":I
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v32

    .line 3877
    .restart local v32    # "line":I
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    add-float v12, v11, v48

    .line 3879
    .local v12, "insertionMarkerX":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    add-float v13, v11, v49

    .line 3881
    .local v13, "insertionMarkerTop":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    int-to-float v11, v11

    add-float v14, v11, v49

    .line 3883
    .local v14, "insertionMarkerBaseline":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v11, v11

    add-float v15, v11, v49

    .line 3885
    .local v15, "insertionMarkerBottom":F
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v11, v12, v13}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;FF)Z

    move-result v29

    .line 3887
    .local v29, "isTopVisible":Z
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v11, v12, v15}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;FF)Z

    move-result v26

    .line 3889
    .local v26, "isBottomVisible":Z
    const/16 v16, 0x0

    .line 3890
    .local v16, "insertionMarkerFlags":I
    if-nez v29, :cond_24a

    if-eqz v26, :cond_24c

    .line 3891
    :cond_24a
    or-int/lit8 v16, v16, 0x1

    .line 3893
    :cond_24c
    if-eqz v29, :cond_250

    if-nez v26, :cond_252

    .line 3894
    :cond_250
    or-int/lit8 v16, v16, 0x2

    .line 3896
    :cond_252
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v11

    if-eqz v11, :cond_25c

    .line 3897
    or-int/lit8 v16, v16, 0x4

    :cond_25c
    move-object v11, v4

    .line 3899
    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 3903
    .end local v5    # "offset":I
    .end local v12    # "insertionMarkerX":F
    .end local v13    # "insertionMarkerTop":F
    .end local v14    # "insertionMarkerBaseline":F
    .end local v15    # "insertionMarkerBottom":F
    .end local v16    # "insertionMarkerFlags":I
    .end local v26    # "isBottomVisible":Z
    .end local v29    # "isTopVisible":Z
    .end local v32    # "line":I
    :cond_260
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v51

    move-object/from16 v0, v23

    move-object/from16 v1, v51

    invoke-virtual {v0, v11, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto/16 :goto_10
.end method
