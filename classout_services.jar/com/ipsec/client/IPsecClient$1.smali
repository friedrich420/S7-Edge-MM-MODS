.class Lcom/ipsec/client/IPsecClient$1;
.super Lcom/ipsec/client/IPsecServiceCallbackBinder;
.source "IPsecClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ipsec/client/IPsecClient;


# direct methods
.method constructor <init>(Lcom/ipsec/client/IPsecClient;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, this$0:Lcom/ipsec/client/IPsecClient;

    invoke-direct {p0}, Lcom/ipsec/client/IPsecServiceCallbackBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Landroid/os/Bundle;)V
    .registers 25
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 374
    const-string v19, "IPSC"

    const-string v20, "IPsecRemoteConnection"

    const-string/jumbo v21, "valueChanged()"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v19, v0

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static/range {v19 .. v19}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v19

    if-nez v19, :cond_1f

    .line 533
    :cond_1e
    :goto_1e
    return-void

    .line 380
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v19, v0

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static/range {v19 .. v19}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ipsec/client/IIPsecListener;

    .line 381
    .local v12, "listener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v12, :cond_1e

    .line 386
    sget-object v17, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;

    .line 387
    .local v17, "state":Lcom/ipsec/client/IPsecEvent;
    new-instance v6, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v6}, Lcom/ipsec/client/IPsecEventData;-><init>()V

    .line 388
    .local v6, "data":Lcom/ipsec/client/IPsecEventData;
    const/4 v5, 0x0

    .line 389
    .local v5, "connectionId":I
    const/4 v2, 0x0

    .line 390
    .local v2, "connection":Lcom/ipsec/client/IPsecConnection;
    const/4 v3, 0x0

    .line 391
    .local v3, "connectionDestroyed":Z
    const/4 v4, 0x0

    .line 392
    .local v4, "connectionEvent":Z
    const/4 v15, 0x0

    .line 393
    .local v15, "serviceStateEvent":Z
    sget-object v14, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 396
    .local v14, "serviceStateError":Lcom/ipsec/client/IPsecError;
    const-string v19, "connection-id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_80

    .line 398
    const/4 v4, 0x1

    .line 399
    const-string v19, "connection-id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v19, v0

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v20

    monitor-enter v20

    .line 402
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v19, v0

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/ipsec/client/IPsecConnection;

    move-object v2, v0

    .line 403
    monitor-exit v20
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_173

    .line 404
    invoke-virtual {v6, v2}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 406
    :cond_80
    const-string/jumbo v19, "ike-error-value"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    .line 408
    const-string/jumbo v19, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_ae

    .line 410
    const-string/jumbo v19, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 411
    const/4 v3, 0x1

    .line 414
    :cond_ae
    const-string/jumbo v19, "newState"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 415
    .local v18, "str":Ljava/lang/String;
    if-eqz v18, :cond_e6

    .line 419
    :try_start_bb
    invoke-static/range {v18 .. v18}, Lcom/ipsec/client/IPsecEvent;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecEvent;

    move-result-object v17

    .line 420
    const-string v19, "IPSC"

    const-string v20, "IPsecRemoteConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "valueChanged(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bb .. :try_end_e6} :catch_176

    .line 429
    :cond_e6
    :goto_e6
    sget-object v19, Lcom/ipsec/client/IPsecClient$3;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    invoke-virtual/range {v17 .. v17}, Lcom/ipsec/client/IPsecEvent;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_1aa

    .line 474
    sget-object v17, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;

    .line 475
    const/4 v3, 0x1

    .line 479
    :goto_f4
    :pswitch_f4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_118

    .line 481
    move-object v11, v12

    .line 482
    .local v11, "eventListener":Lcom/ipsec/client/IIPsecListener;
    move-object/from16 v8, v17

    .line 483
    .local v8, "event":Lcom/ipsec/client/IPsecEvent;
    move-object v9, v6

    .line 484
    .local v9, "eventData":Lcom/ipsec/client/IPsecEventData;
    new-instance v13, Ljava/lang/Thread;

    new-instance v19, Lcom/ipsec/client/IPsecClient$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v8, v9}, Lcom/ipsec/client/IPsecClient$1$1;-><init>(Lcom/ipsec/client/IPsecClient$1;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 493
    .local v13, "onUpdateThread":Ljava/lang/Thread;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 494
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 497
    .end local v8    # "event":Lcom/ipsec/client/IPsecEvent;
    .end local v9    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .end local v11    # "eventListener":Lcom/ipsec/client/IIPsecListener;
    .end local v13    # "onUpdateThread":Ljava/lang/Thread;
    :cond_118
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_13f

    .line 499
    move-object v11, v12

    .line 500
    .restart local v11    # "eventListener":Lcom/ipsec/client/IIPsecListener;
    move-object v10, v14

    .line 501
    .local v10, "eventError":Lcom/ipsec/client/IPsecError;
    move-object v9, v6

    .line 502
    .restart local v9    # "eventData":Lcom/ipsec/client/IPsecEventData;
    new-instance v16, Ljava/lang/Thread;

    new-instance v19, Lcom/ipsec/client/IPsecClient$1$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v10, v9}, Lcom/ipsec/client/IPsecClient$1$2;-><init>(Lcom/ipsec/client/IPsecClient$1;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 513
    .local v16, "serviceStatusChangedThread":Ljava/lang/Thread;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 514
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 519
    .end local v9    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .end local v10    # "eventError":Lcom/ipsec/client/IPsecError;
    .end local v11    # "eventListener":Lcom/ipsec/client/IIPsecListener;
    .end local v16    # "serviceStatusChangedThread":Ljava/lang/Thread;
    :cond_13f
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_1e

    .line 521
    if-eqz v5, :cond_168

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v19, v0

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v20

    monitor-enter v20

    .line 525
    :try_start_152
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v19, v0

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    monitor-exit v20
    :try_end_168
    .catchall {:try_start_152 .. :try_end_168} :catchall_1a6

    .line 528
    :cond_168
    if-eqz v2, :cond_1e

    .line 530
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    goto/16 :goto_1e

    .line 403
    .end local v18    # "str":Ljava/lang/String;
    :catchall_173
    move-exception v19

    :try_start_174
    monitor-exit v20
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    throw v19

    .line 422
    .restart local v18    # "str":Ljava/lang/String;
    :catch_176
    move-exception v7

    .line 424
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v19, "IPSC"

    const-string v20, "IPsecRemoteConnection"

    const-string/jumbo v21, "valueChanged() IllegalArgumentException"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e6

    .line 432
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_18b
    const/4 v15, 0x1

    .line 433
    sget-object v14, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 435
    goto/16 :goto_f4

    .line 437
    :pswitch_190
    const/4 v15, 0x1

    .line 438
    sget-object v14, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 439
    goto/16 :goto_f4

    .line 442
    :pswitch_195
    const/4 v3, 0x1

    .line 443
    goto/16 :goto_f4

    .line 447
    :pswitch_198
    const/4 v3, 0x1

    .line 448
    goto/16 :goto_f4

    .line 453
    :pswitch_19b
    const/4 v3, 0x1

    .line 454
    goto/16 :goto_f4

    .line 458
    :pswitch_19e
    const/4 v3, 0x1

    .line 459
    goto/16 :goto_f4

    .line 462
    :pswitch_1a1
    const/4 v15, 0x1

    .line 463
    sget-object v14, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 465
    goto/16 :goto_f4

    .line 526
    :catchall_1a6
    move-exception v19

    :try_start_1a7
    monitor-exit v20
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a6

    throw v19

    .line 429
    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_18b
        :pswitch_190
        :pswitch_195
        :pswitch_195
        :pswitch_198
        :pswitch_f4
        :pswitch_19b
        :pswitch_19e
        :pswitch_1a1
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
    .end packed-switch
.end method
