.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 411
    const/4 v4, 0x1

    .line 413
    .local v4, "handled":Z
    const/4 v13, 0x1

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 414
    .local v6, "id":I
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v13}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    .line 415
    .local v2, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    if-nez v2, :cond_35

    .line 416
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unique id with no client mapping: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v4, 0x0

    move v5, v4

    .line 545
    .end local v4    # "handled":Z
    .local v5, "handled":I
    :goto_34
    return v5

    .line 422
    .end local v5    # "handled":I
    .restart local v4    # "handled":Z
    :cond_35
    # invokes: Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I
    invoke-static {v2, v6}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v1

    .line 423
    .local v1, "clientId":I
    if-gez v1, :cond_56

    .line 427
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Notification for a listener that is no longer active: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v4, 0x0

    move v5, v4

    .line 429
    .restart local v5    # "handled":I
    goto :goto_34

    .line 432
    .end local v5    # "handled":I
    :cond_56
    packed-switch p1, :pswitch_data_2ea

    .line 542
    const/4 v4, 0x0

    :goto_5a
    :pswitch_5a
    move v5, v4

    .line 545
    .restart local v5    # "handled":I
    goto :goto_34

    .line 435
    .end local v5    # "handled":I
    :pswitch_5c
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_FOUND Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    invoke-direct {v11, v13, v14}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v11, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60004

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_5a

    .line 442
    .end local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_8d
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_LOST Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    invoke-direct {v11, v13, v14}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .restart local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60005

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_5a

    .line 449
    .end local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_be
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_DISC_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60003

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_5a

    .line 455
    :pswitch_e5
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_REGISTERED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .restart local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x6000b

    invoke-virtual {v13, v14, v6, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_5a

    .line 462
    .end local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_114
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_REGISTER_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x6000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_5a

    .line 474
    :pswitch_13b
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v8, 0x0

    .line 476
    .local v8, "index":I
    :goto_156
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_17a

    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_17a

    .line 477
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_177

    .line 478
    add-int/lit8 v8, v8, 0x1

    .line 480
    :cond_177
    add-int/lit8 v8, v8, 0x1

    goto :goto_156

    .line 482
    :cond_17a
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v8, v13, :cond_19f

    .line 483
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid service found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 486
    :cond_19f
    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, "name":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 488
    .local v10, "rest":Ljava/lang/String;
    const-string v13, ".local."

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 490
    .local v12, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v13, v9}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 492
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 493
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 494
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3000(Lcom/android/server/NsdService;I)Z

    .line 497
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v13}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v7

    .line 500
    .local v7, "id2":I
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v14, 0x3

    aget-object v14, p3, v14

    # invokes: Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z
    invoke-static {v13, v7, v14}, Lcom/android/server/NsdService;->access$3100(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20d

    .line 501
    const v13, 0x60012

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7, v2, v13}, storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_5a

    .line 503
    :cond_20d
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 505
    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_5a

    .line 510
    .end local v7    # "id2":I
    .end local v8    # "index":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "rest":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :pswitch_21e
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3000(Lcom/android/server/NsdService;I)Z

    .line 512
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 513
    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 514
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_5a

    .line 519
    :pswitch_257
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3200(Lcom/android/server/NsdService;I)Z

    .line 520
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 521
    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 522
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_5a

    .line 528
    :pswitch_290
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_GET_ADDR_SUCCESS Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :try_start_2aa
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 531
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60014

    const/4 v15, 0x0

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_2c9
    .catch Ljava/net/UnknownHostException; {:try_start_2aa .. :try_end_2c9} :catch_2dd

    .line 537
    :goto_2c9
    move-object/from16 v0, p0

    iget-object v13, v0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3200(Lcom/android/server/NsdService;I)Z

    .line 538
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 539
    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_5a

    .line 533
    :catch_2dd
    move-exception v3

    .line 534
    .local v3, "e":Ljava/net/UnknownHostException;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2c9

    .line 432
    :pswitch_data_2ea
    .packed-switch 0x25a
        :pswitch_be
        :pswitch_5c
        :pswitch_8d
        :pswitch_114
        :pswitch_e5
        :pswitch_21e
        :pswitch_13b
        :pswitch_5a
        :pswitch_5a
        :pswitch_257
        :pswitch_290
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 267
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 268
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1400(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 269
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 270
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .registers 5
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 253
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_26

    .line 254
    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;
    .param p4, "what"    # I

    .prologue
    .line 261
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1400(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$900(Lcom/android/server/NsdService;Z)V

    .line 240
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 241
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->startMDnsDaemon()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1200(Lcom/android/server/NsdService;)Z

    .line 243
    :cond_1d
    return-void
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 248
    iget-object v0, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopMDnsDaemon()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;)Z

    .line 250
    :cond_15
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x6000a

    const v11, 0x60007

    const v10, 0x60003

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 276
    const/4 v4, 0x1

    .line 278
    .local v4, "result":Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_264

    .line 404
    const/4 v4, 0x0

    .line 407
    :cond_12
    :goto_12
    return v4

    .line 281
    :sswitch_13
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_2c

    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_2c

    .line 283
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->startMDnsDaemon()Z
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1200(Lcom/android/server/NsdService;)Z

    .line 285
    :cond_2c
    const/4 v4, 0x0

    .line 286
    goto :goto_12

    .line 288
    :sswitch_2e
    const/4 v4, 0x0

    .line 289
    goto :goto_12

    .line 292
    :sswitch_30
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    # getter for: Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    invoke-static {v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1600(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v7

    # invokes: Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1700(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_12

    .line 295
    :sswitch_3c
    const-string v6, "NsdService"

    const-string v7, "Discover services"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 297
    .local v5, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 299
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 300
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_12

    .line 305
    :cond_65
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v3

    .line 306
    .local v3, "id":I
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z
    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 308
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discover "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    .line 312
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60002

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_12

    .line 314
    :cond_ba
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    .line 315
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 320
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_ca
    const-string v6, "NsdService"

    const-string v7, "Stop service discovery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 324
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_e1
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_f0
    .catch Ljava/lang/NullPointerException; {:try_start_e1 .. :try_end_f0} :catch_10c

    move-result v3

    .line 330
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 331
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 332
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60008

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_12

    .line 325
    .end local v3    # "id":I
    :catch_10c
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 334
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_116
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 339
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_11f
    const-string v6, "NsdService"

    const-string v7, "Register service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 341
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 342
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 347
    :cond_145
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v3

    .line 348
    .restart local v3    # "id":I
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    # invokes: Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_188

    .line 349
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Register "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_12

    .line 353
    :cond_188
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2400(Lcom/android/server/NsdService;I)Z

    .line 354
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 359
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_198
    const-string v6, "NsdService"

    const-string/jumbo v7, "unregister service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 362
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_1b0
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1bf
    .catch Ljava/lang/NullPointerException; {:try_start_1b0 .. :try_end_1bf} :catch_1db

    move-result v3

    .line 368
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 369
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2400(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_1e8

    .line 370
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000e

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_12

    .line 363
    .end local v3    # "id":I
    :catch_1db
    move-exception v1

    .line 364
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 372
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_1e8
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 377
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_1f4
    const-string v6, "NsdService"

    const-string v7, "Resolve service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 379
    .restart local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 382
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_222

    .line 383
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    const/4 v8, 0x3

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 388
    :cond_222
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v3

    .line 389
    .restart local v3    # "id":I
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_245

    .line 390
    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 391
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_12

    .line 393
    :cond_245
    iget-object v6, p0, this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    .line 398
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_251
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    .line 399
    .local v2, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v6, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v7, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 400
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 278
    :sswitch_data_264
    .sparse-switch
        0x11000 -> :sswitch_13
        0x11004 -> :sswitch_2e
        0x60001 -> :sswitch_3c
        0x60006 -> :sswitch_ca
        0x60009 -> :sswitch_11f
        0x6000c -> :sswitch_198
        0x60012 -> :sswitch_1f4
        0x60019 -> :sswitch_30
        0x6001a -> :sswitch_251
    .end sparse-switch
.end method
