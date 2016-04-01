.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    .prologue
    .line 5466
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5467
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 5468
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5574
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, mLastTime:J

    .line 5579
    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_17

    .line 5580
    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5582
    :cond_17
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .registers 33
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5474
    .local v4, "curTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, mLastTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_23

    .line 5477
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5478
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5479
    move-object/from16 v0, p0

    iput-wide v4, v0, mLastTime:J

    .line 5482
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 5483
    .local v27, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 5484
    .local v11, "metaState":I
    packed-switch v27, :pswitch_data_17a

    .line 5509
    :goto_2e
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string v7, "X"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 5510
    .local v29, "xOff":F
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string v7, "Y"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 5518
    .local v30, "yOff":F
    const/4 v9, 0x0

    .line 5519
    .local v9, "keycode":I
    const/16 v28, 0x0

    .line 5520
    .local v28, "movement":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5521
    .local v2, "accel":F
    cmpl-float v3, v29, v30

    if-lez v3, :cond_14e

    .line 5522
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    .line 5523
    if-eqz v28, :cond_77

    .line 5524
    if-lez v28, :cond_14a

    const/16 v9, 0x16

    .line 5526
    :goto_69
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5527
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5539
    :cond_77
    :goto_77
    if-eqz v9, :cond_178

    .line 5540
    if-gez v28, :cond_80

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 5541
    :cond_80
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v26, v0

    .line 5545
    .local v26, "accelMovement":I
    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_a9

    .line 5548
    add-int/lit8 v28, v28, -0x1

    .line 5549
    sub-int v10, v26, v28

    .line 5550
    .local v10, "repeatCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5555
    .end local v10    # "repeatCount":I
    :cond_a9
    :goto_a9
    if-lez v28, :cond_174

    .line 5558
    add-int/lit8 v28, v28, -0x1

    .line 5559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5560
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5564
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_a9

    .line 5486
    .end local v2    # "accel":F
    .end local v9    # "keycode":I
    .end local v26    # "accelMovement":I
    .end local v28    # "movement":I
    .end local v29    # "xOff":F
    .end local v30    # "yOff":F
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5487
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5488
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_2e

    .line 5494
    :pswitch_11d
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5495
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5496
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_2e

    .line 5524
    .restart local v2    # "accel":F
    .restart local v9    # "keycode":I
    .restart local v28    # "movement":I
    .restart local v29    # "xOff":F
    .restart local v30    # "yOff":F
    :cond_14a
    const/16 v9, 0x15

    goto/16 :goto_69

    .line 5529
    :cond_14e
    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_77

    .line 5530
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    .line 5531
    if-eqz v28, :cond_77

    .line 5532
    if-lez v28, :cond_171

    const/16 v9, 0x14

    .line 5534
    :goto_161
    move-object/from16 v0, p0

    iget-object v3, v0, mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5535
    move-object/from16 v0, p0

    iget-object v3, v0, mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_77

    .line 5532
    :cond_171
    const/16 v9, 0x13

    goto :goto_161

    .line 5569
    .restart local v26    # "accelMovement":I
    :cond_174
    move-object/from16 v0, p0

    iput-wide v4, v0, mLastTime:J

    .line 5571
    .end local v26    # "accelMovement":I
    :cond_178
    return-void

    .line 5484
    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_11d
    .end packed-switch
.end method
