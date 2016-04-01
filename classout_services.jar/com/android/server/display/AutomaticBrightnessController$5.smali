.class Lcom/android/server/display/AutomaticBrightnessController$5;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


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
    .line 1479
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v8, 0x1

    .line 1482
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1483
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_c2

    .line 1484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1485
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoBrightnessContext()Landroid/hardware/scontext/SContextAutoBrightness;

    move-result-object v0

    .line 1486
    .local v0, "autoBrightness":Landroid/hardware/scontext/SContextAutoBrightness;
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoBrightness;->getAmbientLux()I

    move-result v5

    int-to-float v5, v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2902(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1487
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoBrightness;->getCandela()I

    move-result v5

    int-to-float v5, v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$3002(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1489
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1490
    :try_start_36
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1491
    const-string v4, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] onSensorHubChanged : lux = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$2900(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    invoke-static {v4, v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1493
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    move-result-object v4

    iget-object v6, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2900(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    iget-object v7, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I
    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addPoint(FI)V

    .line 1495
    :cond_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_36 .. :try_end_78} :catchall_c3

    .line 1497
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v4

    if-nez v4, :cond_ae

    .line 1498
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DAB] onSensorHubChanged : 1st lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2900(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 1st candela = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$3000(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_ae
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # += operator for: Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2512(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1503
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J
    invoke-static {v4, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$3102(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1504
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$3202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1506
    iget-object v4, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1508
    .end local v0    # "autoBrightness":Landroid/hardware/scontext/SContextAutoBrightness;
    .end local v2    # "time":J
    :cond_c2
    return-void

    .line 1495
    .restart local v0    # "autoBrightness":Landroid/hardware/scontext/SContextAutoBrightness;
    .restart local v2    # "time":J
    :catchall_c3
    move-exception v4

    :try_start_c4
    monitor-exit v5
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v4
.end method
