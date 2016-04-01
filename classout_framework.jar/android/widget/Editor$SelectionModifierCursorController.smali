.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorActive:Z

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 5316
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5307
    iput v0, p0, mStartOffset:I

    .line 5312
    iput v0, p0, mLineSelectionIsOn:I

    .line 5314
    const/4 v0, 0x0

    iput-boolean v0, p0, mSwitchedLines:Z

    .line 5317
    invoke-virtual {p0}, resetTouchOffsets()V

    .line 5318
    return-void
.end method

.method static synthetic access$2900(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5296
    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5296
    invoke-direct {p0}, initDrawables()V

    return-void
.end method

.method static synthetic access$3100(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5296
    invoke-direct {p0}, initHandles()V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/Editor$SelectionModifierCursorController;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;
    .param p1, "x1"    # Z

    .prologue
    .line 5296
    invoke-direct {p0, p1}, setDragAcceleratorActive(Z)V

    return-void
.end method

.method private initDrawables()V
    .registers 4

    .prologue
    .line 5334
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_23

    .line 5335
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3202(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5338
    :cond_23
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_46

    .line 5339
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5342
    :cond_46
    return-void
.end method

.method private initHandles()V
    .registers 5

    .prologue
    .line 5346
    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_19

    .line 5347
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 5349
    :cond_19
    iget-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_32

    .line 5350
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 5353
    :cond_32
    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5354
    iget-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5356
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5357
    return-void
.end method

.method private setDragAcceleratorActive(Z)V
    .registers 2
    .param p1, "isDragAcceleratorActive"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, mDragAcceleratorActive:Z

    .line 5592
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5554
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5
    if-ge v0, v2, :cond_28

    .line 5555
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5556
    .local v1, "offset":I
    iget v3, p0, mMinTouchOffset:I

    if-ge v1, v3, :cond_1f

    iput v1, p0, mMinTouchOffset:I

    .line 5557
    :cond_1f
    iget v3, p0, mMaxTouchOffset:I

    if-le v1, v3, :cond_25

    iput v1, p0, mMaxTouchOffset:I

    .line 5554
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5559
    .end local v1    # "offset":I
    :cond_28
    return-void
.end method


# virtual methods
.method public enterDrag()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5365
    iput-boolean v3, p0, mDragAcceleratorActive:Z

    .line 5367
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, mStartOffset:I

    .line 5369
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, mLineSelectionIsOn:I

    .line 5374
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5375
    return-void
.end method

.method public getMaxTouchOffset()I
    .registers 2

    .prologue
    .line 5566
    iget v0, p0, mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .registers 2

    .prologue
    .line 5562
    iget v0, p0, mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 5360
    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_9

    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5361
    :cond_9
    iget-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_12

    iget-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5362
    :cond_12
    return-void
.end method

.method public isDragAcceleratorActive()Z
    .registers 2

    .prologue
    .line 5587
    iget-boolean v0, p0, mDragAcceleratorActive:Z

    return v0
.end method

.method public isSelectHandlerNotMoved()Z
    .registers 2

    .prologue
    .line 5595
    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isMoved()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isMoved()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .prologue
    .line 5580
    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 5606
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5607
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5609
    iget-object v1, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_16

    iget-object v1, p0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    .line 5610
    :cond_16
    iget-object v1, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    .line 5611
    :cond_1f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5380
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 5381
    .local v11, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 5382
    .local v12, "eventY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_344

    .line 5547
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 5384
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 5386
    invoke-virtual/range {p0 .. p0}, hide()V

    goto :goto_f

    .line 5389
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMaxTouchOffset:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMinTouchOffset:I

    .line 5393
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c4

    # getter for: Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z
    invoke-static {}, Landroid/widget/Editor;->access$5200()Z

    move-result v22

    if-nez v22, :cond_c4

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/widget/Editor;->mDoubleTap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c4

    .line 5395
    move-object/from16 v0, p0

    iget v0, v0, mDownPositionX:F

    move/from16 v22, v0

    sub-float v5, v11, v22

    .line 5396
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, mDownPositionY:F

    move/from16 v22, v0

    sub-float v6, v12, v22

    .line 5397
    .local v6, "deltaY":F
    mul-float v22, v5, v5

    mul-float v23, v6, v6

    add-float v7, v22, v23

    .line 5399
    .local v7, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    .line 5401
    .local v20, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v8

    .line 5402
    .local v8, "doubleTapSlop":I
    mul-int v22, v8, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gez v22, :cond_de

    const/16 v16, 0x1

    .line 5405
    .local v16, "stayedInArea":Z
    :goto_91
    if-eqz v16, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v0, v11, v12}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;FF)Z

    move-result v22

    if-eqz v22, :cond_c4

    .line 5406
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # invokes: Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$5400(Landroid/widget/Editor;)Z

    move-result v22

    if-eqz v22, :cond_b6

    .line 5407
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5409
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5414
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v16    # "stayedInArea":Z
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_c4
    move-object/from16 v0, p0

    iput v11, v0, mDownPositionX:F

    .line 5415
    move-object/from16 v0, p0

    iput v12, v0, mDownPositionY:F

    .line 5416
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGestureStayedInTapRegion:Z

    .line 5417
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHaventMovedEnoughToStartDrag:Z

    goto/16 :goto_f

    .line 5402
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v8    # "doubleTapSlop":I
    .restart local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_de
    const/16 v16, 0x0

    goto :goto_91

    .line 5425
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_e1
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 5427
    invoke-direct/range {p0 .. p1}, updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    .line 5432
    :pswitch_100
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    .line 5434
    .local v19, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v18

    .line 5436
    .local v18, "touchSlop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-nez v22, :cond_126

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_176

    .line 5437
    :cond_126
    move-object/from16 v0, p0

    iget v0, v0, mDownPositionX:F

    move/from16 v22, v0

    sub-float v5, v11, v22

    .line 5438
    .restart local v5    # "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, mDownPositionY:F

    move/from16 v22, v0

    sub-float v6, v12, v22

    .line 5439
    .restart local v6    # "deltaY":F
    mul-float v22, v5, v5

    mul-float v23, v6, v6

    add-float v7, v22, v23

    .line 5441
    .restart local v7    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15b

    .line 5442
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v9

    .line 5443
    .local v9, "doubleTapTouchSlop":I
    mul-int v22, v9, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_210

    const/16 v22, 0x1

    :goto_155
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGestureStayedInTapRegion:Z

    .line 5446
    .end local v9    # "doubleTapTouchSlop":I
    :cond_15b
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_176

    .line 5448
    mul-int v22, v18, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_214

    const/16 v22, 0x1

    :goto_170
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHaventMovedEnoughToStartDrag:Z

    .line 5453
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18a

    move-object/from16 v0, p0

    iget-object v0, v0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v22

    if-nez v22, :cond_f

    .line 5458
    :cond_18a
    move-object/from16 v0, p0

    iget v0, v0, mStartOffset:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v22

    if-eqz v22, :cond_f

    .line 5459
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 5461
    move/from16 v21, v12

    .line 5462
    .local v21, "y":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSwitchedLines:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1ce

    .line 5467
    move-object/from16 v0, p0

    iget-object v0, v0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_218

    move-object/from16 v0, p0

    iget-object v0, v0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->getIdealVerticalOffset()F

    move-result v13

    .line 5470
    .local v13, "fingerOffset":F
    :goto_1cc
    sub-float v21, v12, v13

    .line 5473
    .end local v13    # "fingerOffset":F
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, mLineSelectionIsOn:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v21

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v0, v1, v2, v3}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v4

    .line 5476
    .local v4, "currLine":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSwitchedLines:Z

    move/from16 v22, v0

    if-nez v22, :cond_21c

    move-object/from16 v0, p0

    iget v0, v0, mLineSelectionIsOn:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v4, v0, :cond_21c

    .line 5481
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSwitchedLines:Z

    goto/16 :goto_f

    .line 5443
    .end local v4    # "currLine":I
    .end local v21    # "y":F
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v9    # "doubleTapTouchSlop":I
    :cond_210
    const/16 v22, 0x0

    goto/16 :goto_155

    .line 5448
    .end local v9    # "doubleTapTouchSlop":I
    :cond_214
    const/16 v22, 0x0

    goto/16 :goto_170

    .line 5467
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .restart local v21    # "y":F
    :cond_218
    move/from16 v0, v18

    int-to-float v13, v0

    goto :goto_1cc

    .line 5486
    .restart local v4    # "currLine":I
    :cond_21c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v14

    .line 5488
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, mStartOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v14, :cond_26d

    .line 5490
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v14}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;I)I

    move-result v14

    .line 5491
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mStartOffset:I

    move/from16 v23, v0

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v15

    .line 5497
    .local v15, "startOffset":I
    :goto_252
    move-object/from16 v0, p0

    iput v4, v0, mLineSelectionIsOn:I

    .line 5498
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_f

    .line 5494
    .end local v15    # "startOffset":I
    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v14}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v14

    .line 5495
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mStartOffset:I

    move/from16 v23, v0

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;I)I

    move-result v15

    .restart local v15    # "startOffset":I
    goto :goto_252

    .line 5505
    .end local v4    # "currLine":I
    .end local v14    # "offset":I
    .end local v15    # "startOffset":I
    .end local v18    # "touchSlop":I
    .end local v19    # "viewConfig":Landroid/view/ViewConfiguration;
    .end local v21    # "y":F
    :pswitch_28a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mDragAcceleratorActive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 5507
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5509
    invoke-virtual/range {p0 .. p0}, show()V

    .line 5510
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 5511
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .line 5516
    .local v10, "endOffset":I
    if-ge v10, v15, :cond_2e0

    .line 5517
    move/from16 v17, v10

    .line 5518
    .local v17, "tmp":I
    move v10, v15

    .line 5519
    move/from16 v15, v17

    .line 5522
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5525
    .end local v17    # "tmp":I
    :cond_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    move-object/from16 v22, v0

    if-nez v22, :cond_307

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v22

    if-eqz v22, :cond_307

    .line 5526
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 5529
    :cond_307
    move-object/from16 v0, p0

    iget-object v0, v0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_318

    .line 5530
    move-object/from16 v0, p0

    iget-object v0, v0, mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->refreshForSwitchingCursor()Z

    .line 5532
    :cond_318
    move-object/from16 v0, p0

    iget-object v0, v0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_329

    .line 5533
    move-object/from16 v0, p0

    iget-object v0, v0, mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionEndHandleView;->refreshForSwitchingCursor()Z

    .line 5541
    :cond_329
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDragAcceleratorActive:Z

    .line 5542
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mStartOffset:I

    .line 5543
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSwitchedLines:Z

    goto/16 :goto_f

    .line 5382
    nop

    :pswitch_data_344
    .packed-switch 0x0
        :pswitch_10
        :pswitch_28a
        :pswitch_100
        :pswitch_f
        :pswitch_f
        :pswitch_e1
        :pswitch_e1
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5599
    if-nez p1, :cond_5

    .line 5600
    invoke-virtual {p0}, hide()V

    .line 5602
    :cond_5
    return-void
.end method

.method public resetTouchOffsets()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5570
    iput v0, p0, mMaxTouchOffset:I

    iput v0, p0, mMinTouchOffset:I

    .line 5571
    iput v0, p0, mStartOffset:I

    .line 5572
    iput-boolean v1, p0, mDragAcceleratorActive:Z

    .line 5573
    iput-boolean v1, p0, mSwitchedLines:Z

    .line 5574
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 5322
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isUniversalSwitchEnabled()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$5100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5331
    :cond_8
    :goto_8
    return-void

    .line 5325
    :cond_9
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5328
    invoke-direct {p0}, initDrawables()V

    .line 5329
    invoke-direct {p0}, initHandles()V

    .line 5330
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    goto :goto_8
.end method
