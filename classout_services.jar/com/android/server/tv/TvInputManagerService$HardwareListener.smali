.class final Lcom/android/server/tv/TvInputManagerService$HardwareListener;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHardwareManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HardwareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .prologue
    .line 2498
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 2498
    invoke-direct {p0, p1}, <init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method


# virtual methods
.method public onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 2508
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2509
    :try_start_7
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2511
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2512
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_49

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 2514
    :try_start_37
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_49

    goto :goto_1f

    .line 2515
    :catch_3f
    move-exception v0

    .line 2516
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHardwareAdded"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 2519
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_49

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 2520
    return-void
.end method

.method public onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 2524
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2525
    :try_start_7
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2527
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2528
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_49

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 2530
    :try_start_37
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_49

    goto :goto_1f

    .line 2531
    :catch_3f
    move-exception v0

    .line 2532
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHardwareRemoved"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 2535
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_49

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 2536
    return-void
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 2540
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2541
    :try_start_7
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2543
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2544
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_49

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 2546
    :try_start_37
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_49

    goto :goto_1f

    .line 2547
    :catch_3f
    move-exception v0

    .line 2548
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHdmiDeviceAdded"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 2551
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_49

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 2552
    return-void
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 2556
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2557
    :try_start_7
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2559
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2560
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_49

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 2562
    :try_start_37
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_49

    goto :goto_1f

    .line 2563
    :catch_3f
    move-exception v0

    .line 2564
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHdmiDeviceRemoved"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 2567
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_49

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 2568
    return-void
.end method

.method public onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 2572
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2574
    :try_start_7
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 2585
    const/4 v0, 0x0

    .line 2588
    .local v0, "state":Ljava/lang/Integer;
    :goto_f
    if-eqz v0, :cond_20

    .line 2589
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V
    invoke-static {v1, p1, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->access$6600(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 2591
    :cond_20
    monitor-exit v2

    .line 2592
    return-void

    .line 2576
    .end local v0    # "state":Ljava/lang/Integer;
    :pswitch_22
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2577
    .restart local v0    # "state":Ljava/lang/Integer;
    goto :goto_f

    .line 2581
    .end local v0    # "state":Ljava/lang/Integer;
    :pswitch_28
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2582
    .restart local v0    # "state":Ljava/lang/Integer;
    goto :goto_f

    .line 2591
    .end local v0    # "state":Ljava/lang/Integer;
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1

    .line 2574
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 2501
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2502
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V
    invoke-static {v0, p1, p2, v2}, Lcom/android/server/tv/TvInputManagerService;->access$6600(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 2503
    monitor-exit v1

    .line 2504
    return-void

    .line 2503
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method
