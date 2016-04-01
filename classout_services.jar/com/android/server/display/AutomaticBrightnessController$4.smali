.class Lcom/android/server/display/AutomaticBrightnessController$4;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .prologue
    .line 1439
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1475
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 1442
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1444
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v4

    .line 1447
    .local v0, "lux":F
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1448
    :try_start_19
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1449
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    invoke-static {v1, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1450
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    move-result-object v1

    iget-object v5, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addPoint(FI)V

    .line 1451
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V
    invoke-static {v1, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1452
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v5, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1453
    monitor-exit v4

    .line 1470
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_4c
    :goto_4c
    return-void

    .line 1455
    .restart local v0    # "lux":F
    .restart local v2    # "time":J
    :cond_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_19 .. :try_end_4e} :catchall_93

    .line 1457
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    if-nez v1, :cond_6e

    .line 1458
    const-string v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DAB] onSensorChanged : 1st lux : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_6e
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2600(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1464
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1465
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2702(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1466
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F
    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1467
    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v2

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_4c

    .line 1455
    :catchall_93
    move-exception v1

    :try_start_94
    monitor-exit v4
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v1
.end method
