.class Lcom/android/server/net/NetworkPolicyManagerService$17;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 3560
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3563
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_27a

    .line 3695
    const/16 v25, 0x0

    :goto_b
    return v25

    .line 3565
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3566
    .local v23, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 3567
    .local v24, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3568
    .local v11, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    if-ge v8, v11, :cond_47

    .line 3569
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3570
    .local v12, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v12, :cond_44

    .line 3572
    :try_start_3d
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_26a

    .line 3568
    :cond_44
    :goto_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 3577
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3578
    const/16 v25, 0x1

    goto :goto_b

    .line 3581
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v23    # "uid":I
    .end local v24    # "uidRules":I
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Ljava/lang/String;

    move-object/from16 v17, v25

    check-cast v17, [Ljava/lang/String;

    .line 3582
    .local v17, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3583
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_72
    if-ge v8, v11, :cond_90

    .line 3584
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3585
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v12, :cond_8d

    .line 3587
    :try_start_88
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_8d} :catch_26d

    .line 3583
    :cond_8d
    :goto_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_72

    .line 3592
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3593
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3596
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v17    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_a1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 3598
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3599
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3601
    :try_start_bd
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_137

    .line 3603
    .local v10, "imsIface":Ljava/lang/String;
    :try_start_c2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/IConnectivityManager;

    move-result-object v25

    const/16 v27, 0xb

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v13

    .line 3604
    .local v13, "lp":Landroid/net/LinkProperties;
    if-eqz v13, :cond_dc

    .line 3605
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_db} :catch_12a
    .catchall {:try_start_c2 .. :try_end_db} :catchall_137

    move-result-object v10

    .line 3610
    .end local v13    # "lp":Landroid/net/LinkProperties;
    :cond_dc
    :goto_dc
    :try_start_dc
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_106

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v27, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_125

    if-eqz v9, :cond_125

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_103
    .catchall {:try_start_dc .. :try_end_103} :catchall_137

    move-result v25

    if-eqz v25, :cond_125

    .line 3618
    :cond_106
    :try_start_106
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_113} :catch_276
    .catchall {:try_start_106 .. :try_end_113} :catchall_137

    .line 3623
    :goto_113
    :try_start_113
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 3626
    :cond_125
    monitor-exit v26

    .line 3627
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3607
    :catch_12a
    move-exception v6

    .line 3608
    .local v6, "e":Landroid/os/RemoteException;
    const-string v25, "NetworkPolicy"

    const-string v27, "Failed to retrive IMS link properties"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_dc

    .line 3626
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v10    # "imsIface":Ljava/lang/String;
    :catchall_137
    move-exception v25

    monitor-exit v26
    :try_end_139
    .catchall {:try_start_113 .. :try_end_139} :catchall_137

    throw v25

    .line 3630
    .end local v9    # "iface":Ljava/lang/String;
    :sswitch_13a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-eqz v25, :cond_171

    const/16 v22, 0x1

    .line 3631
    .local v22, "restrictBackground":Z
    :goto_144
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3632
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_153
    if-ge v8, v11, :cond_174

    .line 3633
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3634
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v12, :cond_16e

    .line 3636
    :try_start_169
    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_16e} :catch_270

    .line 3632
    :cond_16e
    :goto_16e
    add-int/lit8 v8, v8, 0x1

    goto :goto_153

    .line 3630
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v22    # "restrictBackground":Z
    :cond_171
    const/16 v22, 0x0

    goto :goto_144

    .line 3641
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v22    # "restrictBackground":Z
    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3642
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3645
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v22    # "restrictBackground":Z
    :sswitch_185
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3649
    .local v14, "lowestRule":J
    const-wide/16 v26, 0x3e8

    :try_start_193
    div-long v20, v14, v26

    .line 3650
    .local v20, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_1a6} :catch_273

    .line 3654
    .end local v20    # "persistThreshold":J
    :goto_1a6
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3657
    .end local v14    # "lowestRule":J
    :sswitch_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 3658
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3662
    :sswitch_1b7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3663
    .restart local v23    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 3664
    .local v19, "procState":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v19

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateUidState(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    .line 3665
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3668
    .end local v19    # "procState":I
    .end local v23    # "uid":I
    :sswitch_1d6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3669
    .restart local v23    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeUidState(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 3670
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3673
    .end local v23    # "uid":I
    :sswitch_1ed
    const/16 v16, 0x0

    .line 3674
    .local v16, "mEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x112001a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 3675
    const-string/jumbo v25, "ro.csc.country_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "China"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_220

    if-nez v16, :cond_220

    .line 3676
    const-string v25, "NetworkPolicy"

    const-string v26, "CHN don\'t use RestrictBackgroundData during PowerSave mode"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3679
    :cond_220
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 3680
    .local v5, "arg":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_23a

    const/4 v7, 0x1

    .line 3681
    .local v7, "enabled":Z
    :goto_22b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->changePowerSaveMode(Z)V
    invoke-static {v0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 3682
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3680
    .end local v7    # "enabled":Z
    :cond_23a
    const/4 v7, 0x0

    goto :goto_22b

    .line 3685
    .end local v5    # "arg":I
    .end local v16    # "mEnabled":Z
    :sswitch_23c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800()Z

    move-result v26

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReductionRules(Z)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 3686
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3689
    :sswitch_24d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 3690
    .local v4, "appStatus":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 3691
    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->handleCheckFireWallPermission(ILjava/lang/String;)V
    invoke-static {v0, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    .line 3692
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3573
    .end local v4    # "appStatus":I
    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v23    # "uid":I
    .restart local v24    # "uidRules":I
    :catch_26a
    move-exception v25

    goto/16 :goto_44

    .line 3588
    .end local v23    # "uid":I
    .end local v24    # "uidRules":I
    .restart local v17    # "meteredIfaces":[Ljava/lang/String;
    :catch_26d
    move-exception v25

    goto/16 :goto_8d

    .line 3637
    .end local v17    # "meteredIfaces":[Ljava/lang/String;
    .restart local v22    # "restrictBackground":Z
    :catch_270
    move-exception v25

    goto/16 :goto_16e

    .line 3651
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v22    # "restrictBackground":Z
    .restart local v14    # "lowestRule":J
    :catch_273
    move-exception v25

    goto/16 :goto_1a6

    .line 3619
    .end local v14    # "lowestRule":J
    .restart local v9    # "iface":Ljava/lang/String;
    .restart local v10    # "imsIface":Ljava/lang/String;
    :catch_276
    move-exception v25

    goto/16 :goto_113

    .line 3563
    nop

    :sswitch_data_27a
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_57
        0x5 -> :sswitch_a1
        0x6 -> :sswitch_13a
        0x7 -> :sswitch_185
        0x8 -> :sswitch_1aa
        0x9 -> :sswitch_1b7
        0xa -> :sswitch_1d6
        0xb -> :sswitch_24d
        0xc -> :sswitch_1ed
        0x3e9 -> :sswitch_23c
    .end sparse-switch
.end method
