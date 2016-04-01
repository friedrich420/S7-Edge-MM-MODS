.class Lcom/android/server/display/AutomaticBrightnessController$2;
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
    .line 736
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 739
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 740
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "[DAB] setLightSensorEnabled : unregisterListenerRunnable"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 742
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$800(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 744
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v0

    const-string v1, "SensorHubAutoBrightnessEnabled::unregisterListener done"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 750
    :goto_36
    return-void

    .line 746
    :cond_37
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 747
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTiltListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 748
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v0

    const-string/jumbo v1, "setLightSensorEnabled::unregisterListener done"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto :goto_36
.end method
