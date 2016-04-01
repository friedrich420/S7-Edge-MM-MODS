.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizedWindowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .registers 2

    .prologue
    .line 541
    iput-object p1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p2, "x1"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 545
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 546
    const-string v0, "MinimizeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLongClick mIsMoving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_25
    iget-object v0, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 549
    const/4 v0, 0x0

    .line 552
    :goto_2e
    return v0

    .line 551
    :cond_2f
    iget-object v0, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->showTrash()V

    .line 552
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 35
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    if-nez v26, :cond_e

    .line 558
    const/4 v13, 0x0

    .line 768
    :cond_d
    :goto_d
    return v13

    .line 561
    :cond_e
    const/4 v13, 0x0

    .line 562
    .local v13, "handled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 563
    .local v6, "currentX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 565
    .local v7, "currentY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    packed-switch v26, :pswitch_data_81c

    goto :goto_d

    .line 567
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->init()V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2102(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F
    invoke-static {v0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2302(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F

    move-result v27

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F
    invoke-static {v0, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2502(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F

    move-result v27

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2402(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->cancelhideTrashForRemoveAnimation(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_92

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2602(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 579
    :cond_92
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 580
    .local v10, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z
    invoke-static {v0, v10}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v28, 0x0

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V
    invoke-static/range {v26 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V

    goto/16 :goto_d

    .line 585
    .end local v10    # "displaySize":Landroid/graphics/Point;
    :pswitch_c0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-nez v26, :cond_148

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v26, v26, v27

    if-gez v26, :cond_13d

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v26, v26, v27

    if-gez v26, :cond_13d

    .line 588
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v26

    if-eqz v26, :cond_d

    .line 589
    const-string v26, "MinimizeAnimator"

    const-string v27, "MinimizedIcon isn\'t moved"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 593
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 596
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v26

    cmpl-float v26, v26, v6

    if-nez v26, :cond_164

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v26

    cmpl-float v26, v26, v7

    if-eqz v26, :cond_d

    .line 600
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v28

    sub-float v28, v6, v28

    add-float v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setX(F)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v28

    sub-float v28, v7, v28

    add-float v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setY(F)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F
    invoke-static {v0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F
    invoke-static {v0, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2402(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->isShowingTrash()Z

    move-result v26

    if-eqz v26, :cond_25b

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_388

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->rangeCheck()Z

    move-result v26

    if-eqz v26, :cond_379

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getY()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v29, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->openTrash(FF)V

    .line 625
    :cond_25b
    :goto_25b
    const/16 v22, 0x0

    .line 626
    .local v22, "offsetX":I
    const/16 v23, 0x0

    .line 627
    .local v23, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3da

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v27

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2b8

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v23

    .line 639
    :cond_2b8
    :goto_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->isShowingTrash()Z

    move-result v26

    if-nez v26, :cond_326

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v27

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v28

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getY()F

    move-result v28

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v29, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F
    invoke-static/range {v29 .. v29}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v29

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/internal/policy/multiwindow/Docking;->updateZone(IIZ)Z

    move-result v26

    if-eqz v26, :cond_326

    .line 652
    :cond_326
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 653
    .local v11, "dockingBound":Landroid/graphics/Rect;
    if-eqz v11, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v26

    if-nez v26, :cond_359

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v26

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 656
    :cond_359
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v26

    if-nez v26, :cond_376

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 659
    :cond_376
    const/4 v13, 0x1

    .line 660
    goto/16 :goto_d

    .line 612
    .end local v11    # "dockingBound":Landroid/graphics/Rect;
    .end local v22    # "offsetX":I
    .end local v23    # "offsetY":I
    :cond_379
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->closeTrash()V

    goto/16 :goto_25b

    .line 615
    :cond_388
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v7, v26

    if-ltz v26, :cond_3cb

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v7, v26

    if-gtz v26, :cond_3cb

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->openTrash(FF)V

    goto/16 :goto_25b

    .line 619
    :cond_3cb
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->closeTrash()V

    goto/16 :goto_25b

    .line 632
    .restart local v22    # "offsetX":I
    .restart local v23    # "offsetY":I
    :cond_3da
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v27

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2b8

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v22

    goto/16 :goto_2b8

    .line 664
    .end local v22    # "offsetX":I
    .end local v23    # "offsetY":I
    :pswitch_40f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2102(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_4c9

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v26

    if-eqz v26, :cond_6d9

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v26

    if-nez v26, :cond_6d9

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->checkCenterBarPoint()V

    .line 668
    const/16 v21, 0x0

    .line 669
    .local v21, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v26, v0

    if-eqz v26, :cond_484

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v26

    check-cast v26, Landroid/app/Activity;

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    .line 671
    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 674
    :cond_484
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_6a0

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v29, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static/range {v29 .. v29}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 695
    .end local v21    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4c9
    :goto_4c9
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getX()F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v27

    sub-float v27, v6, v27

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    .line 696
    .local v18, "movedX":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getY()F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v27

    sub-float v27, v7, v27

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 697
    .local v19, "movedY":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setX(F)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v26

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setY(F)V

    .line 700
    const/4 v5, 0x0

    .line 701
    .local v5, "applyThrowAwayAnimation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->isShowingTrash()Z

    move-result v16

    .line 702
    .local v16, "isShowingTrash":Z
    if-eqz v16, :cond_592

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    .line 704
    .local v24, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v24, :cond_592

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_592

    const/16 v26, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_592

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_743

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->rangeCheck()Z

    move-result v26

    if-eqz v26, :cond_592

    .line 707
    const/4 v5, 0x1

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->throwAway()V

    .line 723
    .end local v24    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_592
    :goto_592
    const/4 v15, 0x1

    .line 724
    .local v15, "isSetToucbleRegion":Z
    if-nez v5, :cond_621

    .line 725
    if-eqz v16, :cond_5ba

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_7a8

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    .line 729
    const/4 v15, 0x0

    .line 743
    :cond_5ba
    :goto_5ba
    if-eqz v15, :cond_621

    .line 744
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v26

    add-int v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    add-int v27, v27, v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 745
    .local v17, "minimizedBound":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v27

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isOutOfDisplay(Landroid/graphics/Rect;)Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)Z

    move-result v14

    .line 747
    .local v14, "isInside":Z
    if-nez v14, :cond_621

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_621

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x96

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v27

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V

    .line 753
    .end local v14    # "isInside":Z
    .end local v17    # "minimizedBound":Landroid/graphics/Rect;
    :cond_621
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-nez v26, :cond_684

    if-nez v16, :cond_684

    .line 754
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v26

    if-eqz v26, :cond_63c

    .line 755
    const-string v26, "MinimizeAnimator"

    const-string v27, "Minimized -> Floating"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_63c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->cancelhideTrashForRemoveAnimation(Z)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 761
    .local v20, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 763
    .end local v20    # "msg":Landroid/os/Message;
    :cond_684
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/Docking;->clear()V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_d

    .line 679
    .end local v5    # "applyThrowAwayAnimation":Z
    .end local v15    # "isSetToucbleRegion":Z
    .end local v16    # "isShowingTrash":Z
    .end local v18    # "movedX":I
    .end local v19    # "movedY":I
    .restart local v21    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6a0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v29, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static/range {v29 .. v29}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_4c9

    .line 683
    .end local v21    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6d9
    const/4 v8, 0x0

    .local v8, "diffX":F
    const/4 v9, 0x0

    .line 684
    .local v9, "diffY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_72a

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v27

    sub-float v8, v26, v27

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v27

    sub-float v9, v26, v27

    .line 691
    :goto_713
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v26

    float-to-int v0, v8

    move/from16 v27, v0

    float-to-int v0, v9

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lcom/android/internal/policy/MultiPhoneWindow;->moveStackBound(IIZ)Z

    goto/16 :goto_4c9

    .line 688
    :cond_72a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v26

    sub-float v8, v6, v26

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F

    move-result v26

    sub-float v9, v7, v26

    goto :goto_713

    .line 711
    .end local v8    # "diffX":F
    .end local v9    # "diffY":F
    .restart local v5    # "applyThrowAwayAnimation":Z
    .restart local v16    # "isShowingTrash":Z
    .restart local v18    # "movedX":I
    .restart local v19    # "movedY":I
    .restart local v24    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_743
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_592

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_592

    .line 713
    :try_start_77d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;I)V
    :try_end_796
    .catch Ljava/lang/IllegalStateException; {:try_start_77d .. :try_end_796} :catch_798

    goto/16 :goto_592

    .line 715
    :catch_798
    move-exception v12

    .line 716
    .local v12, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->finish()V

    goto/16 :goto_592

    .line 731
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    .end local v24    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v15    # "isSetToucbleRegion":Z
    :cond_7a8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v26

    if-eqz v26, :cond_80d

    .line 732
    new-instance v25, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v26

    add-int v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v27

    add-int v27, v27, v19

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    .local v25, "tempTouchableRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrashScaleAlphaAnimation(ZLandroid/graphics/Rect;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    const/16 v27, 0x0

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->bounceShowRedCircleAnimation(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$3600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 736
    const/4 v15, 0x0

    .line 737
    goto/16 :goto_5ba

    .line 738
    .end local v25    # "tempTouchableRegion":Landroid/graphics/Rect;
    :cond_80d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    goto/16 :goto_5ba

    .line 565
    :pswitch_data_81c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_40f
        :pswitch_c0
        :pswitch_40f
    .end packed-switch
.end method
