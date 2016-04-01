.class final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputServiceConnection"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 4
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    .line 1966
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    iput-object p2, p0, mComponent:Landroid/content/ComponentName;

    .line 1968
    iput p3, p0, mUserId:I

    .line 1969
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 1962
    invoke-direct {p0, p1, p2, p3}, <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 19
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1976
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1977
    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v11, v13}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v10

    .line 1978
    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, mComponent:Landroid/content/ComponentName;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1979
    .local v8, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {p2 .. p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8, v11}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    .line 1982
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_55

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v11

    if-nez v11, :cond_55

    .line 1983
    new-instance v11, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, mComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget v15, v0, mUserId:I

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v8, v11}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2202(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_79

    .line 1985
    :try_start_4a
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v13

    invoke-interface {v11, v13}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_55} :catch_7c
    .catchall {:try_start_4a .. :try_end_55} :catchall_79

    .line 1992
    :cond_55
    :goto_55
    :try_start_55
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 1993
    .local v9, "sessionToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    invoke-static {v11, v13, v9, v14}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    goto :goto_5d

    .line 2025
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v9    # "sessionToken":Landroid/os/IBinder;
    .end local v10    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_79
    move-exception v11

    monitor-exit v12
    :try_end_7b
    .catchall {:try_start_55 .. :try_end_7b} :catchall_79

    throw v11

    .line 1986
    .restart local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v10    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_7c
    move-exception v3

    .line 1987
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7d
    const-string v11, "TvInputManagerService"

    const-string/jumbo v13, "error in registerCallback"

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1996
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_86
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_92
    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1997
    .local v7, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v11

    if-eqz v11, :cond_92

    .line 1999
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v14

    const/4 v15, 0x0

    # invokes: Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    invoke-static {v11, v10, v13, v14, v15}, Lcom/android/server/tv/TvInputManagerService;->access$6300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    goto :goto_92

    .line 2004
    .end local v7    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_c9
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_12b

    .line 2005
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object v5

    .line 2007
    .local v5, "hardwareInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_df
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_eb
    .catchall {:try_start_7d .. :try_end_eb} :catchall_79

    .line 2009
    .local v4, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :try_start_eb
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_f2} :catch_f3
    .catchall {:try_start_eb .. :try_end_f2} :catchall_79

    goto :goto_df

    .line 2010
    :catch_f3
    move-exception v3

    .line 2011
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_f4
    const-string v11, "TvInputManagerService"

    const-string/jumbo v13, "error in notifyHardwareAdded"

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_df

    .line 2015
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_fd
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    move-result-object v2

    .line 2017
    .local v2, "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_119
    .catchall {:try_start_f4 .. :try_end_119} :catchall_79

    .line 2019
    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_start_119
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    invoke-interface {v11, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_120} :catch_121
    .catchall {:try_start_119 .. :try_end_120} :catchall_79

    goto :goto_10d

    .line 2020
    :catch_121
    move-exception v3

    .line 2021
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_122
    const-string v11, "TvInputManagerService"

    const-string/jumbo v13, "error in notifyHdmiDeviceAdded"

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10d

    .line 2025
    .end local v1    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "hardwareInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :cond_12b
    monitor-exit v12
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_79

    .line 2026
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 2033
    iget-object v2, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2034
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched ComponentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (actual)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2037
    :cond_33
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2038
    :try_start_3a
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v4, p0, mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2039
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2040
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v0, :cond_68

    .line 2041
    const/4 v2, 0x1

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 2042
    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 2043
    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    .line 2044
    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2202(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 2046
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v4, 0x0

    iget v5, p0, mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    invoke-static {v2, v0, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->access$6400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 2048
    :cond_68
    monitor-exit v3

    .line 2049
    return-void

    .line 2048
    .end local v0    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6a
    move-exception v2

    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_3a .. :try_end_6c} :catchall_6a

    throw v2
.end method
