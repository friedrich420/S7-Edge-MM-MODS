.class Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 3

    .prologue
    .line 359
    iput-object p1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 359
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .registers 2

    .prologue
    .line 363
    iget-boolean v0, p0, mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private setDetachRcvdFromRil(Z)V
    .registers 2
    .param p1, "isDetachRcvdFromRil"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, mIsDetachRcvdFromRil:Z

    .line 368
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 372
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Entered InitialConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setDetachRcvdFromRil(Z)V

    .line 374
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 375
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 376
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 380
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Exiting InitialConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setDetachRcvdFromRil(Z)V

    .line 382
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 383
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    const/16 v18, 0x0

    .line 388
    .local v18, "status":Z
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_34c

    .line 511
    :pswitch_3b
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_5b
    :goto_5b
    return v18

    .line 392
    :pswitch_5c
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ISSUE -- No response from IPSec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_5b

    .line 402
    :pswitch_a1
    invoke-direct/range {p0 .. p0}, isDetachRcvdFromRil()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 403
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Disconnect received during Connecting phase"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setDetachRcvdFromRil(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto :goto_5b

    .line 408
    :cond_bc
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 409
    .local v14, "cid":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    .line 410
    .local v6, "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Update conn status for cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isHandOver is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V
    invoke-static {v1, v2, v14}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V

    .line 418
    :cond_110
    new-instance v1, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v5

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 421
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Connection successful. Resetting throttle timer."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 423
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5b

    .line 430
    .end local v6    # "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .end local v14    # "cid":I
    :pswitch_157
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v16

    .line 432
    .local v16, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17f

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_250

    .line 435
    :cond_17f
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v17

    .line 437
    .local v17, "result":Z
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_240

    .line 438
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next epdg server ip address is available apn name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipv4 address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipv6 addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v7, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 447
    .local v7, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v13

    .line 449
    .local v13, "apnAttachReq":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v13, Landroid/os/Message;->what:I

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    iput v1, v13, Landroid/os/Message;->arg1:I

    .line 451
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v7, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v13}, Lcom/sec/epdg/IPSecDataConnSM;->access$2900(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5b

    .line 457
    .end local v7    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v13    # "apnAttachReq":Landroid/os/Message;
    :cond_240
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 464
    .end local v17    # "result":Z
    :cond_250
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 467
    if-eqz v16, :cond_5b

    .line 468
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/sec/epdg/IWlanConnectResult;

    .line 469
    .local v15, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z

    move-result v1

    if-eqz v1, :cond_2b7

    .line 471
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Throttling is needed., so move to throttle state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 480
    :goto_2a2
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    goto/16 :goto_5b

    .line 476
    :cond_2b7
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_2a2

    .line 489
    .end local v15    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v16    # "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    :pswitch_2ce
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unexpected event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 493
    :pswitch_2f6
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unexpected event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 500
    :pswitch_329
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Received Disconnect Req: Marked for disconnect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setDetachRcvdFromRil(Z)V

    goto/16 :goto_5b

    .line 504
    :pswitch_338
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_5b

    .line 507
    :pswitch_343
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Ignoring the Interface UP event as SM is in Connecting state. "

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 390
    :pswitch_data_34c
    .packed-switch 0x1
        :pswitch_2f6
        :pswitch_2ce
        :pswitch_329
        :pswitch_2ce
        :pswitch_a1
        :pswitch_157
        :pswitch_2ce
        :pswitch_2ce
        :pswitch_343
        :pswitch_338
        :pswitch_5c
        :pswitch_3b
        :pswitch_2ce
        :pswitch_329
        :pswitch_329
    .end packed-switch
.end method
