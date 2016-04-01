.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final FLING_TICK_DECAY:F = 0.8f

.field private static final LOCAL_DEBUG:Z = false

.field private static final LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private mAccumulatedX:F

.field private mAccumulatedY:F

.field private mActivePointerId:I

.field private mConfigMaxFlingVelocity:F

.field private mConfigMinFlingVelocity:F

.field private mConfigTickDistance:F

.field private mConsumedMovement:Z

.field private mCurrentDeviceId:I

.field private mCurrentDeviceSupported:Z

.field private mCurrentSource:I

.field private final mFlingRunnable:Ljava/lang/Runnable;

.field private mFlingVelocity:F

.field private mFlinging:Z

.field private mLastX:F

.field private mLastY:F

.field private mPendingKeyCode:I

.field private mPendingKeyDownTime:J

.field private mPendingKeyMetaState:I

.field private mPendingKeyRepeatCount:I

.field private mStartX:F

.field private mStartY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 5971
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    .line 5972
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 5921
    iput v1, p0, mCurrentDeviceId:I

    .line 5941
    iput v1, p0, mActivePointerId:I

    .line 5963
    const/4 v0, 0x0

    iput v0, p0, mPendingKeyCode:I

    .line 6261
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    iput-object v0, p0, mFlingRunnable:Ljava/lang/Runnable;

    .line 5973
    return-void
.end method

