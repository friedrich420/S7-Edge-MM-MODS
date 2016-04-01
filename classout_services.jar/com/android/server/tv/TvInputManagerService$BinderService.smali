.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .prologue
    .line 783
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 783
    invoke-direct {p0, p1}, <init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureParentalControlsPermission()V
    .registers 3

    .prologue
    .line 996
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 999
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have parental controls permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_16
    return-void
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1496
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1498
    const/4 v0, 0x0

    .line 1509
    :goto_f
    return-object v0

    .line 1501
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1502
    .local v6, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1503
    .local v4, "callingUid":I
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "acquireTvInputHardware"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v4, p4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .line 1506
    .local v5, "resolvedUserId":I
    :try_start_24
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_35

    move-result-object v0

    .line 1509
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :catchall_35
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 963
    invoke-direct {p0}, ensureParentalControlsPermission()V

    .line 964
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "addBlockedRating"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 966
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 968
    .local v0, "identity":J
    :try_start_17
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_37

    .line 969
    :try_start_1e
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 970
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 972
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_34

    .line 974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    return-void

    .line 972
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 974
    :catchall_37
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 19
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1626
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_16

    .line 1629
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1632
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1633
    .local v10, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1634
    .local v6, "callingUid":I
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    move/from16 v0, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1637
    .local v7, "resolvedUserId":I
    const/4 v8, 0x0

    .line 1638
    .local v8, "hardwareInputId":Ljava/lang/String;
    :try_start_2d
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_be

    .line 1639
    :try_start_34
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v13

    .line 1640
    .local v13, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_63

    .line 1641
    const-string v2, "TvInputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const/4 v2, 0x0

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_34 .. :try_end_5f} :catchall_bb

    .line 1657
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_62
    return v2

    .line 1644
    :cond_63
    :try_start_63
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_6f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1645
    .local v12, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 1647
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1652
    .end local v12    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_63 .. :try_end_a6} :catchall_bb

    .line 1653
    :try_start_a6
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    if-eqz v8, :cond_c3

    move-object v3, v8

    :goto_af
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    :try_end_b6
    .catchall {:try_start_a6 .. :try_end_b6} :catchall_be

    move-result v2

    .line 1657
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_62

    .line 1652
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_bb
    move-exception v2

    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw v2
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    .line 1657
    :catchall_be
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_c3
    move-object v3, p1

    .line 1653
    goto :goto_af
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .prologue
    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1318
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "createOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1320
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1322
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1324
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1329
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1331
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    return-void

    .line 1326
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1327
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in createOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1329
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1331
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1326
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;II)V
    .registers 22
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "seq"    # I
    .param p4, "userId"    # I

    .prologue
    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1008
    .local v8, "callingUid":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "createSession"

    move/from16 v0, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v3, v6, v8, v0, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v9

    .line 1010
    .local v9, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1012
    .local v12, "identity":J
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_f3

    .line 1013
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3, v9}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v15

    .line 1014
    .local v15, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1015
    .local v11, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v11, :cond_66

    .line 1016
    const-string v3, "TvInputManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find input state for inputId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1018
    monitor-exit v16
    :try_end_62
    .catchall {:try_start_22 .. :try_end_62} :catchall_f0

    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1053
    :goto_65
    return-void

    .line 1020
    :cond_66
    :try_start_66
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    .line 1021
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1022
    .local v14, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v14, :cond_93

    .line 1023
    new-instance v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v14, v3, v6, v9, v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1024
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v3, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_93
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1029
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    monitor-exit v16
    :try_end_a9
    .catchall {:try_start_66 .. :try_end_a9} :catchall_f0

    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_65

    .line 1033
    .restart local v5    # "info":Landroid/media/tv/TvInputInfo;
    :cond_ad
    :try_start_ad
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 1034
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1038
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_e4

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    invoke-static {v3, v6, v4, v9}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    .line 1049
    :goto_df
    monitor-exit v16
    :try_end_e0
    .catchall {:try_start_ad .. :try_end_e0} :catchall_f0

    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_65

    .line 1047
    :cond_e4
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    invoke-static {v3, v6, v9}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    goto :goto_df

    .line 1049
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v15    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_f0
    move-exception v3

    monitor-exit v16
    :try_end_f2
    .catchall {:try_start_e4 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v3
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    .line 1051
    :catchall_f3
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .prologue
    .line 1141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1142
    .local v0, "callingUid":I
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string/jumbo v8, "dispatchSurfaceChanged"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v6, v7, v0, p5, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1144
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1146
    .local v2, "identity":J
    :try_start_15
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_53

    .line 1148
    :try_start_1c
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1150
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1152
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 1153
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_40} :catch_45
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_40} :catch_58
    .catchall {:try_start_1c .. :try_end_40} :catchall_50

    .line 1159
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v7
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_50

    .line 1161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    return-void

    .line 1156
    :catch_45
    move-exception v6

    move-object v1, v6

    .line 1157
    .local v1, "e":Ljava/lang/Exception;
    :goto_47
    :try_start_47
    const-string v6, "TvInputManagerService"

    const-string/jumbo v8, "error in dispatchSurfaceChanged"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 1159
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v6

    monitor-exit v7
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_50

    :try_start_52
    throw v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 1161
    :catchall_53
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1156
    :catch_58
    move-exception v6

    move-object v1, v6

    goto :goto_47
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1691
    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v18, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1692
    .local v12, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "android.permission.DUMP"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_48

    .line 1694
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Permission Denial: can\'t dump TvInputManager from pid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", uid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    :goto_47
    return-void

    .line 1699
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 1700
    :try_start_53
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "User Ids (Current user: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "):"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1702
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_b9

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 1704
    .local v16, "userId":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1702
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    .line 1706
    .end local v16    # "userId":I
    :cond_b9
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1708
    const/4 v8, 0x0

    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_5b4

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 1710
    .restart local v16    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v17

    .line 1711
    .local v17, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UserState ("

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "):"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1714
    const-string/jumbo v18, "inputMap: inputId -> TvInputState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1716
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_131
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_173

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1717
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_131

    .line 1807
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "userId":I
    .end local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_170
    move-exception v18

    monitor-exit v19
    :try_end_172
    .catchall {:try_start_53 .. :try_end_172} :catchall_170

    throw v18

    .line 1719
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v16    # "userId":I
    .restart local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_173
    :try_start_173
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1721
    const-string/jumbo v18, "packageSet:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1723
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_189
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_199

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1724
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_189

    .line 1726
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_199
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1728
    const-string v18, "clientStateMap: ITvInputClient -> ClientState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1731
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :goto_1b2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_280

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1732
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 1733
    .local v3, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1737
    const-string/jumbo v18, "sessionTokens:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1739
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_204
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    .line 1740
    .local v15, "token":Landroid/os/IBinder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_204

    .line 1742
    .end local v15    # "token":Landroid/os/IBinder;
    :cond_22f
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1744
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "clientTokens: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$5700(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "userId: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$5800(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_1b2

    .line 1749
    .end local v3    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_280
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1751
    const-string/jumbo v18, "serviceStateMap: ComponentName -> ServiceState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1754
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_29a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3b1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1755
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1756
    .local v13, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1760
    const-string/jumbo v18, "sessionTokens:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1762
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2ec
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_317

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    .line 1763
    .restart local v15    # "token":Landroid/os/IBinder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ec

    .line 1765
    .end local v15    # "token":Landroid/os/IBinder;
    :cond_317
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1767
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "service: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callback: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bound: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "reconnecting: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_29a

    .line 1774
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_3b1
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1776
    const-string/jumbo v18, "sessionStateMap: ITvInputSession -> SessionState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1779
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3cb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_55a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1780
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1781
    .local v14, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1784
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "info: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "client: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "seq: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callingUid: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "userId: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sessionToken: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "session: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1791
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "logUri: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$5900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "hardwareSessionToken: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_3cb

    .line 1795
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v14    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_55a
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1797
    const-string v18, "callbackSet:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1799
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_56f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_585

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 1800
    .local v2, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_56f

    .line 1802
    .end local v2    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    :cond_585
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1804
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mainSessionToken: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1708
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_bd

    .line 1807
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "userId":I
    .end local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_5b4
    monitor-exit v19
    :try_end_5b5
    .catchall {:try_start_173 .. :try_end_5b5} :catchall_170

    goto/16 :goto_47
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1604
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 1607
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1610
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1611
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1612
    .local v0, "callingUid":I
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string/jumbo v6, "getAvailableTvStreamConfigList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1615
    .local v1, "resolvedUserId":I
    :try_start_2b
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_39

    move-result-object v4

    .line 1618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_39
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    iget-object v9, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const-string/jumbo v12, "getBlockedRatings"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v9, v10, v11, p1, v12}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 945
    .local v7, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 947
    .local v2, "identity":J
    :try_start_15
    iget-object v9, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_47

    .line 948
    :try_start_1c
    iget-object v9, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9, v7}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v8

    .line 949
    .local v8, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v6, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/tv/TvContentRating;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_31
    if-ge v1, v4, :cond_3f

    aget-object v5, v0, v1

    .line 952
    .local v5, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v5}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 954
    .end local v5    # "rating":Landroid/media/tv/TvContentRating;
    :cond_3f
    monitor-exit v10
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_44

    .line 957
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    .line 955
    .end local v0    # "arr$":[Landroid/media/tv/TvContentRating;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_44
    move-exception v9

    :try_start_45
    monitor-exit v10
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v9
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 957
    :catchall_47
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1535
    iget-object v11, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "android.permission.DVB_DEVICE"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_16

    .line 1537
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Requires DVB_DEVICE permission"

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1540
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1542
    .local v8, "identity":J
    :try_start_1a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v4, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v2, Ljava/io/File;

    const-string v11, "/dev"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1544
    .local v2, "devDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2c
    if-ge v6, v7, :cond_5b

    aget-object v5, v1, v6

    .line 1545
    .local v5, "fileName":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5400()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1546
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_58

    .line 1547
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1548
    .local v0, "adapterId":I
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1549
    .local v3, "deviceId":I
    new-instance v11, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v11, v0, v3}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v0    # "adapterId":I
    .end local v3    # "deviceId":I
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1552
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_5b
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_5e
    .catchall {:try_start_1a .. :try_end_5e} :catchall_63

    move-result-object v11

    .line 1554
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "devDirectory":Ljava/io/File;
    .end local v4    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_63
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1479
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1481
    const/4 v2, 0x0

    .line 1488
    :goto_f
    return-object v2

    .line 1484
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1486
    .local v0, "identity":J
    :try_start_14
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    move-result-object v2

    .line 1488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "getTvContentRatingSystemList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 839
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 841
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 842
    :try_start_1c
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 843
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 844
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 846
    :catchall_2e
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 12
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 805
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string/jumbo v8, "getTvInputInfo"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 807
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 809
    .local v0, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3c

    .line 810
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 811
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 812
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_34

    const/4 v5, 0x0

    :goto_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_39

    .line 815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    .line 812
    :cond_34
    :try_start_34
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    goto :goto_2f

    .line 813
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_39
    move-exception v5

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 815
    :catchall_3c
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v7, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string/jumbo v10, "getTvInputList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v7, v8, v9, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 788
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 790
    .local v2, "identity":J
    :try_start_15
    iget-object v7, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4a

    .line 791
    :try_start_1c
    iget-object v7, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v7, v4}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 792
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v1, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 794
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 797
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .end local v5    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_47
    move-exception v7

    monitor-exit v8
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_47

    :try_start_49
    throw v7
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 799
    :catchall_4a
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 796
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4f
    :try_start_4f
    monitor-exit v8
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_47

    .line 799
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 12
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 821
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string/jumbo v8, "getTvInputState"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 823
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 825
    .local v0, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3c

    .line 826
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 827
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 828
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_34

    const/4 v5, 0x0

    :goto_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_39

    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 828
    :cond_34
    :try_start_34
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v5

    goto :goto_2f

    .line 829
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_39
    move-exception v5

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 831
    :catchall_3c
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 896
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "isParentalControlsEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 898
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 900
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_32

    .line 901
    :try_start_1c
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 902
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z

    move-result v4

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    .line 905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 903
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 905
    :catchall_32
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 927
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "isRatingBlocked"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 929
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 931
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_36

    .line 932
    :try_start_1c
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 933
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result v4

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_33

    .line 937
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 935
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 937
    :catchall_36
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSingleSessionActive(I)Z
    .registers 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1664
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1665
    .local v0, "callingUid":I
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const-string/jumbo v10, "isSingleSessionActive"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v8, v9, v0, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1668
    .local v1, "resolvedUserId":I
    :try_start_18
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_6f

    .line 1669
    :try_start_1f
    iget-object v9, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9, v1}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1670
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v6, :cond_34

    .line 1671
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_6c

    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_33
    return v6

    .line 1672
    :cond_34
    :try_start_34
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v11, :cond_66

    .line 1673
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1676
    .local v4, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_61

    const/4 v9, 0x1

    aget-object v9, v4, v9

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_66

    .line 1678
    :cond_61
    monitor-exit v8
    :try_end_62
    .catchall {:try_start_34 .. :try_end_62} :catchall_6c

    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    .line 1681
    .end local v4    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_66
    :try_start_66
    monitor-exit v8
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6c

    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_33

    .line 1682
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6c
    move-exception v6

    :try_start_6d
    monitor-exit v8
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v6
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 1684
    :catchall_6f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 1561
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.DVB_DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_17

    .line 1563
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires DVB_DEVICE permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1566
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1569
    .local v2, "identity":J
    packed-switch p2, :pswitch_data_b6

    .line 1583
    :try_start_1e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DVB device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_37

    .line 1597
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1571
    :pswitch_3c
    :try_start_3c
    const-string v4, "/dev/dvb%d.demux%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_37

    move-result-object v0

    .line 1589
    .local v0, "deviceFileName":Ljava/lang/String;
    :goto_5b
    :try_start_5b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-ne v8, p2, :cond_ac

    const/high16 v4, 0x30000000

    :goto_64
    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_67} :catch_af
    .catchall {:try_start_5b .. :try_end_67} :catchall_37

    move-result-object v4

    .line 1597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6b
    return-object v4

    .line 1575
    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_6c
    :try_start_6c
    const-string v4, "/dev/dvb%d.dvr%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_5b

    .line 1579
    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_8c
    const-string v4, "/dev/dvb%d.frontend%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_aa
    .catchall {:try_start_6c .. :try_end_aa} :catchall_37

    move-result-object v0

    .line 1581
    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_5b

    .line 1589
    :cond_ac
    const/high16 v4, 0x10000000

    goto :goto_64

    .line 1593
    :catch_af
    move-exception v1

    .line 1594
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    .line 1597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6b

    .line 1569
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_6c
        :pswitch_8c
    .end packed-switch
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 12
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 852
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string/jumbo v8, "registerCallback"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 854
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 856
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_47

    .line 857
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 858
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_44

    .line 860
    :try_start_29
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_3b
    .catchall {:try_start_29 .. :try_end_36} :catchall_44

    .line 873
    :goto_36
    :try_start_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_44

    .line 875
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    return-void

    .line 870
    :catch_3b
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v5, "TvInputManagerService"

    const-string v7, "client process has already died"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 873
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_44
    move-exception v5

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_44

    :try_start_46
    throw v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 875
    :catchall_47
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .prologue
    .line 1337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1338
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "relayoutOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1340
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1342
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1344
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1349
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1351
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    return-void

    .line 1346
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1347
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in relayoutOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1349
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1351
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1346
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1061
    .local v0, "callingUid":I
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string/jumbo v6, "releaseSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1063
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1065
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_29

    .line 1066
    :try_start_1c
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V
    invoke-static {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    .line 1067
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    .line 1069
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    return-void

    .line 1067
    :catchall_26
    move-exception v4

    :try_start_27
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 1069
    :catchall_29
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1516
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f

    .line 1531
    :goto_e
    return-void

    .line 1521
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1522
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1523
    .local v0, "callingUid":I
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string/jumbo v6, "releaseTvInputHardware"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v0, p3, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1526
    .local v1, "resolvedUserId":I
    :try_start_24
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_31
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 980
    invoke-direct {p0}, ensureParentalControlsPermission()V

    .line 981
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "removeBlockedRating"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 983
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 985
    .local v0, "identity":J
    :try_start_18
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_38

    .line 986
    :try_start_1f
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 987
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 989
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_35

    .line 991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return-void

    .line 989
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 991
    :catchall_38
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1358
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "removeOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1360
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1362
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1364
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1369
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1371
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    return-void

    .line 1366
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1367
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in removeOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1369
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1371
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1366
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1276
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "selectTrack"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1278
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1280
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1282
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1287
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1289
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    return-void

    .line 1284
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1285
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in selectTrack"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1287
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1289
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1284
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    .line 1296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1297
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "sendAppPrivateCommand"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1299
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1301
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1303
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1308
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1312
    return-void

    .line 1305
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1306
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in appPrivateCommand"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1308
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1310
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1305
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1256
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "setCaptionEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1258
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1260
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1262
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1267
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    return-void

    .line 1264
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1265
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in setCaptionEnabled"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1267
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1269
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1264
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1079
    .local v0, "callingUid":I
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string/jumbo v8, "setMainSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v6, v7, v0, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1081
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1083
    .local v2, "identity":J
    :try_start_15
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4e

    .line 1084
    :try_start_1c
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1085
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_2d

    .line 1086
    monitor-exit v7
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_4b

    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    :goto_2c
    return-void

    .line 1091
    :cond_2d
    :try_start_2d
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    .line 1092
    .local v1, "oldMainSessionToken":Landroid/os/IBinder;
    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1902(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1096
    if-eqz p1, :cond_3c

    .line 1097
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V
    invoke-static {v6, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1099
    :cond_3c
    if-eqz v1, :cond_46

    .line 1100
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V
    invoke-static {v6, v1, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1102
    :cond_46
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_4b

    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    .line 1102
    .end local v1    # "oldMainSessionToken":Landroid/os/IBinder;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_4b
    move-exception v6

    :try_start_4c
    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 1104
    :catchall_4e
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 911
    invoke-direct {p0}, ensureParentalControlsPermission()V

    .line 912
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "setParentalControlsEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 914
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 916
    .local v0, "identity":J
    :try_start_18
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    .line 917
    :try_start_1f
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 918
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V

    .line 919
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_31

    .line 921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 923
    return-void

    .line 919
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_31
    move-exception v4

    :try_start_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 921
    :catchall_34
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .prologue
    .line 1110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1111
    .local v0, "callingUid":I
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string/jumbo v8, "setSurface"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v6, v7, v0, p3, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1113
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1115
    .local v2, "identity":J
    :try_start_15
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 1117
    :try_start_1c
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1119
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_3b

    .line 1120
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_4b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_31} :catch_63
    .catchall {:try_start_1c .. :try_end_31} :catchall_56

    .line 1128
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_31
    :try_start_31
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_56

    .line 1130
    if-eqz p2, :cond_37

    .line 1132
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1134
    :cond_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    return-void

    .line 1122
    .restart local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3b
    :try_start_3b
    iget-object v6, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4a} :catch_4b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3b .. :try_end_4a} :catch_63
    .catchall {:try_start_3b .. :try_end_4a} :catchall_56

    goto :goto_31

    .line 1125
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_4b
    move-exception v6

    move-object v1, v6

    .line 1126
    .local v1, "e":Ljava/lang/Exception;
    :goto_4d
    :try_start_4d
    const-string v6, "TvInputManagerService"

    const-string/jumbo v8, "error in setSurface"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 1128
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    :try_start_58
    throw v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 1130
    :catchall_59
    move-exception v6

    if-eqz p2, :cond_5f

    .line 1132
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1134
    :cond_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1125
    :catch_63
    move-exception v6

    move-object v1, v6

    goto :goto_4d
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .prologue
    .line 1167
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1168
    .local v1, "REMOTE_VOLUME_ON":F
    const/4 v0, 0x0

    .line 1169
    .local v0, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1170
    .local v2, "callingUid":I
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const-string/jumbo v10, "setVolume"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v8, v9, v2, p3, v10}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v6

    .line 1172
    .local v6, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1174
    .local v4, "identity":J
    :try_start_18
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5f

    .line 1176
    :try_start_1f
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v8, p1, v2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .line 1178
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1179
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_4a

    .line 1182
    iget-object v8, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v10

    const/16 v11, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v8, v10, v11, v6}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4f

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_47
    invoke-interface {v10, v8}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4a} :catch_51
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_4a} :catch_64
    .catchall {:try_start_1f .. :try_end_4a} :catchall_5c

    .line 1189
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_5c

    .line 1191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    return-void

    .line 1182
    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4f
    const/4 v8, 0x0

    goto :goto_47

    .line 1186
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_51
    move-exception v8

    move-object v3, v8

    .line 1187
    .local v3, "e":Ljava/lang/Exception;
    :goto_53
    :try_start_53
    const-string v8, "TvInputManagerService"

    const-string/jumbo v10, "error in setVolume"

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1189
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v8

    monitor-exit v9
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v8
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 1191
    :catchall_5f
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1186
    :catch_64
    move-exception v8

    move-object v3, v8

    goto :goto_53
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1460
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "timeShiftEnablePositionTracking"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1462
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1464
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1466
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1471
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1473
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    return-void

    .line 1468
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1469
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftEnablePositionTracking"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1471
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1473
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1468
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1378
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "timeShiftPause"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1380
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1382
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1384
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1389
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1391
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1393
    return-void

    .line 1386
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1387
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftPause"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1389
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1391
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1386
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1398
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "timeShiftResume"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1400
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1402
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1404
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1409
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1413
    return-void

    .line 1406
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1407
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftResume"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1409
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1411
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1406
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    .prologue
    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1418
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "timeShiftSeekTo"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1420
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1422
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1424
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1429
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1431
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    return-void

    .line 1426
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1427
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftSeekTo"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1429
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1431
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1426
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    .prologue
    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1439
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "timeShiftSetPlaybackParams"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1441
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1443
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1445
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1450
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1454
    return-void

    .line 1447
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1448
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftSetPlaybackParams"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1450
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1452
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1447
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 19
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    .line 1197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1198
    .local v3, "callingUid":I
    iget-object v10, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const-string/jumbo v12, "tune"

    move/from16 v0, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v10, v11, v3, v0, v12}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .line 1200
    .local v5, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1202
    .local v6, "identity":J
    :try_start_17
    iget-object v10, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_93

    .line 1204
    :try_start_1e
    iget-object v10, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v10, p1, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1206
    invoke-static/range {p2 .. p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_85
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1e .. :try_end_2e} :catch_98
    .catchall {:try_start_1e .. :try_end_2e} :catchall_90

    move-result v10

    if-eqz v10, :cond_36

    .line 1208
    :try_start_31
    monitor-exit v11
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_90

    .line 1228
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    :goto_35
    return-void

    .line 1211
    :cond_36
    :try_start_36
    iget-object v10, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v9

    .line 1212
    .local v9, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1215
    .local v8, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1216
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1218
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1219
    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1220
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1221
    iget-object v10, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_80} :catch_85
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_36 .. :try_end_80} :catch_98
    .catchall {:try_start_36 .. :try_end_80} :catchall_90

    .line 1226
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v9    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_80
    :try_start_80
    monitor-exit v11
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_90

    .line 1228
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_35

    .line 1223
    :catch_85
    move-exception v10

    move-object v4, v10

    .line 1224
    .local v4, "e":Ljava/lang/Exception;
    :goto_87
    :try_start_87
    const-string v10, "TvInputManagerService"

    const-string/jumbo v12, "error in tune"

    invoke-static {v10, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    .line 1226
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_90
    move-exception v10

    monitor-exit v11
    :try_end_92
    .catchall {:try_start_87 .. :try_end_92} :catchall_90

    :try_start_92
    throw v10
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 1228
    :catchall_93
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1223
    :catch_98
    move-exception v10

    move-object v4, v10

    goto :goto_87
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1236
    .local v0, "callingUid":I
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string/jumbo v7, "unblockContent"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1238
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1240
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1242
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 1247
    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_35

    .line 1249
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1251
    return-void

    .line 1244
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 1245
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v5, "TvInputManagerService"

    const-string/jumbo v7, "error in unblockContent"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1247
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1249
    :catchall_38
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1244
    :catch_3d
    move-exception v5

    move-object v1, v5

    goto :goto_2c
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 11
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 881
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "unregisterCallback"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 883
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 885
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_31

    .line 886
    :try_start_1c
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 887
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 888
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2e

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    return-void

    .line 888
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 890
    :catchall_31
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
