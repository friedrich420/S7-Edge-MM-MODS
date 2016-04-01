.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2967
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    .line 2968
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2969
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2974
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_40c

    .line 3187
    :cond_7
    :goto_7
    return-void

    .line 2976
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_7

    .line 2980
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2981
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_7

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_7

    .line 2985
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_7

    .line 2989
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2990
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_50

    .line 2991
    const-string v1, "EVENT_NETWORK_CAPABILITIES_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto :goto_7

    .line 2993
    :cond_50
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 2995
    .local v12, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v1, 0x11

    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_66

    const/16 v1, 0x10

    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2997
    :cond_66
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has CS-managed capability."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :cond_84
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_be

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->equalImmutableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 3001
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " changed immutable capabilities: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_be
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v1, v11, v12}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto/16 :goto_7

    .line 3009
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :sswitch_c7
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDefaultNetworkSwitch()V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 3013
    :sswitch_d0
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3014
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_eb

    .line 3015
    const-string v1, "NetworkAgent not found for EVENT_NETWORK_PROPERTIES_CHANGED"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3018
    :cond_eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update of LinkProperties for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 3021
    iget-object v13, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 3022
    .local v13, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v11

    .line 3023
    :try_start_114
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 3024
    monitor-exit v11
    :try_end_11d
    .catchall {:try_start_114 .. :try_end_11d} :catchall_13e

    .line 3025
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-nez v1, :cond_12b

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->bLPUpdatedBeforeConnected:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3026
    :cond_12b
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    invoke-static {v1, v11, v13}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const v2, 0x80007

    invoke-virtual {v1, v11, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_7

    .line 3024
    :catchall_13e
    move-exception v1

    :try_start_13f
    monitor-exit v11
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    throw v1

    .line 3033
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v13    # "oldLp":Landroid/net/LinkProperties;
    :sswitch_141
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3034
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_15c

    .line 3035
    const-string v1, "EVENT_NETWORK_INFO_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3038
    :cond_15c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkInfo;

    .line 3039
    .local v10, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    invoke-static {v1, v11, v10}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 3043
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_16b
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3044
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_186

    .line 3045
    const-string v1, "EVENT_REPLACE_NETWORK_INFO from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3048
    :cond_186
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkInfo;

    .line 3049
    .restart local v10    # "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->replaceNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    invoke-static {v1, v11, v10}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 3053
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_195
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3054
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_1b0

    .line 3055
    const-string v1, "EVENT_NETWORK_SCORE_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3058
    :cond_1b0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    .line 3059
    .local v15, "score":Ljava/lang/Integer;
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_7

    .line 3063
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v15    # "score":Ljava/lang/Integer;
    :sswitch_1c5
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3064
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_1e0

    .line 3065
    const-string v1, "EVENT_UID_RANGES_ADDED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3069
    :cond_1e0
    :try_start_1e0
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_7

    .line 3070
    :catch_1f9
    move-exception v9

    .line 3072
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in addVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3077
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_212
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3078
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_22d

    .line 3079
    const-string v1, "EVENT_UID_RANGES_REMOVED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3083
    :cond_22d
    :try_start_22d
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_244} :catch_246

    goto/16 :goto_7

    .line 3084
    :catch_246
    move-exception v9

    .line 3086
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in removeVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3091
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_25f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3092
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_27a

    .line 3093
    const-string v1, "EVENT_SET_EXPLICITLY_SELECTED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3096
    :cond_27a
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_289

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v1, :cond_289

    .line 3097
    const-string v1, "ERROR: created network explicitly selected."

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    .line 3099
    :cond_289
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 3100
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_7

    .line 3104
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_29e
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3105
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_2b9

    .line 3106
    const-string v1, "EVENT_PACKET_KEEPALIVE from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3109
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 3113
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2c8
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3114
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/16 v16, 0x0

    .line 3115
    .local v16, "status":I
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "EVENT_NETWORK_TESTED"

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3116
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_363

    const/16 v17, 0x1

    .line 3118
    .local v17, "valid":Z
    :goto_2e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " validation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v17, :cond_367

    const-string v1, " passed"

    :goto_2fb
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 3119
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_324

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_324

    .line 3122
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 3123
    const/4 v1, 0x3

    move/from16 v0, v16

    if-le v0, v1, :cond_36b

    .line 3124
    const/4 v1, 0x1

    # setter for: Lcom/android/server/ConnectivityService;->mInCaptivePortal:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2902(Z)Z

    .line 3129
    :cond_324
    :goto_324
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    move/from16 v0, v17

    if-eq v0, v1, :cond_34e

    .line 3130
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v14

    .line 3131
    .local v14, "oldScore":I
    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 3132
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int v1, v1, v17

    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 3133
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3135
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    if-eq v14, v1, :cond_34e

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3137
    .end local v14    # "oldScore":I
    :cond_34e
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3140
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81007

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_7

    .line 3116
    .end local v17    # "valid":Z
    :cond_363
    const/16 v17, 0x0

    goto/16 :goto_2e4

    .line 3118
    .restart local v17    # "valid":Z
    :cond_367
    const-string/jumbo v1, "failed"

    goto :goto_2fb

    .line 3126
    :cond_36b
    const/4 v1, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mInCaptivePortal:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2902(Z)Z

    goto :goto_324

    .line 3154
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "status":I
    .end local v17    # "valid":Z
    :sswitch_370
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3155
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "EVENT_NETWORK_LINGER_COMPLETE"

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3156
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    .line 3161
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_38b
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 3162
    .local v3, "netId":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3db

    const/16 v18, 0x1

    .line 3164
    .local v18, "visible":Z
    :goto_397
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 3165
    :try_start_3a0
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3166
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2
    :try_end_3af
    .catchall {:try_start_3a0 .. :try_end_3af} :catchall_3de

    .line 3168
    if-eqz v11, :cond_3ca

    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    move/from16 v0, v18

    if-eq v0, v1, :cond_3ca

    .line 3169
    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 3170
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int v1, v1, v18

    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 3171
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3173
    :cond_3ca
    if-nez v18, :cond_3e1

    .line 3174
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_7

    .line 3162
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v18    # "visible":Z
    :cond_3db
    const/16 v18, 0x0

    goto :goto_397

    .line 3166
    .restart local v18    # "visible":Z
    :catchall_3de
    move-exception v1

    :try_start_3df
    monitor-exit v2
    :try_end_3e0
    .catchall {:try_start_3df .. :try_end_3e0} :catchall_3de

    throw v1

    .line 3176
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3e1
    if-nez v11, :cond_3ea

    .line 3177
    const-string v1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3180
    :cond_3ea
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x1

    sget-object v4, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    iget-object v5, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iget-object v6, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/PendingIntent;

    iget-object v8, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v8, v8, Landroid/net/NetworkMisc;->explicitlySelected:Z

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_7

    .line 2974
    :sswitch_data_40c
    .sparse-switch
        0x11000 -> :sswitch_8
        0x11003 -> :sswitch_12
        0x11004 -> :sswitch_2c
        0x81001 -> :sswitch_141
        0x81002 -> :sswitch_36
        0x81003 -> :sswitch_d0
        0x81004 -> :sswitch_195
        0x81005 -> :sswitch_1c5
        0x81006 -> :sswitch_212
        0x81008 -> :sswitch_25f
        0x8100d -> :sswitch_29e
        0x81010 -> :sswitch_16b
        0x82002 -> :sswitch_2c8
        0x82005 -> :sswitch_370
        0x8200a -> :sswitch_38b
        0x83ffe -> :sswitch_c7
    .end sparse-switch
.end method
