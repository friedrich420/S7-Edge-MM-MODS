.class Lcom/android/internal/policy/PhoneWindow$DecorView$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .registers 2

    .prologue
    .line 3906
    iput-object p1, p0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 29
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3908
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 3909
    .local v2, "action":I
    if-nez v2, :cond_48

    .line 3911
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    .line 3912
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    .line 3913
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    .line 3914
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    .line 3982
    :cond_46
    :goto_46
    const/4 v6, 0x0

    :goto_47
    return v6

    .line 3915
    :cond_48
    const/4 v6, 0x2

    if-ne v2, v6, :cond_11f

    .line 3916
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_74

    .line 3919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3920
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)J

    move-result-wide v8

    sub-long v24, v4, v8

    .line 3921
    .local v24, "timeDiff":J
    const-wide/16 v8, 0x0

    cmp-long v6, v24, v8

    if-lez v6, :cond_6d

    const-wide/16 v8, 0x14

    cmp-long v6, v24, v8

    if-gez v6, :cond_6d

    .line 3922
    const/4 v6, 0x0

    goto :goto_47

    .line 3924
    :cond_6d
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J
    invoke-static {v6, v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/PhoneWindow$DecorView;J)J

    .line 3927
    .end local v4    # "now":J
    .end local v24    # "timeDiff":J
    :cond_74
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int v16, v6, v8

    .line 3928
    .local v16, "moveX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v17, v6, v8

    .line 3930
    .local v17, "moveY":I
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x0

    aget v6, v6, v8

    add-int v18, v6, v16

    .line 3931
    .local v18, "newX":I
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    add-int v19, v6, v17

    .line 3934
    .local v19, "newY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    .line 3935
    .local v20, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, v20

    instance-of v6, v0, Landroid/view/View;

    if-eqz v6, :cond_fa

    .line 3936
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1050017

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 3937
    .local v21, "statusBarHeight":I
    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v6, v20

    .line 3938
    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v6, v8

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 3940
    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 3941
    check-cast v20, Landroid/view/View;

    .end local v20    # "parent":Landroid/view/ViewParent;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 3945
    .end local v21    # "statusBarHeight":I
    :cond_fa
    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    .line 3946
    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 3949
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;

    if-eqz v6, :cond_46

    move-object/from16 v6, p1

    check-cast v6, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;->isViewInTransparentRegion()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 3951
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_46

    .line 3953
    .end local v16    # "moveX":I
    .end local v17    # "moveY":I
    .end local v18    # "newX":I
    .end local v19    # "newY":I
    :cond_11f
    const/4 v6, 0x1

    if-ne v2, v6, :cond_46

    .line 3954
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int v16, v6, v8

    .line 3955
    .restart local v16    # "moveX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v17, v6, v8

    .line 3956
    .restart local v17    # "moveY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v6, v8

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v23, v0

    .line 3960
    .local v23, "threshold":I
    mul-int v6, v16, v16

    mul-int v8, v17, v17

    add-int/2addr v6, v8

    mul-int v8, v23, v23

    if-ge v6, v8, :cond_46

    .line 3961
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_1c4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_1c4

    .line 3962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3963
    .restart local v4    # "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x52

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 3964
    .local v3, "keyDown":Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    const-wide/16 v8, 0x1e

    add-long v10, v4, v8

    const/4 v12, 0x1

    const/16 v13, 0x52

    const/4 v14, 0x0

    move-wide v8, v4

    invoke-direct/range {v7 .. v14}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 3967
    .local v7, "keyUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v15

    .line 3968
    .local v15, "im":Landroid/hardware/input/InputManager;
    const/4 v6, 0x0

    invoke-virtual {v15, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v6

    if-eqz v6, :cond_1c1

    const/4 v6, 0x0

    invoke-virtual {v15, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v6

    if-eqz v6, :cond_1c1

    const/16 v22, 0x1

    .line 3972
    .local v22, "success":Z
    :goto_1a3
    if-nez v22, :cond_46

    .line 3973
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3974
    move-object/from16 v0, p0

    iget-object v6, v0, this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_46

    .line 3968
    .end local v22    # "success":Z
    :cond_1c1
    const/16 v22, 0x0

    goto :goto_1a3

    .line 3977
    .end local v3    # "keyDown":Landroid/view/KeyEvent;
    .end local v4    # "now":J
    .end local v7    # "keyUp":Landroid/view/KeyEvent;
    .end local v15    # "im":Landroid/hardware/input/InputManager;
    :cond_1c4
    const-string v6, "PhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to dispatch the MenuEvent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46
.end method
