.class abstract Landroid/widget/MultiSelectPopupWindow$HandleView;
.super Landroid/view/View;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1


# instance fields
.field protected mBaselineY:I

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEndRange:I

.field public mHandleType:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field protected mStartRange:I

.field private mStatusbarHeight:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1043
    iput-object p1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1044
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1022
    const/4 v0, -0x1

    iput v0, p0, mPreviousOffset:I

    .line 1023
    iput-boolean v5, p0, mPositionHasChanged:Z

    .line 1031
    const/high16 v0, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, mStatusbarHeight:I

    .line 1033
    iput v4, p0, mHandleType:I

    .line 1380
    iput-boolean v4, p0, mbFlipCursor:Z

    .line 1381
    iput-boolean v4, p0, mCurCursorPosTop:Z

    .line 1045
    new-instance v0, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    .line 1046
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 1047
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1048
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1049
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1051
    iput-object p2, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 1052
    iput-object p3, p0, mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 1054
    invoke-virtual {p0}, updateDrawable()V

    .line 1055
    invoke-virtual {p0}, recalHandleView()V

    .line 1056
    return-void
.end method

.method private isVisible()Z
    .registers 7

    .prologue
    .line 1146
    iget-boolean v3, p0, mIsDragging:Z

    if-eqz v3, :cond_6

    .line 1147
    const/4 v3, 0x1

    .line 1157
    :goto_5
    return v3

    .line 1150
    :cond_6
    const/4 v0, 0x0

    .line 1151
    .local v0, "compensation":F
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1152
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_22

    .line 1153
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1154
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1157
    .end local v2    # "line":I
    :cond_22
    :goto_22
    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    iget v4, p0, mPositionX:I

    iget v5, p0, mHotspotX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, p0, mBaselineY:I

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z
    invoke-static {v3, v4, v5}, Landroid/widget/MultiSelectPopupWindow;->access$1100(Landroid/widget/MultiSelectPopupWindow;II)Z

    move-result v3

    goto :goto_5

    .line 1154
    .restart local v2    # "line":I
    :cond_33
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_22
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 1384
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1124
    iput-boolean v1, p0, mIsDragging:Z

    .line 1125
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1126
    invoke-virtual {p0}, onDetached()V

    .line 1127
    iput-boolean v1, p0, mbSwitchCursor:Z

    .line 1128
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 1131
    invoke-virtual {p0}, dismiss()V

    .line 1132
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 1133
    return-void
.end method

.method hideMultiSelectQuickPopupWindow()V
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1137
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    .line 1139
    :cond_11
    return-void
.end method

.method public initPreviousOffset()V
    .registers 2

    .prologue
    .line 1392
    const/4 v0, -0x1

    iput v0, p0, mPreviousOffset:I

    .line 1393
    return-void
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 1368
    iget-boolean v0, p0, mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 1142
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 1376
    invoke-virtual {p0}, hideMultiSelectQuickPopupWindow()V

    .line 1377
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 1254
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, mRight:I

    iget v2, p0, mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, mBottom:I

    iget v3, p0, mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1255
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1256
    return-void
.end method

