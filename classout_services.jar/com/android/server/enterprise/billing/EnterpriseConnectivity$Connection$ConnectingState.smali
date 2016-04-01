.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .registers 2

    .prologue
    .line 1521
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 1521
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1524
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 1528
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectingState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1532
    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectingState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1534
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_288

    .line 1636
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectingState  ignore msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v7, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1637
    const/4 v3, 0x0

    .line 1640
    .local v3, "retVal":Z
    :goto_48
    return v3

    .line 1536
    .end local v3    # "retVal":Z
    :sswitch_49
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState onConnect"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1537
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1538
    .local v2, "iface":Ljava/lang/String;
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect(Ljava/lang/String;I)V
    invoke-static {v4, v2, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;I)V

    .line 1539
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1540
    const/4 v3, 0x1

    .line 1541
    .restart local v3    # "retVal":Z
    goto :goto_48

    .line 1543
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "retVal":Z
    :sswitch_68
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1544
    const/4 v3, 0x1

    .line 1545
    .restart local v3    # "retVal":Z
    goto :goto_48

    .line 1547
    .end local v3    # "retVal":Z
    :sswitch_75
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v5, 0x3f2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1548
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1550
    :try_start_83
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_ba

    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 1551
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v6, "ConnectingState: turn off connection"

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1552
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1553
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1554
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_ba} :catch_bd
    .catchall {:try_start_83 .. :try_end_ba} :catchall_d6

    .line 1559
    :cond_ba
    :goto_ba
    :try_start_ba
    monitor-exit v5

    .line 1560
    const/4 v3, 0x1

    .line 1561
    .restart local v3    # "retVal":Z
    goto :goto_48

    .line 1556
    .end local v3    # "retVal":Z
    :catch_bd
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error in connecting state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_ba

    .line 1559
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_d6
    move-exception v4

    monitor-exit v5
    :try_end_d8
    .catchall {:try_start_ba .. :try_end_d8} :catchall_d6

    throw v4

    .line 1563
    :sswitch_d9
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1564
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_138

    .line 1565
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectingState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v7, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1566
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1567
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1569
    :try_start_12c
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_138} :catch_13b

    .line 1574
    :cond_138
    :goto_138
    const/4 v3, 0x1

    .line 1575
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1570
    .end local v3    # "retVal":Z
    :catch_13b
    move-exception v0

    .line 1571
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in enableBlockRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_138

    .line 1577
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_154
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v5, 0x3f1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1578
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1579
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1581
    :try_start_16b
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_177} :catch_17a

    .line 1585
    :goto_177
    const/4 v3, 0x1

    .line 1586
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1582
    .end local v3    # "retVal":Z
    :catch_17a
    move-exception v0

    .line 1583
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in enableBlockRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_177

    .line 1588
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_193
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1589
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 1590
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1591
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1592
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1594
    :try_start_1c9
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1d5} :catch_1d8

    .line 1599
    :cond_1d5
    :goto_1d5
    const/4 v3, 0x1

    .line 1600
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1595
    .end local v3    # "retVal":Z
    :catch_1d8
    move-exception v0

    .line 1596
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in enableBlockRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_1d5

    .line 1602
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1f1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_224

    .line 1603
    .local v1, "enabled":Z
    :goto_1f5
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eq v4, v1, :cond_221

    .line 1604
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1605
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_221

    .line 1606
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1607
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1608
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1611
    :cond_221
    const/4 v3, 0x1

    .line 1612
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .end local v1    # "enabled":Z
    .end local v3    # "retVal":Z
    :cond_224
    move v1, v4

    .line 1602
    goto :goto_1f5

    .line 1614
    :sswitch_226
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1615
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_250

    .line 1616
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1617
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1618
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1620
    :cond_250
    const/4 v3, 0x1

    .line 1621
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1623
    .end local v3    # "retVal":Z
    :sswitch_253
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1624
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_27d

    .line 1625
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1626
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1627
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1629
    :cond_27d
    const/4 v3, 0x1

    .line 1630
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1632
    .end local v3    # "retVal":Z
    :sswitch_280
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V

    .line 1633
    const/4 v3, 0x1

    .line 1634
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1534
    :sswitch_data_288
    .sparse-switch
        0x3ea -> :sswitch_280
        0x3eb -> :sswitch_d9
        0x3ed -> :sswitch_193
        0x3ee -> :sswitch_226
        0x3ef -> :sswitch_253
        0x3f1 -> :sswitch_154
        0x3f2 -> :sswitch_75
        0x3f3 -> :sswitch_1f1
        0x44d -> :sswitch_49
        0x44e -> :sswitch_68
    .end sparse-switch
.end method
