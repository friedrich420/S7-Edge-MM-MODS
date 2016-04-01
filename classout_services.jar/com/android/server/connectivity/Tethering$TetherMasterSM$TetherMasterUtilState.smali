.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2

    .prologue
    .line 3004
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected blockDataForNCM()V
    .registers 4

    .prologue
    .line 3582
    :try_start_0
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 3586
    :goto_c
    return-void

    .line 3583
    :catch_d
    move-exception v0

    .line 3584
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_c
.end method

.method protected chooseUpstreamType(Z)V
    .registers 30
    .param p1, "tryCell"    # Z

    .prologue
    .line 3351
    const/16 v20, -0x1

    .line 3355
    .local v20, "upType":I
    const/4 v11, 0x0

    .line 3357
    .local v11, "iface":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3359
    .local v4, "actualIface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 3362
    const-string v23, "1"

    const-string/jumbo v24, "net.tether.always"

    const-string v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 3364
    .local v14, "isTetherAlwaysOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 3366
    :try_start_33
    const-string v23, "Tethering"

    const-string v25, "chooseUpstreamType has upstream iface types:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_82

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 3368
    .local v17, "netType":Ljava/lang/Integer;
    const-string v23, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 3380
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "netType":Ljava/lang/Integer;
    :catchall_7f
    move-exception v23

    monitor-exit v24
    :try_end_81
    .catchall {:try_start_33 .. :try_end_81} :catchall_7f

    throw v23

    .line 3372
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_82
    :try_start_82
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_96
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_ca

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 3373
    .restart local v17    # "netType":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 3375
    .local v12, "info":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_96

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_96

    .line 3376
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 3380
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v17    # "netType":Ljava/lang/Integer;
    :cond_ca
    monitor-exit v24
    :try_end_cb
    .catchall {:try_start_82 .. :try_end_cb} :catchall_7f

    .line 3382
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "chooseUpstreamType("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), preferredApn ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", got type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 3390
    .local v15, "linkProperties":Landroid/net/LinkProperties;
    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_137

    const/16 v23, 0x5

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f3

    .line 3392
    :cond_137
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, turnOnUpstreamMobileConnection(I)Z

    .line 3403
    :cond_13e
    :goto_13e
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_25b

    .line 3404
    const-string v23, "TEL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_219

    .line 3407
    :try_start_158
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v23

    const-string v24, "connectivity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 3409
    .local v16, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v23

    if-eqz v23, :cond_211

    .line 3410
    const/16 v19, 0x1

    .line 3411
    .local v19, "tryAgainLater":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mRetryCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRetryLimit:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->access$8600(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_200

    .line 3412
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, turnOnUpstreamMobileConnection(I)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d8

    .line 3416
    const/16 v19, 0x0

    .line 3417
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mRetryCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mRetryCount:I

    .line 3419
    :cond_1d8
    if-eqz v19, :cond_1ed

    .line 3420
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    const-wide/16 v26, 0x2710

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_1ed} :catch_208

    .line 3558
    .end local v16    # "mConnManager":Landroid/net/ConnectivityManager;
    .end local v19    # "tryAgainLater":Z
    :cond_1ed
    :goto_1ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    return-void

    .line 3393
    :cond_1f3
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_13e

    .line 3400
    invoke-virtual/range {p0 .. p0}, turnOffUpstreamMobileConnection()Z

    goto/16 :goto_13e

    .line 3425
    .restart local v16    # "mConnManager":Landroid/net/ConnectivityManager;
    .restart local v19    # "tryAgainLater":Z
    :cond_200
    :try_start_200
    const-string v23, "Tethering"

    const-string v24, "chooseUpstreamType: Reached MAX, NO RETRIES"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_207} :catch_208

    goto :goto_1ed

    .line 3431
    .end local v16    # "mConnManager":Landroid/net/ConnectivityManager;
    .end local v19    # "tryAgainLater":Z
    :catch_208
    move-exception v9

    .line 3432
    .local v9, "e":Ljava/lang/Exception;
    const-string v23, "Tethering"

    const-string v24, "Exception in getMobileDataEnabled()"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ed

    .line 3428
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v16    # "mConnManager":Landroid/net/ConnectivityManager;
    :cond_211
    :try_start_211
    const-string v23, "Tethering"

    const-string v24, "Data is Disabled"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_218} :catch_208

    goto :goto_1ed

    .line 3435
    .end local v16    # "mConnManager":Landroid/net/ConnectivityManager;
    :cond_219
    const/16 v19, 0x1

    .line 3436
    .restart local v19    # "tryAgainLater":Z
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_245

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, turnOnUpstreamMobileConnection(I)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_245

    .line 3439
    const/16 v19, 0x0

    .line 3441
    :cond_245
    if-eqz v19, :cond_1ed

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    const-wide/16 v26, 0x2710

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    goto :goto_1ed

    .line 3466
    .end local v19    # "tryAgainLater":Z
    :cond_25b
    if-eqz v15, :cond_2a7

    .line 3470
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Finding IPv4 upstream interface on: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v23

    sget-object v24, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static/range {v23 .. v24}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v13

    .line 3473
    .local v13, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v13, :cond_307

    .line 3474
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v11

    .line 3475
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Found interface "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v13}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    :goto_2a3
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 3484
    .end local v13    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_2a7
    if-eqz v11, :cond_1ed

    .line 3485
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    .line 3487
    .local v6, "dnsServers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v8

    .line 3489
    .local v8, "dualDnsServers":[Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    .line 3490
    .local v7, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v7, :cond_34f

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v23

    if-lez v23, :cond_34f

    .line 3492
    new-instance v21, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3495
    .local v21, "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    .line 3498
    .local v22, "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2ef
    :goto_2ef
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_313

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 3499
    .local v5, "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v5, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_2ef

    .line 3500
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ef

    .line 3477
    .end local v5    # "dnsAddress":Ljava/net/InetAddress;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v8    # "dualDnsServers":[Ljava/lang/String;
    .end local v21    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v22    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v13    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_307
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 3478
    const-string v23, "Tethering"

    const-string v24, "No IPv4 upstream interface, set iface name for IPv6"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a3

    .line 3503
    .end local v13    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v6    # "dnsServers":[Ljava/lang/String;
    .restart local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v8    # "dualDnsServers":[Ljava/lang/String;
    .restart local v21    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v22    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_313
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_31d

    .line 3504
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 3507
    :cond_31d
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_321
    :goto_321
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_339

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 3508
    .restart local v5    # "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v5, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_321

    .line 3509
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_321

    .line 3514
    .end local v5    # "dnsAddress":Ljava/net/InetAddress;
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->makeDualServerStrings(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    .line 3517
    .end local v21    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v22    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_34f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3fa

    .line 3519
    if-eqz v7, :cond_1ed

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v23

    if-eqz v23, :cond_1ed

    .line 3521
    :try_start_363
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v18

    .line 3522
    .local v18, "network":Landroid/net/Network;
    if-nez v18, :cond_39f

    .line 3523
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No Network for upstream type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    :cond_39f
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Setting DNS forwarders: Network="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", dnsServers="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    if-nez v14, :cond_1ed

    .line 3530
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_3e2
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_3e2} :catch_3e4

    goto/16 :goto_1ed

    .line 3531
    .end local v18    # "network":Landroid/net/Network;
    :catch_3e4
    move-exception v9

    .line 3532
    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v24

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1ed

    .line 3538
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3fa
    :try_start_3fa
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v18

    .line 3539
    .restart local v18    # "network":Landroid/net/Network;
    if-nez v18, :cond_436

    .line 3540
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No Network for upstream type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :cond_436
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Setting DNS forwarders: Network="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", dnsServers="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    if-nez v14, :cond_1ed

    .line 3547
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v8}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_479
    .catch Ljava/lang/Exception; {:try_start_3fa .. :try_end_479} :catch_47b

    goto/16 :goto_1ed

    .line 3548
    .end local v18    # "network":Landroid/net/Network;
    :catch_47b
    move-exception v9

    .line 3549
    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v24

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1ed
.end method