.method onHandleMoved()V
    .registers 1

    .prologue
    .line 1372
    invoke-virtual {p0}, hideMultiSelectQuickPopupWindow()V

    .line 1373
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1068
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, setMeasuredDimension(II)V

    .line 1069
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1266
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v16

    .line 1267
    .local v16, "text":Ljava/lang/CharSequence;
    if-nez v16, :cond_14

    .line 1268
    const-string v17, "MultiSelectPopupWindow"

    const-string v18, "getTextFormultiSelection() text is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/16 v17, 0x1

    .line 1364
    .end local v16    # "text":Ljava/lang/CharSequence;
    :goto_13
    return v17

    .line 1271
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    packed-switch v17, :pswitch_data_268

    .line 1364
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_1b
    :goto_1b
    const/16 v17, 0x1

    goto :goto_13

    .line 1273
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :pswitch_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchToWindowOffsetX:F

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchToWindowOffsetY:F

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, mPositionX:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mInitPositionX:I

    .line 1278
    move-object/from16 v0, p0

    iget v0, v0, mPositionY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mInitPositionY:I

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mInitRawY:F

    .line 1282
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v9, v0, [I

    .line 1283
    .local v9, "range":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v3

    .line 1285
    .local v3, "flag":Z
    if-eqz v3, :cond_c8

    .line 1286
    const/16 v17, 0x0

    aget v17, v9, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mStartRange:I

    .line 1287
    const/16 v17, 0x1

    aget v17, v9, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mEndRange:I

    .line 1292
    :goto_94
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v7

    .line 1293
    .local v7, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLastParentX:I

    .line 1294
    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionY()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLastParentY:I

    .line 1295
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsDragging:Z

    .line 1296
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    goto/16 :goto_1b

    .line 1289
    .end local v7    # "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    :cond_c8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mStartRange:I

    .line 1290
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mEndRange:I

    goto :goto_94

    .line 1301
    .end local v3    # "flag":Z
    .end local v9    # "range":[I
    :pswitch_db
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v10

    .line 1302
    .local v10, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v11

    .line 1304
    .local v11, "rawY":F
    move-object/from16 v0, p0

    iget v0, v0, mTouchToWindowOffsetY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mLastParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v8, v17, v18

    .line 1305
    .local v8, "previousVerticalOffset":F
    move-object/from16 v0, p0

    iget v0, v0, mPositionY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, mLastParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v2, v17, v18

    .line 1307
    .local v2, "currentVerticalOffset":F
    move-object/from16 v0, p0

    iget v0, v0, mIdealVerticalOffset:F

    move/from16 v17, v0

    cmpg-float v17, v8, v17

    if-gez v17, :cond_1e3

    .line 1308
    move-object/from16 v0, p0

    iget v0, v0, mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1309
    .local v6, "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1319
    :goto_12a
    move-object/from16 v0, p0

    iget v0, v0, mLastParentY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchToWindowOffsetY:F

    .line 1321
    move-object/from16 v0, p0

    iget v0, v0, mTouchToWindowOffsetX:F

    move/from16 v17, v0

    sub-float v17, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, mHotspotX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v4, v17, v18

    .line 1322
    .local v4, "newPosX":F
    move-object/from16 v0, p0

    iget v0, v0, mTouchToWindowOffsetY:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, mTouchOffsetY:F

    move/from16 v18, v0

    add-float v5, v17, v18

    .line 1325
    .local v5, "newPosY":F
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    if-eqz v17, :cond_1dc

    .line 1326
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v12

    .line 1327
    .local v12, "scaleRatio":Landroid/graphics/PointF;
    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1af

    .line 1328
    move-object/from16 v0, p0

    iget v0, v0, mTouchToWindowOffsetX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mInitPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v15, v17, v18

    .line 1329
    .local v15, "tempX":F
    sub-float v17, v10, v15

    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mInitPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mHotspotX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v4, v17, v18

    .line 1331
    .end local v15    # "tempX":F
    :cond_1af
    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1dc

    .line 1332
    move-object/from16 v0, p0

    iget v0, v0, mInitRawY:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mInitPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mTouchOffsetY:F

    move/from16 v18, v0

    add-float v5, v17, v18

    .line 1337
    .end local v12    # "scaleRatio":Landroid/graphics/PointF;
    :cond_1dc
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, updatePosition(FF)V

    goto/16 :goto_1b

    .line 1311
    .end local v4    # "newPosX":F
    .end local v5    # "newPosY":F
    .end local v6    # "newVerticalOffset":F
    :cond_1e3
    cmpg-float v17, v2, v8

    if-gez v17, :cond_1f9

    .line 1312
    move-object/from16 v0, p0

    iget v0, v0, mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1313
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto/16 :goto_12a

    .line 1316
    .end local v6    # "newVerticalOffset":F
    :cond_1f9
    move-object/from16 v0, p0

    iget v0, v0, mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1317
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto/16 :goto_12a

    .line 1342
    .end local v2    # "currentVerticalOffset":F
    .end local v6    # "newVerticalOffset":F
    .end local v8    # "previousVerticalOffset":F
    .end local v10    # "rawX":F
    .end local v11    # "rawY":F
    :pswitch_20b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsDragging:Z

    .line 1343
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 1344
    invoke-virtual/range {p0 .. p0}, refreshForSwitchingCursor()Z

    .line 1346
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1347
    .local v14, "selStart":I
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1349
    .local v13, "selEnd":I
    if-le v14, v13, :cond_233

    .line 1350
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    invoke-static {v0, v13, v14}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1353
    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v17

    if-eqz v17, :cond_1b

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v17

    if-nez v17, :cond_1b

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    goto/16 :goto_1b

    .line 1361
    .end local v13    # "selEnd":I
    .end local v14    # "selStart":I
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :pswitch_25e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsDragging:Z

    goto/16 :goto_1b

    .line 1271
    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_20b
        :pswitch_db
        :pswitch_25e
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .registers 11
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1161
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1162
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_c

    .line 1184
    :cond_b
    :goto_b
    return-void

    .line 1165
    :cond_c
    iget v5, p0, mPreviousOffset:I

    if-eq p1, v5, :cond_6d

    move v3, v4

    .line 1166
    .local v3, "offsetChanged":Z
    :goto_11
    if-nez v3, :cond_17

    if-nez p2, :cond_17

    if-eqz p3, :cond_b

    .line 1167
    :cond_17
    if-eqz v3, :cond_1c

    .line 1168
    invoke-virtual {p0, p1}, updateSelection(I)V

    .line 1170
    :cond_1c
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1171
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1173
    .local v0, "compensation":F
    :goto_29
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v5, v0

    iget v6, p0, mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, mPositionX:I

    .line 1174
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p0, mPositionY:I

    .line 1175
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    iput v5, p0, mBaselineY:I

    .line 1177
    iget v5, p0, mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, mPositionX:I

    .line 1178
    iget v5, p0, mPositionY:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, mPositionY:I

    .line 1179
    iget v5, p0, mBaselineY:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, mBaselineY:I

    .line 1181
    iput p1, p0, mPreviousOffset:I

    .line 1182
    iput-boolean v4, p0, mPositionHasChanged:Z

    goto :goto_b

    .line 1165
    .end local v0    # "compensation":F
    .end local v2    # "line":I
    .end local v3    # "offsetChanged":Z
    :cond_6d
    const/4 v3, 0x0

    goto :goto_11

    .line 1171
    .restart local v2    # "line":I
    .restart local v3    # "offsetChanged":Z
    :cond_6f
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_29
.end method

.method public recalHandleView()V
    .registers 4

    .prologue
    .line 1396
    iget-object v1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1397
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, mTouchOffsetY:F

    .line 1398
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, mIdealVerticalOffset:F

    .line 1399
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 1388
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .registers 13

    .prologue
    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1072
    invoke-virtual {p0}, isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1121
    :goto_a
    return-void

    .line 1075
    :cond_b
    iget-object v7, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v7

    invoke-virtual {v7, p0, v10}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 1076
    iput v11, p0, mPreviousOffset:I

    .line 1077
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, v9, v9}, positionAtCursorOffset(IZZ)V

    .line 1079
    new-array v6, v8, [I

    .line 1080
    .local v6, "window":[I
    new-array v5, v8, [I

    .line 1081
    .local v5, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1082
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1083
    iget v7, p0, mPositionX:I

    aget v8, v6, v9

    add-int v3, v7, v8

    .line 1084
    .local v3, "positionX":I
    iget v7, p0, mPositionY:I

    aget v8, v6, v10

    add-int v4, v7, v8

    .line 1085
    .local v4, "positionY":I
    aget v7, v5, v9

    aget v8, v6, v9

    sub-int v1, v7, v8

    .line 1086
    .local v1, "gapX":I
    aget v7, v5, v10

    aget v8, v6, v10

    sub-int v2, v7, v8

    .line 1088
    .local v2, "gapY":I
    invoke-virtual {p0}, isShowing()Z

    move-result v7

    if-eqz v7, :cond_80

    .line 1092
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_7a

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_7a

    .line 1093
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1094
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1096
    :cond_78
    add-int/2addr v3, v1

    .line 1097
    add-int/2addr v4, v2

    .line 1100
    :cond_7a
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v11, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_a

    .line 1102
    :cond_80
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_c1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_c1

    .line 1103
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1104
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 1105
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1108
    :cond_b0
    add-int/2addr v3, v1

    .line 1109
    add-int/2addr v4, v2

    .line 1110
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_a

    .line 1112
    :cond_c1
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1114
    :try_start_c6
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_d0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c6 .. :try_end_d0} :catch_d2

    goto/16 :goto_a

    .line 1115
    :catch_d2
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1117
    const-string v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method

.method protected updateDrawable()V
    .registers 4

    .prologue
    .line 1059
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v1

    .line 1060
    .local v1, "offset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1062
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_1f

    iget-object v2, p0, mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_14
    iput-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1063
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, mHotspotX:I

    .line 1064
    return-void

    .line 1062
    :cond_1f
    iget-object v2, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_14
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .registers 15
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 1187
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, p3, p4}, positionAtCursorOffset(IZZ)V

    .line 1188
    if-nez p3, :cond_d

    iget-boolean v7, p0, mPositionHasChanged:Z

    if-eqz v7, :cond_ab

    .line 1189
    :cond_d
    iget-boolean v7, p0, mIsDragging:Z

    if-eqz v7, :cond_34

    .line 1190
    iget v7, p0, mLastParentX:I

    if-ne p1, v7, :cond_19

    iget v7, p0, mLastParentY:I

    if-eq p2, v7, :cond_31

    .line 1191
    :cond_19
    iget v7, p0, mTouchToWindowOffsetX:F

    iget v8, p0, mLastParentX:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, mTouchToWindowOffsetX:F

    .line 1192
    iget v7, p0, mTouchToWindowOffsetY:F

    iget v8, p0, mLastParentY:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, mTouchToWindowOffsetY:F

    .line 1193
    iput p1, p0, mLastParentX:I

    .line 1194
    iput p2, p0, mLastParentY:I

    .line 1196
    :cond_31
    invoke-virtual {p0}, onHandleMoved()V

    .line 1199
    :cond_34
    invoke-direct {p0}, isVisible()Z

    move-result v7

    if-eqz v7, :cond_111

    if-nez p3, :cond_111

    .line 1200
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1201
    .local v6, "window":[I
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 1202
    .local v5, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1203
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1204
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x0

    aget v8, v6, v8

    sub-int v1, v7, v8

    .line 1205
    .local v1, "gapX":I
    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    sub-int v2, v7, v8

    .line 1206
    .local v2, "gapY":I
    iget v7, p0, mPositionX:I

    add-int v3, p1, v7

    .line 1207
    .local v3, "positionX":I
    iget v7, p0, mPositionY:I

    add-int v4, p2, v7

    .line 1209
    .local v4, "positionY":I
    invoke-virtual {p0}, isShowing()Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 1214
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_9c

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_9c

    .line 1215
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 1216
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1218
    :cond_9a
    add-int/2addr v3, v1

    .line 1219
    add-int/2addr v4, v2

    .line 1221
    :cond_9c
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1247
    .end local v1    # "gapX":I
    .end local v2    # "gapY":I
    .end local v3    # "positionX":I
    .end local v4    # "positionY":I
    .end local v5    # "screen":[I
    .end local v6    # "window":[I
    :cond_a3
    :goto_a3
    const/4 v7, 0x0

    iput-boolean v7, p0, mPositionHasChanged:Z

    .line 1248
    iget-object v7, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow;->relocateMultiSelectQuickPopupWindow()V

    .line 1250
    :cond_ab
    return-void

    .line 1224
    .restart local v1    # "gapX":I
    .restart local v2    # "gapY":I
    .restart local v3    # "positionX":I
    .restart local v4    # "positionY":I
    .restart local v5    # "screen":[I
    .restart local v6    # "window":[I
    :cond_ac
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_ef

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_ef

    .line 1225
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1226
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_de

    .line 1227
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1229
    :cond_de
    add-int/2addr v3, v1

    .line 1230
    add-int/2addr v4, v2

    .line 1232
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_a3

    .line 1234
    :cond_ef
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1236
    :try_start_f5
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_ff
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_f5 .. :try_end_ff} :catch_100

    goto :goto_a3

    .line 1237
    :catch_100
    move-exception v0

    .line 1238
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1239
    const-string v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 1244
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v1    # "gapX":I
    .end local v2    # "gapY":I
    .end local v3    # "positionX":I
    .end local v4    # "positionY":I
    .end local v5    # "screen":[I
    .end local v6    # "window":[I
    :cond_111
    invoke-virtual {p0}, isShowing()Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 1245
    invoke-virtual {p0}, dismiss()V

    goto :goto_a3
.end method

.method protected abstract updateSelection(I)V
.end method
