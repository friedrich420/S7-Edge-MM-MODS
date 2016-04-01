.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticJoystickHandler"
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SyntheticJoystickHandler"


# instance fields
.field private mLastXDirection:I

.field private mLastXKeyCode:I

.field private mLastYDirection:I

.field private mLastYKeyCode:I

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    .prologue
    .line 5766
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    .line 5767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 5768
    return-void
.end method

.method static synthetic access$2100(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 5756
    invoke-direct {p0, p1}, cancel(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private cancel(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, removeMessages(I)V

    .line 5804
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, removeMessages(I)V

    .line 5805
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, update(Landroid/view/MotionEvent;Z)V

    .line 5806
    return-void
.end method

.method private joystickAxisValueToDirection(F)I
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 5876
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 5877
    const/4 v0, 0x1

    .line 5881
    :goto_7
    return v0

    .line 5878
    :cond_8
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 5879
    const/4 v0, -0x1

    goto :goto_7

    .line 5881
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private update(Landroid/view/MotionEvent;Z)V
    .registers 34
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "synthesizeNewKeys"    # Z

    .prologue
    .line 5809
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 5810
    .local v4, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 5811
    .local v11, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 5812
    .local v12, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 5814
    .local v15, "source":I
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, joystickAxisValueToDirection(F)I

    move-result v16

    .line 5816
    .local v16, "xDirection":I
    if-nez v16, :cond_2a

    .line 5817
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, joystickAxisValueToDirection(F)I

    move-result v16

    .line 5820
    :cond_2a
    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, joystickAxisValueToDirection(F)I

    move-result v30

    .line 5822
    .local v30, "yDirection":I
    if-nez v30, :cond_44

    .line 5823
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, joystickAxisValueToDirection(F)I

    move-result v30

    .line 5826
    :cond_44
    move-object/from16 v0, p0

    iget v6, v0, mLastXDirection:I

    move/from16 v0, v16

    if-eq v0, v6, :cond_b4

    .line 5827
    move-object/from16 v0, p0

    iget v6, v0, mLastXKeyCode:I

    if-eqz v6, :cond_77

    .line 5828
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, removeMessages(I)V

    .line 5829
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v17, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, mLastXKeyCode:I

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5832
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, mLastXKeyCode:I

    .line 5835
    :cond_77
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, mLastXDirection:I

    .line 5837
    if-eqz v16, :cond_b4

    if-eqz p2, :cond_b4

    .line 5838
    if-lez v16, :cond_131

    const/16 v6, 0x16

    :goto_85
    move-object/from16 v0, p0

    iput v6, v0, mLastXKeyCode:I

    .line 5840
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mLastXKeyCode:I

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5843
    .local v3, "e":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5844
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5845
    .local v2, "m":Landroid/os/Message;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5846
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5850
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/view/KeyEvent;
    :cond_b4
    move-object/from16 v0, p0

    iget v6, v0, mLastYDirection:I

    move/from16 v0, v30

    if-eq v0, v6, :cond_130

    .line 5851
    move-object/from16 v0, p0

    iget v6, v0, mLastYKeyCode:I

    if-eqz v6, :cond_f3

    .line 5852
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, removeMessages(I)V

    .line 5853
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/view/ViewRootImpl;

    new-instance v17, Landroid/view/KeyEvent;

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mLastYKeyCode:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x400

    move-wide/from16 v18, v4

    move-wide/from16 v20, v4

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v29, v15

    invoke-direct/range {v17 .. v29}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5856
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, mLastYKeyCode:I

    .line 5859
    :cond_f3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mLastYDirection:I

    .line 5861
    if-eqz v30, :cond_130

    if-eqz p2, :cond_130

    .line 5862
    if-lez v30, :cond_135

    const/16 v6, 0x14

    :goto_101
    move-object/from16 v0, p0

    iput v6, v0, mLastYKeyCode:I

    .line 5864
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mLastYKeyCode:I

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5867
    .restart local v3    # "e":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5868
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5869
    .restart local v2    # "m":Landroid/os/Message;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5870
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5873
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/view/KeyEvent;
    :cond_130
    return-void

    .line 5838
    :cond_131
    const/16 v6, 0x15

    goto/16 :goto_85

    .line 5862
    :cond_135
    const/16 v6, 0x13

    goto :goto_101
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5772
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_38

    .line 5787
    :cond_5
    :goto_5
    return-void

    .line 5775
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 5776
    .local v2, "oldEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v5, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5779
    .local v0, "e":Landroid/view/KeyEvent;
    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v3, :cond_5

    .line 5780
    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5781
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5782
    .local v1, "m":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5783
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v1, v4, v5}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 5772
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public process(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 5798
    const-string v0, "SyntheticJoystickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5800
    :goto_23
    return-void

    .line 5792
    :pswitch_24
    invoke-direct {p0, p1}, cancel(Landroid/view/MotionEvent;)V

    goto :goto_23

    .line 5795
    :pswitch_28
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, update(Landroid/view/MotionEvent;Z)V

    goto :goto_23

    .line 5790
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_28
        :pswitch_24
    .end packed-switch
.end method
