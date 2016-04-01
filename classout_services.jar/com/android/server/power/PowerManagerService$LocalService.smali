.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .prologue
    .line 6579
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 6579
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public disableWakeLock(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 6684
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] disableWakeLock: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6685
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$13400(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    .line 6686
    return-void
.end method

.method public getLowPowerModeEnabled()Z
    .registers 3

    .prologue
    .line 6627
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6628
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6629
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public powerHint(II)V
    .registers 4
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 6666
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;II)V

    .line 6667
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .prologue
    .line 6634
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6635
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6636
    monitor-exit v1

    .line 6637
    return-void

    .line 6636
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .registers 2
    .param p1, "screenBrightness"    # I

    .prologue
    .line 6593
    return-void
.end method

.method public setButtonTimeoutOverrideFromWindowManager(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 6677
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$13300(Lcom/android/server/power/PowerManagerService;J)V

    .line 6678
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 6641
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)V

    .line 6642
    return-void
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .prologue
    .line 6651
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 6652
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .prologue
    .line 6646
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 6647
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .registers 4
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 6597
    packed-switch p1, :pswitch_data_12

    .line 6605
    const/4 p1, 0x0

    .line 6608
    :pswitch_4
    const/4 v0, -0x1

    if-lt p2, v0, :cond_b

    const/16 v0, 0xff

    if-le p2, v0, :cond_c

    .line 6610
    :cond_b
    const/4 p2, -0x1

    .line 6612
    :cond_c
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$13000(Lcom/android/server/power/PowerManagerService;II)V

    .line 6613
    return-void

    .line 6597
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .registers 3
    .param p1, "timeMs"    # I

    .prologue
    .line 6622
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    .line 6623
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .registers 3
    .param p1, "screenBrightness"    # I

    .prologue
    .line 6582
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0xff

    if-le p1, v0, :cond_8

    .line 6584
    :cond_7
    const/4 p1, -0x1

    .line 6586
    :cond_8
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$12900(Lcom/android/server/power/PowerManagerService;I)V

    .line 6587
    return-void
.end method

.method public setScreenDimDurationOverrideFromWindowManager(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 6672
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$13200(Lcom/android/server/power/PowerManagerService;J)V

    .line 6673
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 6617
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$13100(Lcom/android/server/power/PowerManagerService;J)V

    .line 6618
    return-void
.end method

.method public uidGone(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 6661
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 6662
    return-void
.end method

.method public updateUidProcState(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 6656
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 6657
    return-void
.end method
