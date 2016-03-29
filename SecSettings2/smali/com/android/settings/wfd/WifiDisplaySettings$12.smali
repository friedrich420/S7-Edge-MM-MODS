.class Lcom/android/settings/wfd/WifiDisplaySettings$12;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1533
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, "action":Ljava/lang/String;
    const-string v7, "WifiDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const-string v7, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1537
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v7, v7, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    .line 1538
    .local v6, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 1539
    .local v1, "activeDisplayState":I
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v5

    .line 1540
    .local v5, "scanState":I
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    .line 1542
    .local v3, "featureState":I
    const-string v7, "WifiDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifi display status changed! scanstate : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ActiveDisplayState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v7, v7, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v7, :cond_0

    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1552
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 1553
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1554
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v8, 0x4

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 1562
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v7

    sget-object v8, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v7, v8, :cond_3

    if-nez v1, :cond_3

    .line 1565
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 1594
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "activeDisplayState":I
    .end local v3    # "featureState":I
    .end local v5    # "scanState":I
    .end local v6    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_3
    :goto_1
    return-void

    .line 1557
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "activeDisplayState":I
    .restart local v3    # "featureState":I
    .restart local v5    # "scanState":I
    .restart local v6    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1558
    :cond_5
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v8, 0x0

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1590
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "activeDisplayState":I
    .end local v3    # "featureState":I
    .end local v5    # "scanState":I
    .end local v6    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :catch_0
    move-exception v2

    .line 1591
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v7, "WifiDisplaySettings"

    const-string v8, "Print call stack for debugging."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 1567
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v7, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1568
    const-string v7, "WifiDisplaySettings"

    const-string v8, "received : WIFIDISPLAY_DETACH_SETTINGS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1902(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 1570
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto :goto_1

    .line 1571
    :cond_7
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1572
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1574
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v4, :cond_8

    .line 1575
    const-string v7, "WifiDisplaySettings"

    const-string v8, "networkInfo is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1578
    :cond_8
    const-string v7, "WifiDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received : WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v7

    sget-object v8, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v7, v8, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_9

    .line 1583
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 1585
    :cond_9
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1586
    const-string v7, "WifiDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive WIFI_P2P_CONNECTION_CHANGED_ACTION:: mPendingDevice="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDLNAList()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
