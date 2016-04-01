.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3682
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    .line 3683
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3684
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 3688
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_148

    .line 3792
    :cond_7
    :goto_7
    return-void

    .line 3691
    :sswitch_8
    const/4 v0, 0x0

    .line 3692
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v9

    .line 3693
    :try_start_c
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)I

    move-result v10

    if-ne v8, v10, :cond_3e

    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 3695
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3696
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 3700
    monitor-exit v9
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_40

    .line 3701
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x18

    if-ne v8, v9, :cond_43

    .line 3702
    const-string v8, "Failed to find a new network - expiring NetTransition Wakelock"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_7

    .line 3698
    :cond_3e
    :try_start_3e
    monitor-exit v9

    goto :goto_7

    .line 3700
    :catchall_40
    move-exception v8

    monitor-exit v9
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v8

    .line 3704
    :cond_43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetTransition Wakelock ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_53

    const-string/jumbo v0, "unknown"

    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_53
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cleared because we found a replacement network"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_7

    .line 3710
    :sswitch_65
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)V

    goto :goto_7

    .line 3714
    :sswitch_6b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 3715
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v8, v3}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto :goto_7

    .line 3720
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_75
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 3721
    .local v5, "networkType":I
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v1, :cond_81

    .line 3722
    .local v1, "enabled":Z
    :goto_7b
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v8, v5, v1}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;IZ)V

    goto :goto_7

    .end local v1    # "enabled":Z
    :cond_81
    move v1, v9

    .line 3721
    goto :goto_7b

    .line 3727
    .end local v5    # "networkType":I
    :sswitch_83
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_7

    .line 3731
    :sswitch_8e
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_7

    .line 3735
    :sswitch_99
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_7

    .line 3739
    :sswitch_a4
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    .line 3744
    :sswitch_af
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_7

    .line 3749
    :sswitch_ba
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 3753
    :sswitch_c1
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/PendingIntent;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    invoke-static {v9, v8, v10}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_7

    .line 3757
    :sswitch_ce
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkRequest;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    invoke-static {v9, v8, v10}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_7

    .line 3761
    :sswitch_db
    iget-object v11, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/Network;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_ef

    move v10, v1

    :goto_e6
    iget v12, p1, Landroid/os/Message;->arg2:I

    if-eqz v12, :cond_f1

    :goto_ea
    # invokes: Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    invoke-static {v11, v8, v10, v1}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_7

    :cond_ef
    move v10, v9

    goto :goto_e6

    :cond_f1
    move v1, v9

    goto :goto_ea

    .line 3765
    :sswitch_f3
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_7

    .line 3769
    :sswitch_fe
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 3774
    :sswitch_105
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 3779
    :sswitch_110
    iget-object v9, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 3780
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 3781
    .local v7, "slot":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 3782
    .local v6, "reason":I
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v8

    invoke-virtual {v8, v4, v7, v6}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_7

    .line 3786
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "reason":I
    .end local v7    # "slot":I
    :sswitch_129
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_137
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3787
    .restart local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v1, v8, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_137

    .line 3688
    :sswitch_data_148
    .sparse-switch
        0x8 -> :sswitch_8
        0x9 -> :sswitch_65
        0xb -> :sswitch_6b
        0xc -> :sswitch_75
        0x10 -> :sswitch_83
        0x11 -> :sswitch_8e
        0x12 -> :sswitch_a4
        0x13 -> :sswitch_af
        0x15 -> :sswitch_af
        0x16 -> :sswitch_ce
        0x17 -> :sswitch_99
        0x18 -> :sswitch_8
        0x19 -> :sswitch_129
        0x1a -> :sswitch_ba
        0x1b -> :sswitch_c1
        0x1c -> :sswitch_db
        0x1d -> :sswitch_f3
        0x1e -> :sswitch_fe
        0x1f -> :sswitch_ba
        0x8100b -> :sswitch_105
        0x8100c -> :sswitch_110
    .end sparse-switch
.end method
