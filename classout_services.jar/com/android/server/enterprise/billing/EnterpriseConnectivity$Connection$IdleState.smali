.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .registers 2

    .prologue
    .line 1325
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 1325
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    .line 1328
    iget-object v1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v2, "IdleState: enter"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1330
    iget-object v1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1332
    :try_start_13
    iget-object v1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1333
    iget-object v1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v3, "IdleState: enableBlockRules true"

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1334
    iget-object v1, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v1, v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_30
    .catchall {:try_start_13 .. :try_end_2e} :catchall_48

    .line 1339
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v2

    .line 1340
    return-void

    .line 1336
    :catch_30
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_2e

    .line 1339
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 1343
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "IdleState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1344
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1347
    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IdleState "

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

    .line 1349
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_3a6

    .line 1512
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IdleState ignore msg "

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

    .line 1513
    const/4 v3, 0x0

    .line 1516
    .local v3, "retVal":Z
    :goto_48
    return v3

    .line 1351
    .end local v3    # "retVal":Z
    :sswitch_49
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "IdleState onConnect"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1353
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1354
    .local v2, "iface":Ljava/lang/String;
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect(Ljava/lang/String;I)V
    invoke-static {v4, v2, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;I)V

    .line 1355
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1356
    const/4 v3, 0x1

    .line 1357
    .restart local v3    # "retVal":Z
    goto :goto_48

    .line 1359
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "retVal":Z
    :sswitch_68
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v5, 0x3f2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1360
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1362
    :try_start_76
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_a3

    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 1364
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1365
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9b} :catch_d3
    .catchall {:try_start_76 .. :try_end_9b} :catchall_f3

    .line 1379
    :cond_9b
    :goto_9b
    :try_start_9b
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1381
    :goto_a0
    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_f0

    .line 1382
    const/4 v3, 0x1

    .line 1383
    .restart local v3    # "retVal":Z
    goto :goto_48

    .line 1367
    .end local v3    # "retVal":Z
    :cond_a3
    :try_start_a3
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 1368
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1369
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 1370
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 1371
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d2} :catch_d3
    .catchall {:try_start_a3 .. :try_end_d2} :catchall_f3

    goto :goto_9b

    .line 1376
    :catch_d3
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in enableBlockRules: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_d4 .. :try_end_ea} :catchall_f3

    .line 1379
    :try_start_ea
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    goto :goto_a0

    .line 1381
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_f0
    move-exception v4

    monitor-exit v5
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_f0

    throw v4

    .line 1379
    :catchall_f3
    move-exception v4

    :try_start_f4
    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    throw v4
    :try_end_fa
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_f0

    .line 1385
    :sswitch_fa
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 1386
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 1387
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 1388
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1392
    :cond_11d
    const/4 v3, 0x1

    .line 1393
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1395
    .end local v3    # "retVal":Z
    :sswitch_120
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v5, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1396
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1397
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1398
    :try_start_133
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidRangeRules(Z)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    .line 1399
    monitor-exit v5

    .line 1400
    const/4 v3, 0x1

    .line 1401
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1399
    .end local v3    # "retVal":Z
    :catchall_13d
    move-exception v4

    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_133 .. :try_end_13f} :catchall_13d

    throw v4

    .line 1404
    :sswitch_140
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1405
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1407
    :try_start_14c
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 1408
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IdleState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1409
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 1410
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1411
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 1412
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 1413
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_1b3} :catch_1ce
    .catchall {:try_start_14c .. :try_end_1b3} :catchall_1e6

    .line 1424
    :cond_1b3
    :goto_1b3
    :try_start_1b3
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1425
    monitor-exit v5
    :try_end_1b9
    .catchall {:try_start_1b3 .. :try_end_1b9} :catchall_1e6

    .line 1426
    const/4 v3, 0x1

    .line 1427
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1418
    .end local v3    # "retVal":Z
    :cond_1bc
    :try_start_1bc
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1419
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1cd} :catch_1ce
    .catchall {:try_start_1bc .. :try_end_1cd} :catchall_1e6

    goto :goto_1b3

    .line 1421
    :catch_1ce
    move-exception v0

    .line 1422
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1cf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in enableBlockRules: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_1b3

    .line 1425
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1e6
    move-exception v4

    monitor-exit v5
    :try_end_1e8
    .catchall {:try_start_1cf .. :try_end_1e8} :catchall_1e6

    throw v4

    .line 1429
    :sswitch_1e9
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1430
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1432
    :try_start_1fb
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_233

    .line 1433
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1434
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 1435
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 1436
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_22a} :catch_254
    .catchall {:try_start_1fb .. :try_end_22a} :catchall_274

    .line 1447
    :cond_22a
    :goto_22a
    :try_start_22a
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1449
    :goto_22f
    monitor-exit v5
    :try_end_230
    .catchall {:try_start_22a .. :try_end_230} :catchall_271

    .line 1450
    const/4 v3, 0x1

    .line 1451
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1440
    .end local v3    # "retVal":Z
    :cond_233
    :try_start_233
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_22a

    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 1441
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_253} :catch_254
    .catchall {:try_start_233 .. :try_end_253} :catchall_274

    goto :goto_22a

    .line 1444
    :catch_254
    move-exception v0

    .line 1445
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in enableBlockRules: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_26b
    .catchall {:try_start_255 .. :try_end_26b} :catchall_274

    .line 1447
    :try_start_26b
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    goto :goto_22f

    .line 1449
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_271
    move-exception v4

    monitor-exit v5
    :try_end_273
    .catchall {:try_start_26b .. :try_end_273} :catchall_271

    throw v4

    .line 1447
    :catchall_274
    move-exception v4

    :try_start_275
    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    throw v4
    :try_end_27b
    .catchall {:try_start_275 .. :try_end_27b} :catchall_271

    .line 1453
    :sswitch_27b
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_2c8

    .line 1454
    .local v1, "enabled":Z
    :goto_27f
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eq v4, v1, :cond_2c5

    .line 1455
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1456
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1458
    if-eqz v1, :cond_2c4

    .line 1459
    :try_start_295
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_2c4

    .line 1460
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1461
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_2c4

    .line 1462
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_2c4

    .line 1463
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2c4} :catch_2ca
    .catchall {:try_start_295 .. :try_end_2c4} :catchall_2e2

    .line 1471
    :cond_2c4
    :goto_2c4
    :try_start_2c4
    monitor-exit v5

    .line 1473
    :cond_2c5
    const/4 v3, 0x1

    .line 1474
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .end local v1    # "enabled":Z
    .end local v3    # "retVal":Z
    :cond_2c8
    move v1, v4

    .line 1453
    goto :goto_27f

    .line 1468
    .restart local v1    # "enabled":Z
    :catch_2ca
    move-exception v0

    .line 1469
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in enableBlockRules: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_2c4

    .line 1471
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e2
    move-exception v4

    monitor-exit v5
    :try_end_2e4
    .catchall {:try_start_2c4 .. :try_end_2e4} :catchall_2e2

    throw v4

    .line 1476
    .end local v1    # "enabled":Z
    :sswitch_2e5
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1477
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1479
    :try_start_2f7
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_326

    .line 1480
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1481
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_326

    .line 1482
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_326

    .line 1483
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_326
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_326} :catch_32a
    .catchall {:try_start_2f7 .. :try_end_326} :catchall_342

    .line 1490
    :cond_326
    :goto_326
    :try_start_326
    monitor-exit v5

    .line 1491
    const/4 v3, 0x1

    .line 1492
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1487
    .end local v3    # "retVal":Z
    :catch_32a
    move-exception v0

    .line 1488
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in enableBlockRules: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_326

    .line 1490
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_342
    move-exception v4

    monitor-exit v5
    :try_end_344
    .catchall {:try_start_326 .. :try_end_344} :catchall_342

    throw v4

    .line 1494
    :sswitch_345
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1495
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1497
    :try_start_357
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_386

    .line 1498
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    .line 1499
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_386

    .line 1500
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_386

    .line 1501
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_386
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_386} :catch_38a
    .catchall {:try_start_357 .. :try_end_386} :catchall_3a2

    .line 1508
    :cond_386
    :goto_386
    :try_start_386
    monitor-exit v5

    .line 1509
    const/4 v3, 0x1

    .line 1510
    .restart local v3    # "retVal":Z
    goto/16 :goto_48

    .line 1505
    .end local v3    # "retVal":Z
    :catch_38a
    move-exception v0

    .line 1506
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in enableBlockRules: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_386

    .line 1508
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a2
    move-exception v4

    monitor-exit v5
    :try_end_3a4
    .catchall {:try_start_386 .. :try_end_3a4} :catchall_3a2

    throw v4

    .line 1349
    nop

    :sswitch_data_3a6
    .sparse-switch
        0x3ea -> :sswitch_120
        0x3eb -> :sswitch_140
        0x3ed -> :sswitch_1e9
        0x3ee -> :sswitch_2e5
        0x3ef -> :sswitch_345
        0x3f0 -> :sswitch_fa
        0x3f2 -> :sswitch_68
        0x3f3 -> :sswitch_27b
        0x44d -> :sswitch_49
    .end sparse-switch
.end method
