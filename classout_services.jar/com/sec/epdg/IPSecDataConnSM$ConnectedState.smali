.class Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field interfaceUpRecvd:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 2

    .prologue
    .line 755
    iput-object p1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 755
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 759
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "SM in ConnectedState state : Entered ConnectedState "

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 762
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 763
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 764
    .local v0, "dpdTimer":I
    if-lez v0, :cond_a8

    .line 765
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM start periodic DPD timer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUseAlarm()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 767
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    .line 770
    :goto_61
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v1

    if-nez v1, :cond_a8

    .line 771
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 772
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected mode dpd not allowed, apnType is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSM;->access$4700()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 778
    .end local v0    # "dpdTimer":I
    :cond_a8
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 779
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 784
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0xb

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 785
    iput-boolean v6, p0, interfaceUpRecvd:Z

    .line 789
    :goto_c1
    return-void

    .line 769
    .restart local v0    # "dpdTimer":I
    :cond_c2
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0x10

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto :goto_61

    .line 787
    .end local v0    # "dpdTimer":I
    :cond_cd
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1, v6}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto :goto_c1
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 793
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in ConnectedState state : Exiting ConnectedState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 795
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUseAlarm()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 796
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 799
    :goto_21
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 800
    return-void

    .line 798
    :cond_28
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0x10

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$5000(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto :goto_21
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 804
    const/4 v4, 0x0

    .line 805
    .local v4, "status":Z
    const/4 v1, 0x0

    .line 806
    .local v1, "errorEnableEpdg":Z
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_318

    .line 938
    :pswitch_3c
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_5a
    :goto_5a
    return v4

    .line 810
    :pswitch_5b
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 811
    const-string v5, "[IPSECDATACONNSM]"

    const-string v6, "Ignoring the time out  message as this is a handover request. Mobile Interface is already up."

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 812
    :cond_6b
    iget-boolean v5, p0, interfaceUpRecvd:Z

    if-ne v9, v5, :cond_77

    .line 813
    const-string v5, "[IPSECDATACONNSM]"

    const-string v6, "Initial attach scenario. Mobile Interface is already up. Ignoring the timeout message. NO action needed"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 815
    :cond_77
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "RIL ISSUE -- Interface up event not recevied for Initial attach to ePDG. Attempting to tear down control path."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$5300(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 819
    .local v3, "msgForDisconnect":Landroid/os/Message;
    const/16 v5, 0x29

    iput v5, v3, Landroid/os/Message;->what:I

    .line 820
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 821
    new-instance v5, Landroid/os/AsyncResult;

    new-instance v6, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v5, v10, v6, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 823
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5a

    .line 827
    .end local v3    # "msgForDisconnect":Landroid/os/Message;
    :pswitch_e6
    const-string v5, "[IPSECDATACONNSM]"

    const-string/jumbo v6, "send DPD message"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$5400(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 829
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUseAlarm()Z

    move-result v5

    if-eqz v5, :cond_157

    .line 830
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 834
    :goto_106
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v5

    if-eqz v5, :cond_5a

    .line 835
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 836
    .local v0, "dpdTimer":I
    if-lez v0, :cond_5a

    .line 837
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM start periodic DPD timer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUseAlarm()Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 839
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    mul-int/lit16 v7, v0, 0x3e8

    invoke-virtual {v5, v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    goto/16 :goto_5a

    .line 832
    .end local v0    # "dpdTimer":I
    :cond_157
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto :goto_106

    .line 841
    .restart local v0    # "dpdTimer":I
    :cond_15d
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v11, v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto/16 :goto_5a

    .line 849
    .end local v0    # "dpdTimer":I
    :pswitch_167
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Disconnection Happened, this is critical failure."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 852
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 853
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v6, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$5700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5a

    .line 858
    :pswitch_1aa
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 859
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v6, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5a

    .line 862
    :pswitch_1c2
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chek l2w handover condition after 1.5 sec from L2W HO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$3800(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 865
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v6, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 870
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5, v8}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 871
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    goto/16 :goto_5a

    .line 875
    :pswitch_20f
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Unexpected event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 882
    :pswitch_235
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Disconnection Request Received"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iput-boolean v8, p0, interfaceUpRecvd:Z

    .line 894
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/sec/epdg/IPSecDataConnSM;->access$6100(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 895
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUseAlarm()Z

    move-result v5

    if-eqz v5, :cond_281

    .line 896
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 899
    :goto_273
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 901
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_5a

    .line 898
    :cond_281
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$6200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto :goto_273

    .line 906
    :pswitch_287
    iput-boolean v9, p0, interfaceUpRecvd:Z

    .line 907
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/sec/epdg/IPSecDataConnSM;->access$6300(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 908
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v9, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v1

    .line 909
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V

    .line 910
    if-ne v9, v1, :cond_5a

    .line 911
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "as Data path route addition failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$5300(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 916
    .local v2, "msg1":Landroid/os/Message;
    const/16 v5, 0x29

    iput v5, v2, Landroid/os/Message;->what:I

    .line 917
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 918
    new-instance v5, Landroid/os/AsyncResult;

    new-instance v6, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v6, v7}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v5, v10, v6, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 920
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 921
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    goto/16 :goto_5a

    .line 929
    .end local v2    # "msg1":Landroid/os/Message;
    :pswitch_2eb
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Unexpected event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 934
    :pswitch_311
    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_5a

    .line 808
    :pswitch_data_318
    .packed-switch 0x0
        :pswitch_20f
        :pswitch_1aa
        :pswitch_2eb
        :pswitch_235
        :pswitch_2eb
        :pswitch_2eb
        :pswitch_167
        :pswitch_167
        :pswitch_167
        :pswitch_287
        :pswitch_311
        :pswitch_5b
        :pswitch_3c
        :pswitch_2eb
        :pswitch_235
        :pswitch_235
        :pswitch_e6
        :pswitch_1c2
    .end packed-switch
.end method