.method static synthetic access$2200(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .prologue
    .line 5889
    iget v0, p0, mPendingKeyCode:I

    return v0
.end method

.method static synthetic access$2300(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .prologue
    .line 5889
    iget v0, p0, mPendingKeyMetaState:I

    return v0
.end method

.method static synthetic access$2400(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .registers 6
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 5889
    invoke-direct {p0, p1, p2, p3, p4}, sendKeyDownOrRepeat(JII)V

    return-void
.end method

.method static synthetic access$2532(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F
    .registers 3
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # F

    .prologue
    .line 5889
    iget v0, p0, mFlingVelocity:F

    mul-float/2addr v0, p1

    iput v0, p0, mFlingVelocity:F

    return v0
.end method

.method static synthetic access$2600(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .registers 4
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # J

    .prologue
    .line 5889
    invoke-direct {p0, p1, p2}, postFling(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 5889
    iput-boolean p1, p0, mFlinging:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .registers 4
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # J

    .prologue
    .line 5889
    invoke-direct {p0, p1, p2}, finishKeys(J)V

    return-void
.end method

.method private cancelFling()V
    .registers 2

    .prologue
    .line 6255
    iget-boolean v0, p0, mFlinging:Z

    if-eqz v0, :cond_c

    .line 6256
    iget-object v0, p0, mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)V

    .line 6257
    const/4 v0, 0x0

    iput-boolean v0, p0, mFlinging:Z

    .line 6259
    :cond_c
    return-void
.end method

.method private consumeAccumulatedMovement(JIFII)F
    .registers 8
    .param p1, "time"    # J
    .param p3, "metaState"    # I
    .param p4, "accumulator"    # F
    .param p5, "negativeKeyCode"    # I
    .param p6, "positiveKeyCode"    # I

    .prologue
    .line 6142
    :goto_0
    iget v0, p0, mConfigTickDistance:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_e

    .line 6143
    invoke-direct {p0, p1, p2, p5, p3}, sendKeyDownOrRepeat(JII)V

    .line 6144
    iget v0, p0, mConfigTickDistance:F

    add-float/2addr p4, v0

    goto :goto_0

    .line 6146
    :cond_e
    :goto_e
    iget v0, p0, mConfigTickDistance:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1b

    .line 6147
    invoke-direct {p0, p1, p2, p6, p3}, sendKeyDownOrRepeat(JII)V

    .line 6148
    iget v0, p0, mConfigTickDistance:F

    sub-float/2addr p4, v0

    goto :goto_e

    .line 6150
    :cond_1b
    return p4
.end method

.method private consumeAccumulatedMovement(JI)V
    .registers 15
    .param p1, "time"    # J
    .param p3, "metaState"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6121
    iget v1, p0, mAccumulatedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 6122
    .local v0, "absX":F
    iget v1, p0, mAccumulatedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 6123
    .local v8, "absY":F
    cmpl-float v1, v0, v8

    if-ltz v1, :cond_2c

    .line 6124
    iget v1, p0, mConfigTickDistance:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2b

    .line 6125
    iget v5, p0, mAccumulatedX:F

    const/16 v6, 0x15

    const/16 v7, 0x16

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v7}, consumeAccumulatedMovement(JIFII)F

    move-result v1

    iput v1, p0, mAccumulatedX:F

    .line 6127
    iput v9, p0, mAccumulatedY:F

    .line 6128
    iput-boolean v10, p0, mConsumedMovement:Z

    .line 6138
    :cond_2b
    :goto_2b
    return-void

    .line 6131
    :cond_2c
    iget v1, p0, mConfigTickDistance:F

    cmpl-float v1, v8, v1

    if-ltz v1, :cond_2b

    .line 6132
    iget v5, p0, mAccumulatedY:F

    const/16 v6, 0x13

    const/16 v7, 0x14

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v7}, consumeAccumulatedMovement(JIFII)F

    move-result v1

    iput v1, p0, mAccumulatedY:F

    .line 6134
    iput v9, p0, mAccumulatedX:F

    .line 6135
    iput-boolean v10, p0, mConsumedMovement:Z

    goto :goto_2b
.end method

.method private finishKeys(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 6108
    invoke-direct {p0}, cancelFling()V

    .line 6109
    invoke-direct {p0, p1, p2}, sendKeyUp(J)V

    .line 6110
    return-void
.end method

.method private finishTracking(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 6113
    iget v0, p0, mActivePointerId:I

    if-ltz v0, :cond_f

    .line 6114
    const/4 v0, -0x1

    iput v0, p0, mActivePointerId:I

    .line 6115
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6116
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6118
    :cond_f
    return-void
.end method

.method private postFling(J)Z
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 6241
    iget v2, p0, mFlingVelocity:F

    iget v3, p0, mConfigMinFlingVelocity:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1a

    .line 6242
    iget v2, p0, mConfigTickDistance:F

    iget v3, p0, mFlingVelocity:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 6243
    .local v0, "delay":J
    iget-object v2, p0, mFlingRunnable:Ljava/lang/Runnable;

    add-long v4, p1, v0

    invoke-virtual {p0, v2, v4, v5}, postAtTime(Ljava/lang/Runnable;J)Z

    .line 6249
    const/4 v2, 0x1

    .line 6251
    .end local v0    # "delay":J
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private sendKeyDownOrRepeat(JII)V
    .registers 20
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .prologue
    .line 6154
    iget v2, p0, mPendingKeyCode:I

    move/from16 v0, p3

    if-eq v2, v0, :cond_34

    .line 6155
    invoke-direct/range {p0 .. p2}, sendKeyUp(J)V

    .line 6156
    move-wide/from16 v0, p1

    iput-wide v0, p0, mPendingKeyDownTime:J

    .line 6157
    move/from16 v0, p3

    iput v0, p0, mPendingKeyCode:I

    .line 6158
    const/4 v2, 0x0

    iput v2, p0, mPendingKeyRepeatCount:I

    .line 6162
    :goto_14
    move/from16 v0, p4

    iput v0, p0, mPendingKeyMetaState:I

    .line 6171
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    new-instance v3, Landroid/view/KeyEvent;

    iget-wide v4, p0, mPendingKeyDownTime:J

    const/4 v8, 0x0

    iget v9, p0, mPendingKeyCode:I

    iget v10, p0, mPendingKeyRepeatCount:I

    iget v11, p0, mPendingKeyMetaState:I

    iget v12, p0, mCurrentDeviceId:I

    const/16 v13, 0x400

    iget v14, p0, mCurrentSource:I

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 6175
    return-void

    .line 6160
    :cond_34
    iget v2, p0, mPendingKeyRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mPendingKeyRepeatCount:I

    goto :goto_14
.end method

.method private sendKeyUp(J)V
    .registers 18
    .param p1, "time"    # J

    .prologue
    .line 6178
    iget v0, p0, mPendingKeyCode:I

    if-eqz v0, :cond_22

    .line 6183
    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, mPendingKeyDownTime:J

    const/4 v6, 0x1

    iget v7, p0, mPendingKeyCode:I

    const/4 v8, 0x0

    iget v9, p0, mPendingKeyMetaState:I

    iget v10, p0, mCurrentDeviceId:I

    const/4 v11, 0x0

    const/16 v12, 0x400

    iget v13, p0, mCurrentSource:I

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 6187
    const/4 v0, 0x0

    iput v0, p0, mPendingKeyCode:I

    .line 6189
    :cond_22
    return-void
.end method

.method private startFling(JFF)Z
    .registers 8
    .param p1, "time"    # J
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    const/4 v0, 0x0

    .line 6198
    iget v1, p0, mPendingKeyCode:I

    packed-switch v1, :pswitch_data_60

    .line 6233
    :goto_6
    invoke-direct {p0, p1, p2}, postFling(J)Z

    move-result v0

    iput-boolean v0, p0, mFlinging:Z

    .line 6234
    iget-boolean v0, p0, mFlinging:Z

    :cond_e
    return v0

    .line 6200
    :pswitch_f
    neg-float v1, p3

    iget v2, p0, mConfigMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_e

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 6202
    neg-float v0, p3

    iput v0, p0, mFlingVelocity:F

    goto :goto_6

    .line 6208
    :pswitch_24
    iget v1, p0, mConfigMinFlingVelocity:F

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_e

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 6210
    iput p3, p0, mFlingVelocity:F

    goto :goto_6

    .line 6216
    :pswitch_37
    neg-float v1, p4

    iget v2, p0, mConfigMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_e

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 6218
    neg-float v0, p4

    iput v0, p0, mFlingVelocity:F

    goto :goto_6

    .line 6224
    :pswitch_4c
    iget v1, p0, mConfigMinFlingVelocity:F

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_e

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 6226
    iput p4, p0, mFlingVelocity:F

    goto :goto_6

    .line 6198
    nop

    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_37
        :pswitch_4c
        :pswitch_f
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6099
    iget v2, p0, mCurrentDeviceId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    if-ne v2, v3, :cond_1a

    iget v2, p0, mCurrentSource:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 6101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 6102
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, finishKeys(J)V

    .line 6103
    invoke-direct {p0, v0, v1}, finishTracking(J)V

    .line 6105
    .end local v0    # "time":J
    :cond_1a
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .registers 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5977
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    .line 5978
    .local v10, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    .line 5979
    .local v5, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    .line 5980
    .local v9, "source":I
    move-object/from16 v0, p0

    iget v0, v0, mCurrentDeviceId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v5, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, mCurrentSource:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v9, :cond_b0

    .line 5981
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishKeys(J)V

    .line 5982
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishTracking(J)V

    .line 5983
    move-object/from16 v0, p0

    iput v5, v0, mCurrentDeviceId:I

    .line 5984
    move-object/from16 v0, p0

    iput v9, v0, mCurrentSource:I

    .line 5985
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCurrentDeviceSupported:Z

    .line 5986
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    .line 5987
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_b0

    .line 5990
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v15

    .line 5991
    .local v15, "xRange":Landroid/view/InputDevice$MotionRange;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v18

    .line 5992
    .local v18, "yRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v15, :cond_b0

    if-eqz v18, :cond_b0

    .line 5993
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCurrentDeviceSupported:Z

    .line 5996
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v16

    .line 5997
    .local v16, "xRes":F
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_6e

    .line 5998
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v20

    const/high16 v21, 0x42400000    # 48.0f

    div-float v16, v20, v21

    .line 6000
    :cond_6e
    invoke-virtual/range {v18 .. v18}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v19

    .line 6001
    .local v19, "yRes":F
    const/16 v20, 0x0

    cmpg-float v20, v19, v20

    if-gtz v20, :cond_80

    .line 6002
    invoke-virtual/range {v18 .. v18}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v20

    const/high16 v21, 0x42400000    # 48.0f

    div-float v19, v20, v21

    .line 6004
    :cond_80
    add-float v20, v16, v19

    const/high16 v21, 0x3f000000    # 0.5f

    mul-float v8, v20, v21

    .line 6007
    .local v8, "nominalRes":F
    const/high16 v20, 0x41400000    # 12.0f

    mul-float v20, v20, v8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mConfigTickDistance:F

    .line 6008
    const/high16 v20, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v0, v0, mConfigTickDistance:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mConfigMinFlingVelocity:F

    .line 6010
    const/high16 v20, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v0, v0, mConfigTickDistance:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mConfigMaxFlingVelocity:F

    .line 6023
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v8    # "nominalRes":F
    .end local v15    # "xRange":Landroid/view/InputDevice$MotionRange;
    .end local v16    # "xRes":F
    .end local v18    # "yRange":Landroid/view/InputDevice$MotionRange;
    .end local v19    # "yRes":F
    :cond_b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCurrentDeviceSupported:Z

    move/from16 v20, v0

    if-nez v20, :cond_b9

    .line 6096
    :cond_b8
    :goto_b8
    return-void

    .line 6028
    :cond_b9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 6029
    .local v2, "action":I
    packed-switch v2, :pswitch_data_21a

    goto :goto_b8

    .line 6031
    :pswitch_c1
    move-object/from16 v0, p0

    iget-boolean v3, v0, mFlinging:Z

    .line 6032
    .local v3, "caughtFling":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishKeys(J)V

    .line 6033
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishTracking(J)V

    .line 6034
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    .line 6035
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6036
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6037
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mStartX:F

    .line 6038
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mStartY:F

    .line 6039
    move-object/from16 v0, p0

    iget v0, v0, mStartX:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastX:F

    .line 6040
    move-object/from16 v0, p0

    iget v0, v0, mStartY:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastY:F

    .line 6041
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mAccumulatedX:F

    .line 6042
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mAccumulatedY:F

    .line 6046
    move-object/from16 v0, p0

    iput-boolean v3, v0, mConsumedMovement:Z

    goto :goto_b8

    .line 6052
    .end local v3    # "caughtFling":Z
    :pswitch_137
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v20, v0

    if-ltz v20, :cond_b8

    .line 6055
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 6056
    .local v6, "index":I
    if-gez v6, :cond_15b

    .line 6057
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishKeys(J)V

    .line 6058
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishTracking(J)V

    goto/16 :goto_b8

    .line 6062
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6063
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 6064
    .local v14, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 6065
    .local v17, "y":F
    move-object/from16 v0, p0

    iget v0, v0, mAccumulatedX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mLastX:F

    move/from16 v21, v0

    sub-float v21, v14, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mAccumulatedX:F

    .line 6066
    move-object/from16 v0, p0

    iget v0, v0, mAccumulatedY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mLastY:F

    move/from16 v21, v0

    sub-float v21, v17, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mAccumulatedY:F

    .line 6067
    move-object/from16 v0, p0

    iput v14, v0, mLastX:F

    .line 6068
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLastY:F

    .line 6071
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 6072
    .local v7, "metaState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v7}, consumeAccumulatedMovement(JI)V

    .line 6075
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_b8

    .line 6076
    move-object/from16 v0, p0

    iget-boolean v0, v0, mConsumedMovement:Z

    move/from16 v20, v0

    if-eqz v20, :cond_207

    move-object/from16 v0, p0

    iget v0, v0, mPendingKeyCode:I

    move/from16 v20, v0

    if-eqz v20, :cond_207

    .line 6078
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, mConfigMaxFlingVelocity:F

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6079
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    .line 6080
    .local v12, "vx":F
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 6081
    .local v13, "vy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, startFling(JFF)Z

    move-result v20

    if-nez v20, :cond_207

    .line 6082
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishKeys(J)V

    .line 6085
    .end local v12    # "vx":F
    .end local v13    # "vy":F
    :cond_207
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishTracking(J)V

    goto/16 :goto_b8

    .line 6091
    .end local v6    # "index":I
    .end local v7    # "metaState":I
    .end local v14    # "x":F
    .end local v17    # "y":F
    :pswitch_20e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishKeys(J)V

    .line 6092
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, finishTracking(J)V

    goto/16 :goto_b8

    .line 6029
    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_137
        :pswitch_137
        :pswitch_20e
    .end packed-switch
.end method
