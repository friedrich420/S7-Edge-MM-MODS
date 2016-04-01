.class Lcom/sec/epdg/EpdgService$WifiCallEnabler;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallEnabler"
.end annotation


# instance fields
.field forced:Z

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;

.field wificallenable:I

.field wificallpreferred:I


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;IIZ)V
    .registers 6
    .param p2, "enable"    # I
    .param p3, "preferred"    # I
    .param p4, "isForced"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3628
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3624
    iput v0, p0, wificallenable:I

    .line 3625
    iput v0, p0, wificallpreferred:I

    .line 3626
    const/4 v0, 0x0

    iput-boolean v0, p0, forced:Z

    .line 3629
    iput p2, p0, wificallenable:I

    .line 3630
    iput p3, p0, wificallpreferred:I

    .line 3631
    iput-boolean p4, p0, forced:Z

    .line 3632
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3636
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFiCallEnable value is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, wificallenable:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    iget v2, p0, wificallenable:I

    if-nez v2, :cond_74

    move v2, v3

    :goto_24
    move v4, v3

    move v5, v3

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v0 .. v5}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3639
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3641
    :cond_33
    iget v0, p0, wificallenable:I

    if-eqz v0, :cond_3c

    iget v0, p0, wificallpreferred:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_bf

    .line 3642
    :cond_3c
    const-string v0, "[EPDGService]"

    const-string v1, "WifiCall is disabled"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    sget-object v1, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$8400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3645
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isWaitDeRegiWhenWFCDisable()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 3646
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$8500(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3660
    :cond_5d
    :goto_5d
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3662
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 3665
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 3666
    # setter for: Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$8602(I)I

    .line 3697
    :cond_73
    :goto_73
    return-void

    :cond_74
    move v2, v1

    .line 3638
    goto :goto_24

    .line 3647
    :cond_76
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3648
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto :goto_73

    .line 3651
    :cond_8e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 3652
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v0, v3}, Lcom/sec/epdg/EpdgService;->access$2400(Lcom/sec/epdg/EpdgService;Z)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3653
    const-string v0, "[EPDGService]"

    const-string v1, "WifiCallEnabler - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5d

    .line 3657
    :cond_b1
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5d

    .line 3668
    :cond_bf
    const-string v0, "[EPDGService]"

    const-string v2, "WifiCall is enabled"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->access$8400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3671
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 3672
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$8700(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 3673
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$4600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto :goto_73

    .line 3675
    :cond_ed
    iget v0, p0, wificallpreferred:I

    if-eq v0, v9, :cond_73

    .line 3676
    iget v0, p0, wificallpreferred:I

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$8602(I)I

    .line 3678
    iget v0, p0, wificallpreferred:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_150

    .line 3679
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 3685
    .local v7, "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_fd
    if-eqz v7, :cond_73

    .line 3686
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3687
    .local v8, "salesCode":Ljava/lang/String;
    const-string v0, "ORO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 3688
    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v0, "ims"

    aput-object v0, v6, v3

    .line 3689
    .local v6, "apnList":[Ljava/lang/String;
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefered Order for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_73

    .line 3680
    .end local v6    # "apnList":[Ljava/lang/String;
    .end local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v8    # "salesCode":Ljava/lang/String;
    :cond_150
    iget v0, p0, wificallpreferred:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_158

    .line 3681
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_fd

    .line 3683
    .end local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_158
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_fd

    .line 3692
    .restart local v8    # "salesCode":Ljava/lang/String;
    :cond_15b
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    invoke-static {v0, v7}, Lcom/sec/epdg/EpdgService;->access$8800(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_73
.end method
