.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p2, "x1"    # Lcom/android/server/GestureLauncherService$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, <init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .registers 26
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 358
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->access$1000(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v16, v10, v20

    .line 364
    .local v16, "totalDuration":J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    .line 366
    .local v18, "values":[F
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v12, v0

    .line 367
    .local v12, "sensor1OnTime":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x1

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v14, v0

    .line 368
    .local v14, "sensor2OnTime":J
    const/16 v19, 0x2

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 371
    .local v9, "extra":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->access$1100(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v2, v10, v20

    .line 372
    .local v2, "gestureOnTimeDiff":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->access$1200(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v4, v12, v20

    .line 373
    .local v4, "sensor1OnTimeDiff":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->access$1300(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v6, v14, v20

    .line 374
    .local v6, "sensor2OnTimeDiff":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->access$1400(Lcom/android/server/GestureLauncherService;)I

    move-result v19

    sub-int v8, v9, v19

    .line 378
    .local v8, "extraDiff":I
    const-wide/16 v20, 0x0

    cmp-long v19, v2, v20

    if-ltz v19, :cond_85

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-ltz v19, :cond_85

    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-gez v19, :cond_86

    .line 399
    :cond_85
    :goto_85
    return-void

    .line 389
    :cond_86
    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J
    invoke-static {v0, v10, v11}, Lcom/android/server/GestureLauncherService;->access$1102(Lcom/android/server/GestureLauncherService;J)J

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J
    invoke-static {v0, v12, v13}, Lcom/android/server/GestureLauncherService;->access$1202(Lcom/android/server/GestureLauncherService;J)J

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J
    invoke-static {v0, v14, v15}, Lcom/android/server/GestureLauncherService;->access$1302(Lcom/android/server/GestureLauncherService;J)J

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I
    invoke-static {v0, v9}, Lcom/android/server/GestureLauncherService;->access$1402(Lcom/android/server/GestureLauncherService;I)I

    goto :goto_85
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 354
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 332
    iget-object v0, p0, this$0:Lcom/android/server/GestureLauncherService;

    # getter for: Lcom/android/server/GestureLauncherService;->mRegistered:Z
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$700(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 349
    :cond_8
    :goto_8
    return-void

    .line 336
    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, this$0:Lcom/android/server/GestureLauncherService;

    # getter for: Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 342
    iget-object v0, p0, this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->access$900(Lcom/android/server/GestureLauncherService;ZI)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 344
    iget-object v0, p0, this$0:Lcom/android/server/GestureLauncherService;

    # getter for: Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$300(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 345
    invoke-direct {p0, p1}, trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_8
.end method
