.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4409
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    .line 4410
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4411
    const/4 v0, 0x3

    iput v0, p0, mHandleType:I

    .line 4412
    return-void
.end method

.method private hideAfterDelay()V
    .registers 5

    .prologue
    .line 4455
    iget-object v0, p0, mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    .line 4456
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, mHider:Ljava/lang/Runnable;

    .line 4464
    :goto_b
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4465
    return-void

    .line 4462
    :cond_19
    invoke-direct {p0}, removeHiderCallback()V

    goto :goto_b
.end method

.method private removeHiderCallback()V
    .registers 3

    .prologue
    .line 4468
    iget-object v0, p0, mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 4469
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4471
    :cond_f
    return-void
.end method


# virtual methods
.method public addHiderCallback()V
    .registers 5

    .prologue
    .line 4477
    iget-object v0, p0, mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    .line 4478
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$3;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$3;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, mHider:Ljava/lang/Runnable;

    .line 4486
    :goto_b
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4487
    return-void

    .line 4484
    :cond_19
    invoke-direct {p0}, removeHiderCallback()V

    goto :goto_b
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 4564
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getCursorOffset()I
    .registers 5

    .prologue
    .line 4501
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v1

    .line 4502
    .local v1, "offset":I
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_36

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 4503
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    :goto_11
    if-eqz v0, :cond_35

    .line 4504
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4505
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 4507
    :cond_35
    return v1

    .line 4502
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_36
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4496
    const/4 v0, 0x1

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4491
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 4600
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4601
    invoke-direct {p0}, removeHiderCallback()V

    .line 4602
    return-void
.end method

.method onHandleMoved()V
    .registers 1

    .prologue
    .line 4594
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4595
    invoke-direct {p0}, removeHiderCallback()V

    .line 4596
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4512
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 4514
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_8a

    .line 4559
    :goto_b
    :pswitch_b
    return v3

    .line 4516
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, mDownPositionX:F

    .line 4517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, mDownPositionY:F

    goto :goto_b

    .line 4521
    :pswitch_19
    invoke-virtual {p0}, offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_73

    .line 4522
    iget v6, p0, mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    .line 4523
    .local v0, "deltaX":F
    iget v6, p0, mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    .line 4524
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    .line 4526
    .local v2, "distanceSquared":F
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 4528
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 4530
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_5b

    .line 4532
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_6d

    .line 4533
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    .line 4544
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_5b
    :goto_5b
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_81

    .line 4545
    invoke-direct {p0}, removeHiderCallback()V

    goto :goto_b

    .line 4535
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_6d
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->startInsertionActionMode()V

    goto :goto_5b

    .line 4539
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_73
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_5b

    .line 4540
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_5b

    .line 4547
    :cond_81
    invoke-direct {p0}, hideAfterDelay()V

    goto :goto_b

    .line 4552
    :pswitch_85
    invoke-direct {p0}, hideAfterDelay()V

    goto :goto_b

    .line 4514
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_19
        :pswitch_b
        :pswitch_85
    .end packed-switch
.end method

.method public show()V
    .registers 7

    .prologue
    .line 4416
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 4418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    sub-long v0, v2, v4

    .line 4422
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mDoubleTap:Z

    if-nez v2, :cond_21

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4424
    :cond_21
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4429
    :cond_30
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mDoubleTap:Z

    if-nez v2, :cond_72

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_72

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_72

    .line 4431
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_72

    .line 4432
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_5c

    .line 4433
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    new-instance v3, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    # setter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4402(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4440
    :cond_5c
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4447
    :cond_72
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_84

    .line 4448
    invoke-direct {p0}, removeHiderCallback()V

    .line 4452
    :goto_83
    return-void

    .line 4450
    :cond_84
    invoke-direct {p0}, hideAfterDelay()V

    goto :goto_83
.end method

.method public updatePosition(FF)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4574
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4576
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_43

    .line 4577
    iget v3, p0, mPreviousLineTouched:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d

    .line 4578
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    iput v3, p0, mPreviousLineTouched:I

    .line 4580
    :cond_1d
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    iget v4, p0, mPreviousLineTouched:I

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v3, v1, v4, p2}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    .line 4581
    .local v0, "currLine":I
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v2

    .line 4582
    .local v2, "offset":I
    iput v0, p0, mPreviousLineTouched:I

    .line 4586
    .end local v0    # "currLine":I
    :goto_31
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, positionAtCursorOffset(IZ)V

    .line 4587
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_42

    .line 4588
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 4590
    :cond_42
    return-void

    .line 4584
    .end local v2    # "offset":I
    :cond_43
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .restart local v2    # "offset":I
    goto :goto_31
.end method

.method public updateSelection(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 4569
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4570
    return-void
.end method
