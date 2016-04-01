.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 711
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 714
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 715
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 716
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[DAB] setLightSensorEnabled : registerListenerRunnable"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 718
    const/4 v1, 0x0

    .line 719
    .local v1, "mode":I
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 720
    const/4 v1, 0x1

    .line 722
    :cond_2d
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 723
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$800(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    const/16 v4, 0x27

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    .line 725
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v2

    const-string v3, "SensorHubAutoBrightnessEnabled::registerListener done"

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 733
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .end local v1    # "mode":I
    :goto_52
    return-void

    .line 727
    :cond_53
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 729
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTiltListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTiltSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1500(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 731
    iget-object v2, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v2

    const-string/jumbo v3, "setLightSensorEnabled::registerListener done"

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto :goto_52
.end method