.method protected enableString(I)Ljava/lang/String;
    .registers 3
    .param p1, "apnType"    # I

    .prologue
    .line 3013
    packed-switch p1, :pswitch_data_e

    .line 3020
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3015
    :pswitch_5
    const-string/jumbo v0, "enableDUNAlways"

    goto :goto_4

    .line 3018
    :pswitch_9
    const-string/jumbo v0, "enableHIPRI"

    goto :goto_4

    .line 3013
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "actualIfaceName"    # Ljava/lang/String;

    .prologue
    .line 3564
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying tethered with iface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3566
    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mActualUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3567
    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3571
    .local v2, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3572
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "iface"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    const-string v3, "actualIface"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3574
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2d

    .line 3577
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4f
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 3010
    const/4 v0, 0x0

    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3143
    :try_start_1
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_25

    .line 3150
    :try_start_c
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_32

    .line 3156
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 3157
    const/4 v1, 0x1

    :goto_24
    return v1

    .line 3144
    :catch_25
    move-exception v0

    .line 3145
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_24

    .line 3152
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v0

    .line 3153
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_24
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 3049
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # ++operator for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6904(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    .line 3050
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v0

    if-eq v0, v3, :cond_29

    .line 3051
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    invoke-virtual {p0, v2}, enableString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 3053
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 3055
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3060
    :try_start_2
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3061
    .local v3, "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string/jumbo v9, "ncm0"

    iget-object v10, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 3062
    const-string v9, "Tethering"

    const-string/jumbo v10, "skip IP forwarding for ncm"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_d8

    .line 3074
    :goto_22
    :try_start_22
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v9

    if-eqz v9, :cond_131

    .line 3075
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 3076
    const-string v9, "Tethering"

    const-string v10, "Set Knox Custom USB Net DHCP Range"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$7300()[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_50} :catch_102

    .line 3096
    :goto_50
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 3098
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "kddi_cpa_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_146

    move v2, v7

    .line 3099
    .local v2, "cpaEnabled":Z
    :goto_72
    if-eqz v2, :cond_16c

    .line 3100
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "kddi_cpa_static_dns1"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3101
    .local v0, "cpaDns1":Ljava/lang/String;
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "kddi_cpa_static_dns2"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3102
    .local v1, "cpaDns2":Ljava/lang/String;
    if-eqz v0, :cond_149

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_149

    .line 3103
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v9

    aput-object v0, v9, v8

    .line 3104
    if-eqz v1, :cond_c2

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 3105
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v8

    aput-object v1, v8, v7

    .line 3114
    :cond_c2
    :goto_c2
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mCpaDnsSet:Z
    invoke-static {v8, v7}, Lcom/android/server/connectivity/Tethering;->access$7802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 3139
    .end local v0    # "cpaDns1":Ljava/lang/String;
    .end local v1    # "cpaDns2":Ljava/lang/String;
    .end local v2    # "cpaEnabled":Z
    .end local v3    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_c9
    :goto_c9
    return v7

    .line 3064
    .restart local v3    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_ca
    :try_start_ca
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d6} :catch_d8

    goto/16 :goto_22

    .line 3068
    .end local v3    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catch_d8
    move-exception v4

    .line 3069
    .local v4, "e":Ljava/lang/Exception;
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    move v7, v8

    .line 3070
    goto :goto_c9

    .line 3079
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_e6
    :try_start_e6
    const-string v9, "Tethering"

    const-string v10, "Set DHCP_DEFAULT_RANGE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_100} :catch_102

    goto/16 :goto_50

    .line 3086
    :catch_102
    move-exception v4

    .line 3088
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_103
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 3089
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_121} :catch_123

    goto/16 :goto_50

    .line 3090
    :catch_123
    move-exception v5

    .line 3091
    .local v5, "ee":Ljava/lang/Exception;
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    move v7, v8

    .line 3092
    goto :goto_c9

    .line 3084
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ee":Ljava/lang/Exception;
    :cond_131
    :try_start_131
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_144} :catch_102

    goto/16 :goto_50

    :cond_146
    move v2, v8

    .line 3098
    goto/16 :goto_72

    .line 3108
    .restart local v0    # "cpaDns1":Ljava/lang/String;
    .restart local v1    # "cpaDns2":Ljava/lang/String;
    .restart local v2    # "cpaEnabled":Z
    :cond_149
    const-string/jumbo v8, "net.dns1"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3109
    .local v6, "value":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 3110
    const-string/jumbo v8, "net.dns1"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const-string/jumbo v8, "net.dns2"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 3116
    .end local v0    # "cpaDns1":Ljava/lang/String;
    .end local v1    # "cpaDns2":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_16c
    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mCpaDnsSet:Z
    invoke-static {v9, v8}, Lcom/android/server/connectivity/Tethering;->access$7802(Lcom/android/server/connectivity/Tethering;Z)Z

    goto/16 :goto_c9
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .registers 10
    .param p1, "apnType"    # I

    .prologue
    const/4 v4, 0x0

    .line 3023
    const/4 v3, 0x1

    .line 3024
    .local v3, "retValue":Z
    const/4 v5, -0x1

    if-ne p1, v5, :cond_6

    .line 3045
    :cond_5
    :goto_5
    return v4

    .line 3025
    :cond_6
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    if-eq p1, v5, :cond_11

    invoke-virtual {p0}, turnOffUpstreamMobileConnection()Z

    .line 3026
    :cond_11
    const/4 v2, 0x3

    .line 3027
    .local v2, "result":I
    invoke-virtual {p0, p1}, enableString(I)Ljava/lang/String;

    move-result-object v0

    .line 3028
    .local v0, "enableString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3029
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 3031
    packed-switch v2, :pswitch_data_48

    .line 3041
    const/4 v3, 0x0

    :goto_28
    move v4, v3

    .line 3045
    goto :goto_5

    .line 3034
    :pswitch_2a
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 3035
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3036
    .local v1, "m":Landroid/os/Message;
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # ++operator for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6904(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 3037
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/32 v6, 0x9c40

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_28

    .line 3031
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method
