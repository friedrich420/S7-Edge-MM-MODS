.class Lcom/android/server/display/WifiDisplayAdapter$13;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .prologue
    .line 983
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 986
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 988
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 989
    :try_start_31
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 990
    monitor-exit v2

    .line 1055
    :cond_39
    :goto_39
    return-void

    .line 990
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw v1

    .line 994
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 995
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 996
    .local v12, "wfdSessionState":I
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifidisplay Session state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 998
    if-nez v12, :cond_a3

    .line 999
    :try_start_76
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestClearConnectedDisplayInfo()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1003
    :cond_7d
    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_ae

    .line 1004
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, v12}, Lcom/android/server/display/WifiDisplayAdapter;->setSourceState(I)V

    .line 1049
    .end local v12    # "wfdSessionState":I
    :cond_85
    :goto_85
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1050
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1051
    .local v13, "wfdSinkState":I
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, v13}, Lcom/android/server/display/WifiDisplayAdapter;->setSinkState(I)V

    goto :goto_39

    .line 1000
    .end local v13    # "wfdSinkState":I
    .restart local v12    # "wfdSessionState":I
    :cond_a3
    const/4 v1, 0x1

    if-ne v12, v1, :cond_7d

    .line 1001
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestSaveConnectedDisplayInfo()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_7d

    .line 1003
    :catchall_ae
    move-exception v1

    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_ae

    throw v1

    .line 1005
    .end local v12    # "wfdSessionState":I
    :cond_b1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_85

    .line 1007
    :cond_c5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.wfd.notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 1008
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1009
    :try_start_da
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_ef

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->isDLNADeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 1013
    :cond_ef
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->isDLNADeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 1014
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleDLNADisconnectReqBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1016
    :cond_100
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11e

    .line 1017
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_12f

    .line 1018
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisableLocked()V

    .line 1023
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v3, "DCON"

    const-string v4, "NOTI"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_129
    monitor-exit v2

    goto/16 :goto_85

    :catchall_12c
    move-exception v1

    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_da .. :try_end_12e} :catchall_12c

    throw v1

    .line 1020
    :cond_12f
    :try_start_12f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V
    :try_end_136
    .catchall {:try_start_12f .. :try_end_136} :catchall_12c

    goto :goto_11e

    .line 1026
    :cond_137
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.screensharing.DLNA_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_227

    .line 1027
    const-string/jumbo v1, "status"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1028
    .local v11, "status":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_1f3

    .line 1030
    :try_start_150
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Landroid/hardware/display/DLNADevice;

    const-string/jumbo v2, "device_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ipAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "p2pMacAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string/jumbo v6, "netType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "player_type"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "resume_request"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-direct/range {v1 .. v9}, Landroid/hardware/display/DLNADevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v14, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/DLNADevice;)Landroid/hardware/display/DLNADevice;
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_19f} :catch_1d8

    .line 1034
    :goto_19f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    if-eqz v1, :cond_1cd

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DLNADevice;->isSwitchingDevice()Z

    move-result v1

    if-nez v1, :cond_1cd

    .line 1035
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->setLastConnectedDLNADevice(Landroid/hardware/display/DLNADevice;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1038
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x7

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;II)V

    goto/16 :goto_85

    .line 1031
    :catch_1d8
    move-exception v10

    .line 1032
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create mConnectedDLNADevice exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19f

    .line 1039
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1f3
    if-nez v11, :cond_85

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    if-eqz v1, :cond_214

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DLNADevice;->isSwitchingDevice()Z

    move-result v1

    if-nez v1, :cond_214

    .line 1041
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1043
    :cond_214
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/DLNADevice;)Landroid/hardware/display/DLNADevice;

    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x7

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;II)V

    goto/16 :goto_85

    .line 1046
    .end local v11    # "status":I
    :cond_227
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.screensharing.LOGGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v2, "feature"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85
.end method
