.class Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 247
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in inactive state : Entered InactiveState State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$900(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 249
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 250
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 254
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in inactive state : Exiting InactiveState State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, "status":Z
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1c6

    .line 352
    :pswitch_34
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_52
    return v2

    .line 264
    :pswitch_53
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 265
    .local v0, "cid":I
    if-gez v0, :cond_76

    .line 266
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get cid for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 269
    :cond_76
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 270
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 271
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 272
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_52

    .line 277
    .end local v0    # "cid":I
    :pswitch_92
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 278
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired()Z
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 279
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "DNS query posted to Epdg service"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 281
    :cond_a7
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "No DNS retry required. Proceeding handling the Connect Request"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto :goto_52

    .line 286
    :pswitch_b4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_13e

    .line 287
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 289
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 291
    .local v1, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-eqz v1, :cond_134

    .line 292
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS fail during data retry : EpdgUtils.isDataRetryEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 296
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/epdg/IWlanError;

    sget-object v6, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v7, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 300
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_52

    .line 302
    :cond_127
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_52

    .line 305
    :cond_134
    const-string v3, "[IPSECDATACONNSM]"

    const-string/jumbo v4, "curSetting is null, critical error"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 308
    .end local v1    # "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_13e
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Proceeding Handling Connect Request"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_52

    .line 317
    :pswitch_14c
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 318
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_52

    .line 322
    :pswitch_15a
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected event in InactiveState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 332
    :pswitch_183
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected event in InactiveState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 337
    :pswitch_1a3
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_52

    .line 340
    :pswitch_1aa
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignore disconnect Req as PDN is already inactive"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 344
    :pswitch_1b3
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignoring the Interface UP event as SM is in InActive state. "

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 348
    :pswitch_1bc
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignoring the Interface DOWN event as SM is in InActive state. "

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 262
    nop

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_53
        :pswitch_15a
        :pswitch_92
        :pswitch_1aa
        :pswitch_183
        :pswitch_14c
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_1b3
        :pswitch_1a3
        :pswitch_34
        :pswitch_b4
        :pswitch_183
        :pswitch_1bc
    .end packed-switch
.end method
