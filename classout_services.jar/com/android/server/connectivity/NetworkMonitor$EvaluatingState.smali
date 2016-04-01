.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .prologue
    .line 544
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 550
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82006

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$3004(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 551
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    if-eq v0, v3, :cond_26

    .line 552
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 553
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 555
    :cond_26
    const/16 v0, 0x3e8

    iput v0, p0, mReevaluateDelayMs:I

    .line 556
    iput v4, p0, mAttempts:I

    .line 557
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 697
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 698
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 23
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_31e

    .line 691
    :pswitch_27
    const/4 v4, 0x0

    :goto_28
    return v4

    .line 564
    :pswitch_29
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3000(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 565
    :cond_41
    const/4 v4, 0x1

    goto :goto_28

    .line 583
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 585
    const-string v4, "NetworkMonitor"

    const-string v5, "CMD_REEVALUATE -> ValidatedState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 587
    const/4 v4, 0x1

    goto :goto_28

    .line 589
    :cond_75
    move-object/from16 v0, p0

    iget v4, v0, mAttempts:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, mAttempts:I

    .line 591
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 592
    .local v15, "salesCode":Ljava/lang/String;
    const-string v4, "CTC"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_d2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_d2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_117

    .line 597
    :cond_d2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 598
    const/4 v4, 0x1

    goto/16 :goto_28

    .line 601
    :cond_e4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_105

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_117

    .line 603
    :cond_105
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 604
    const/4 v4, 0x1

    goto/16 :goto_28

    .line 609
    :cond_117
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_234

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_196

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 613
    .local v16, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v4

    if-eqz v4, :cond_186

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v4

    if-nez v4, :cond_186

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v4

    if-nez v4, :cond_186

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v4

    if-nez v4, :cond_186

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 680
    .end local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_173
    :goto_173
    const/4 v4, 0x1

    goto/16 :goto_28

    .line 619
    .restart local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_176
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_173

    .line 622
    :cond_186
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_173

    .line 631
    .end local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_196
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()I

    move-result v12

    .line 632
    .local v12, "httpResponseCode":I
    const/16 v4, 0xcc

    if-ne v12, v4, :cond_1b2

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_173

    .line 634
    :cond_1b2
    const/16 v4, 0xc8

    if-lt v12, v4, :cond_1ca

    const/16 v4, 0x18f

    if-gt v12, v4, :cond_1ca

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_173

    .line 637
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v5, 0x82006

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$3004(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    .line 638
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget v5, v0, mReevaluateDelayMs:I

    int-to-long v8, v5

    invoke-virtual {v4, v14, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v7, 0x82002

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v7, v8, v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    move-object/from16 v0, p0

    iget v4, v0, mAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_218

    .line 644
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 646
    :cond_218
    move-object/from16 v0, p0

    iget v4, v0, mReevaluateDelayMs:I

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, mReevaluateDelayMs:I

    .line 647
    move-object/from16 v0, p0

    iget v4, v0, mReevaluateDelayMs:I

    const v5, 0x927c0

    if-le v4, v5, :cond_173

    .line 648
    const v4, 0x927c0

    move-object/from16 v0, p0

    iput v4, v0, mReevaluateDelayMs:I

    goto/16 :goto_173

    .line 653
    .end local v12    # "httpResponseCode":I
    .end local v14    # "msg":Landroid/os/Message;
    :cond_234
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_173

    .line 654
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->wifiOnly:Z
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$4200()Z

    move-result v4

    if-eqz v4, :cond_2c9

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()I

    move-result v12

    .line 656
    .restart local v12    # "httpResponseCode":I
    const-string/jumbo v13, "http://www.google.com"

    .line 657
    .local v13, "mUrl":Ljava/lang/String;
    const/4 v10, 0x0

    .line 659
    .local v10, "countryIso":Ljava/lang/String;
    :try_start_257
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CountryISO"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_260} :catch_2db

    move-result-object v10

    .line 664
    :goto_261
    const-string v4, "cn"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26c

    .line 665
    const-string/jumbo v13, "http://www.samsung.com"

    .line 667
    :cond_26c
    const/16 v4, 0xcc

    if-eq v12, v4, :cond_2c9

    const/16 v4, 0xc8

    if-lt v12, v4, :cond_2c9

    const/16 v4, 0x18f

    if-gt v12, v4, :cond_2c9

    .line 668
    new-instance v6, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 669
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10400000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v17, v0

    const v18, 0x8200a

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v4, Landroid/net/Network;->netId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 673
    .restart local v14    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "countryIso":Ljava/lang/String;
    .end local v12    # "httpResponseCode":I
    .end local v13    # "mUrl":Ljava/lang/String;
    .end local v14    # "msg":Landroid/os/Message;
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 677
    const/4 v4, 0x1

    goto/16 :goto_28

    .line 660
    .restart local v10    # "countryIso":Ljava/lang/String;
    .restart local v12    # "httpResponseCode":I
    .restart local v13    # "mUrl":Ljava/lang/String;
    :catch_2db
    move-exception v11

    .line 661
    .local v11, "e":Ljava/lang/Exception;
    const-string v4, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception on CountryISO: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_261

    .line 685
    .end local v10    # "countryIso":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "httpResponseCode":I
    .end local v13    # "mUrl":Ljava/lang/String;
    .end local v15    # "salesCode":Ljava/lang/String;
    :pswitch_2f9
    move-object/from16 v0, p0

    iget v4, v0, mAttempts:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_312

    .line 686
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "handled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :goto_308
    move-object/from16 v0, p0

    iget v4, v0, mAttempts:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_31b

    const/4 v4, 0x1

    goto/16 :goto_28

    .line 688
    :cond_312
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "not_handled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_308

    .line 689
    :cond_31b
    const/4 v4, 0x0

    goto/16 :goto_28

    .line 562
    :pswitch_data_31e
    .packed-switch 0x82006
        :pswitch_29
        :pswitch_27
        :pswitch_2f9
    .end packed-switch
.end method
