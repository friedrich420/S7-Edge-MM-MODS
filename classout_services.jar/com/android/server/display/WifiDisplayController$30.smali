.class Lcom/android/server/display/WifiDisplayController$30;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .prologue
    .line 2475
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2478
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2479
    .local v5, "action":Ljava/lang/String;
    const-string v17, "android.net.wifi.p2p.STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4e

    .line 2482
    const-string/jumbo v17, "wifi_p2p_state"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4c

    const/4 v10, 0x1

    .line 2486
    .local v10, "enabled":Z
    :goto_26
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v0, v10}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2679
    .end local v10    # "enabled":Z
    :cond_4b
    :goto_4b
    return-void

    .line 2482
    :cond_4c
    const/4 v10, 0x0

    goto :goto_26

    .line 2491
    :cond_4e
    const-string v17, "android.net.wifi.p2p.PEERS_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_69

    .line 2493
    const-string v17, "WifiDisplayController"

    const-string v18, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_4b

    .line 2497
    :cond_69
    const-string v17, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a6

    .line 2498
    const-string/jumbo v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    .line 2501
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_4b

    .line 2506
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a6
    const-string v17, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const-string/jumbo v17, "wifiP2pDevice"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # setter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$4402(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2510
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$4400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2516
    :cond_ee
    const-string v17, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ad

    .line 2517
    const/16 v6, 0xe

    .line 2518
    .local v6, "apState":I
    const-string/jumbo v17, "wifi_state"

    const/16 v18, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_12f

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v6, v0, :cond_12f

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    .line 2525
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_1ab

    const/4 v14, 0x1

    .line 2526
    .local v14, "turningWifiDisplayOn":Z
    :goto_149
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    const-string/jumbo v18, "display"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 2527
    .local v8, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v9

    .line 2528
    .local v9, "displayStatus":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v14, :cond_4b

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v6, v0, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v17

    if-nez v17, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v17

    if-nez v17, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4b

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2525
    .end local v8    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v9    # "displayStatus":Landroid/hardware/display/WifiDisplayStatus;
    .end local v14    # "turningWifiDisplayOn":Z
    :cond_1ab
    const/4 v14, 0x0

    goto :goto_149

    .line 2537
    .end local v6    # "apState":I
    :cond_1ad
    const-string v17, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_253

    .line 2538
    const-string/jumbo v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 2540
    .local v11, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_4b

    .line 2541
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_4b

    .line 2542
    const-string/jumbo v17, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiInfo;

    .line 2543
    .local v15, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v15, :cond_4b

    .line 2547
    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    .line 2549
    .local v4, "APFrequency":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mKDDIServiceConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_4b

    .line 2551
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AP is connected! AP Frquency:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ? WfdFrequency:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    move/from16 v0, v17

    if-eq v4, v0, :cond_4b

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22073

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2558
    .end local v4    # "APFrequency":I
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v15    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_253
    const-string v17, "com.samsung.android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b2

    .line 2559
    const-string/jumbo v17, "wifi_state"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2560
    .local v16, "wifiState":I
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WIFI_OXYGEN_STATE_CHANGED_ACTION : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_4b

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4b

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2566
    .end local v16    # "wifiState":I
    :cond_2b2
    const-string v17, "android.intent.action.HDMI_PLUGGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_35a

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_2de

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2569
    :cond_2de
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_336

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_336

    .line 2571
    const-string v17, "WifiDisplayController"

    const-string v18, "Screen Mirroring is disabled because HDMI is connected..."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v17

    if-eqz v17, :cond_336

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)V

    .line 2577
    :cond_336
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2578
    :cond_35a
    const-string v17, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3de

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string v18, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4b

    .line 2583
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "dongle Update URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$3500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillBrokerClosed:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x2ee

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2587
    :cond_3de
    const-string v17, "com.samsung.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3f2

    const-string v17, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_49b

    .line 2588
    :cond_3f2
    const-string/jumbo v7, "true"

    .line 2589
    .local v7, "changed":Ljava/lang/String;
    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_40b

    .line 2590
    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2593
    :cond_40b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_456

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_456

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_440

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_456

    .line 2594
    :cond_440
    const-string v17, "WifiDisplayController"

    const-string/jumbo v18, "received power saving mode enabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22084

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2596
    :cond_456
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    if-nez v17, :cond_4b

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->isHotspotOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_4b

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2600
    .end local v7    # "changed":Ljava/lang/String;
    :cond_49b
    const-string v17, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_554

    .line 2601
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6502(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2604
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4ce

    .line 2605
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents type is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2608
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_52a

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "recording"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_502

    .line 2610
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : recording"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22087

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2613
    :cond_502
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "playback"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4b

    .line 2614
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : playback"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22086

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2619
    :cond_52a
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : Video playing"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_limited_contents_playing"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4b

    .line 2624
    :cond_554
    const-string v17, "android.intent.action.VIDEO_PLAYBACK_STOP"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_594

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_4b

    .line 2626
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_limited_contents_playing"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4b

    .line 2631
    :cond_594
    const-string/jumbo v17, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5df

    .line 2632
    const-string v17, "WifiDisplayController"

    const-string/jumbo v18, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_4b

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x2ee

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2637
    :cond_5df
    const-string v17, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_621

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_4b

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x2ee

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2642
    :cond_621
    const-string v17, "com.samsung.wfd.RESULT_WFD_UPDATE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_672

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "result"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6802(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateOnGoing:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$3402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2645
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2646
    :cond_672
    const-string v17, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_705

    .line 2648
    const-string/jumbo v17, "requestState"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 2651
    .local v13, "requestAccepted":Z
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WifiP2pManager.WIFI_P2P_REQUEST_CHANGED_ACTION : requestAccepted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$3600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$1600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v17

    if-eqz v17, :cond_4b

    .line 2656
    if-eqz v13, :cond_6f3

    .line 2658
    const-string v17, "WifiDisplayController"

    const-string v18, "User accepted PIN connect"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x2208a

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2660
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x7530

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2664
    :cond_6f3
    const-string v17, "WifiDisplayController"

    const-string v18, "User cancelled PIN connect or timeout"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2668
    .end local v13    # "requestAccepted":Z
    :cond_705
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_71c

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5902(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_4b

    .line 2670
    :cond_71c
    const-string v17, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_73b

    .line 2671
    const-string v17, "WifiDisplayController"

    const-string/jumbo v18, "received:com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mKDDIServiceConnected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5802(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_4b

    .line 2673
    :cond_73b
    const-string v17, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4b

    .line 2674
    const-string v17, "WifiDisplayController"

    const-string/jumbo v18, "received:com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mKDDIServiceConnected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5802(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_4b
.end method
