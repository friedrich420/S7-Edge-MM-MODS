.class Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 3

    .prologue
    .line 519
    iput-object p1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 519
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .registers 2

    .prologue
    .line 523
    iget-boolean v0, p0, mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private setDetachRcvdFromRil(Z)V
    .registers 2
    .param p1, "isDetachRcvdFromRil"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, mIsDetachRcvdFromRil:Z

    .line 528
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 532
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Entered HandoverConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setDetachRcvdFromRil(Z)V

    .line 534
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 535
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 536
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 540
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Exiting HandoverConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setDetachRcvdFromRil(Z)V

    .line 542
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 543
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 547
    const/16 v22, 0x0

    .line 548
    .local v22, "status":Z
    const/16 v18, 0x0

    .line 549
    .local v18, "errorEnableEpdg":Z
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_524

    .line 747
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_5d
    :goto_5d
    return v22

    .line 553
    :pswitch_5e
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISSUE -- No response from RIL/IPSec/DNS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_5d

    .line 563
    :pswitch_a3
    invoke-direct/range {p0 .. p0}, isDetachRcvdFromRil()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 564
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Disconnect received during Connecting phase"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setDetachRcvdFromRil(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto :goto_5d

    .line 569
    :cond_be
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 570
    .local v15, "cid":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    .line 571
    .local v7, "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Call Connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v2, v3, v15}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v18

    .line 574
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Update conn status for cid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v2, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 580
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Connection successful. Resetting throttle timer."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3800(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v2

    if-eqz v2, :cond_1fc

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_1fc

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    goto/16 :goto_5d

    .line 596
    :cond_19c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0x11

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 601
    :goto_1a7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_1c1

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 605
    :cond_1c1
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_5d

    if-eqz v18, :cond_5d

    .line 610
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getTargetRilNetwork()I

    move-result v19

    .line 612
    .local v19, "mTargetRilNetwork":I
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Error while enable epdg, calling failure function"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/16 v18, 0x0

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    move/from16 v0, v19

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleEnableEpdgFailure(III)V
    invoke-static {v2, v15, v0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4200(Lcom/sec/epdg/IPSecDataConnSM;III)V

    goto/16 :goto_5d

    .line 599
    .end local v19    # "mTargetRilNetwork":I
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    goto :goto_1a7

    .line 622
    .end local v7    # "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .end local v15    # "cid":I
    :pswitch_205
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v17

    .line 624
    .local v17, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22d

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2fe

    .line 627
    :cond_22d
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v20

    .line 629
    .local v20, "result":Z
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2ee

    .line 630
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next epdg server ip address is available apn name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv6 addr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v8, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    .local v8, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v14

    .line 641
    .local v14, "apnAttachReq":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v14, Landroid/os/Message;->what:I

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    iput v2, v14, Landroid/os/Message;->arg1:I

    .line 643
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v8, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v14}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5d

    .line 649
    .end local v8    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v14    # "apnAttachReq":Landroid/os/Message;
    :cond_2ee
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 656
    .end local v20    # "result":Z
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 658
    if-eqz v17, :cond_5d

    .line 659
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/epdg/IWlanConnectResult;

    .line 660
    .local v16, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z

    move-result v2

    if-eqz v2, :cond_367

    .line 662
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Throttling is needed, so move to throttle state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 670
    :goto_352
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    goto/16 :goto_5d

    .line 666
    :cond_367
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_352

    .line 676
    .end local v16    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v17    # "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    :pswitch_37e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired()Z
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v2

    if-eqz v2, :cond_3af

    .line 678
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "DNS query posted to Epdg service"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0xb

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto/16 :goto_5d

    .line 682
    :cond_3af
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No DNS retry required. Proceeding handling the Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_5d

    .line 687
    :pswitch_3bf
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_45e

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v21

    .line 692
    .local v21, "setting":Lcom/sec/epdg/IWlanApnSetting;
    if-eqz v21, :cond_455

    .line 693
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS fail during data retry : EpdgUtils.isDataRetryEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_444

    .line 697
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/epdg/IWlanError;

    sget-object v5, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v6, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5d

    .line 703
    :cond_444
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5d

    .line 706
    :cond_455
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IWlanSetting is null, critical error"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 709
    .end local v21    # "setting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_45e
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Proceeding Handling Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_5d

    .line 714
    :pswitch_46e
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Unexpected event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5d

    .line 724
    :pswitch_4bd
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Unexpected event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 730
    :pswitch_4e5
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Received Disconnect Req: Marked for disconnect"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setDetachRcvdFromRil(Z)V

    goto/16 :goto_5d

    .line 734
    :pswitch_4f4
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Received W2L Req: Marked for W2L handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 740
    :pswitch_510
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_5d

    .line 743
    :pswitch_51b
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Ignoring the Interface UP event as SM is in Connecting state. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 551
    :pswitch_data_524
    .packed-switch 0x1
        :pswitch_4f4
        :pswitch_37e
        :pswitch_4e5
        :pswitch_46e
        :pswitch_a3
        :pswitch_205
        :pswitch_4bd
        :pswitch_4bd
        :pswitch_51b
        :pswitch_510
        :pswitch_5e
        :pswitch_3bf
        :pswitch_4bd
        :pswitch_4e5
        :pswitch_4e5
    .end packed-switch
.end method
