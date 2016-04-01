.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 3

    .prologue
    .line 3833
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3834
    const/4 v0, 0x0

    iput v0, p0, mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .registers 2

    .prologue
    .line 4035
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4036
    return-void
.end method

.method public onColorFadeExit(Z)V
    .registers 9
    .param p1, "exit"    # Z

    .prologue
    .line 4021
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[input device light] onColorFadeExit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_4a

    .line 4023
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$4102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4024
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4025
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 4026
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 4030
    :cond_4a
    return-void
.end method

.method public onDisplayStateChange(II)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 3900
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3901
    :try_start_8
    iget v1, p0, mDisplayState:I

    if-eq v1, p2, :cond_47

    .line 3902
    iput p2, p0, mDisplayState:I

    .line 3904
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 3905
    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    if-ne p2, v3, :cond_49

    .line 3914
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 3915
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3916
    const-string/jumbo v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 3919
    :cond_2b
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3502(Lcom/android/server/power/PowerManagerService;I)I

    .line 3920
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$3602(Lcom/android/server/power/PowerManagerService;J)J

    .line 3921
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3973
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_47
    :goto_47
    monitor-exit v2

    .line 3974
    return-void

    .line 3924
    .restart local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_49
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 3925
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3926
    const-string/jumbo v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 3938
    :cond_5f
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 3973
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :catchall_6f
    move-exception v1

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public onProximityNegative()V
    .registers 10

    .prologue
    .line 3869
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3871
    :try_start_7
    const-string v0, "PowerManagerService"

    const-string v1, "[s] DisplayPowerCallbacks : onProximityNegative()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3874
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 3876
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, " proximity far"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3084(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 3886
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x10

    # setter for: Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3102(Lcom/android/server/power/PowerManagerService;I)I

    .line 3888
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    .line 3891
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 3892
    monitor-exit v8

    .line 3893
    return-void

    .line 3892
    :catchall_49
    move-exception v0

    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public onProximityPositive()V
    .registers 9

    .prologue
    .line 3849
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3851
    :try_start_7
    const-string v0, "PowerManagerService"

    const-string v1, "[s] DisplayPowerCallbacks : onProximityPositive()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3854
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 3858
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, " proximity close"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2884(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 3860
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 3863
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 3864
    monitor-exit v7

    .line 3865
    return-void

    .line 3864
    :catchall_36
    move-exception v0

    monitor-exit v7
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public onSetInteractiveNeeded(II)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    const-wide/16 v4, 0x32

    .line 3979
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 3998
    .local v0, "setInteractiveTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1f

    .line 3999
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 4000
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZI)V
    invoke-static {v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;ZI)V

    .line 4001
    const-string/jumbo v1, "nativeSetInteractive(false)"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 4015
    :cond_1e
    :goto_1e
    return-void

    .line 4004
    :cond_1f
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 4005
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZI)V
    invoke-static {v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;ZI)V

    .line 4006
    const-string/jumbo v1, "nativeSetInteractive(true)"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto :goto_1e
.end method

.method public onStateChanged()V
    .registers 4

    .prologue
    .line 3838
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3840
    :try_start_7
    const-string v0, "PowerManagerService"

    const-string v2, "[s] DisplayPowerCallbacks : onStateChanged()"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 3843
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 3844
    monitor-exit v1

    .line 3845
    return-void

    .line 3844
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .registers 2

    .prologue
    .line 4040
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4041
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4045
    monitor-enter p0

    .line 4046
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 4047
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method
