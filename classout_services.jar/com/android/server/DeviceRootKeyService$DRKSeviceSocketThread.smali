.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DRKSeviceSocketThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
    }
.end annotation


# static fields
.field private static final BUF_MAX:I = 0x2000

.field private static final CMD_ID_ADD_TLV:I = 0x6

.field private static final CMD_ID_CREATE_SERVICE_KEY_SESSION:I = 0x3

.field private static final CMD_ID_GET_DRK_UID:I = 0x2

.field private static final CMD_ID_INIT_TLV:I = 0x5

.field private static final CMD_ID_IS_EXIST_DRK:I = 0x1

.field private static final CMD_ID_RELEASE_SERVICE_KEY_SESSION:I = 0x4

.field private static final CMD_ID_SET_TEST_DRK:I = 0x7

.field private static final DRK_SERIVCE_SOCKET_NAME:Ljava/lang/String; = "DeviceRootKeyService"

.field private static final DRK_SERVICE_PROTOCOL_VERSION:B = 0x1t

.field private static final ERR_FAILED_ACTION:S = 0x5s

.field private static final ERR_INVALID_COMMAND_ID:S = 0x3s

.field private static final ERR_INVALID_DATA:S = 0x1s

.field private static final ERR_INVALID_VERSION:S = 0x2s

.field private static final ERR_NOT_EXIST_DRK:S = 0x4s

.field private static final ERR_NO_ERROR:S = 0x0s

.field private static final ERR_PERMISSION_DENIED:S = 0x6s

.field private static final MIN_IN_DATA_SIZE:I = 0xc

.field private static final MIN_OUT_DATA_SIZE:I = 0x9

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final POS_COMMAND_ID:I = 0x1

.field private static final POS_IN_BOOL_VALUE:I = 0x7

.field private static final POS_IN_INT_VALUE:I = 0x3

.field private static final POS_IN_STRING_SIZE:I = 0x8

.field private static final POS_IN_STRING_VALUE:I = 0xc

.field private static final POS_OUT_DATA_VALUE:I = 0x9

.field private static final POS_OUT_ERR_VALUE:I = 0x3

.field private static final POS_OUT_SIZE_VALUE:I = 0x5

.field private static final POS_VERSION:I


# instance fields
.field private input:[B

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 357
    return-void
.end method

.method private addTlv(I[B)Z
    .registers 4
    .param p1, "tlvTag"    # I
    .param p2, "tlvValue"    # [B

    .prologue
    .line 416
    iget-object v0, p0, mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    if-nez v0, :cond_b

    .line 417
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v0, p0, mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 419
    :cond_b
    iget-object v0, p0, mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    move-result v0

    return v0
.end method

.method private executeCommand([BZ)[B
    .registers 14
    .param p1, "input"    # [B
    .param p2, "hasPermission"    # Z

    .prologue
    const/4 v8, 0x6

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 424
    new-instance v2, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    .line 425
    .local v2, "icp":Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
    new-instance v3, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;

    invoke-direct {v3, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    .line 427
    .local v3, "odg":Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;
    invoke-virtual {v2, p1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ParserData([B)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 429
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Parsing is failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v3, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    .line 431
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    .line 432
    invoke-virtual {v3, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 433
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    .line 530
    :goto_2c
    return-object v5

    .line 436
    :cond_2d
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    .line 437
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    .line 439
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v5

    if-eq v5, v7, :cond_66

    .line 441
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version is not matched. Caller version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 443
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    goto :goto_2c

    .line 446
    :cond_66
    if-nez p2, :cond_77

    .line 448
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Permission denied."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v3, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 450
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    goto :goto_2c

    .line 453
    :cond_77
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v5

    packed-switch v5, :pswitch_data_13a

    .line 526
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 530
    :goto_82
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    goto :goto_2c

    .line 456
    :pswitch_87
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceRootKeyService;->isExistDeviceRootKey(I)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 457
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_82

    .line 459
    :cond_97
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_82

    .line 463
    :pswitch_9c
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "drkUID":Ljava/lang/String;
    if-eqz v1, :cond_af

    .line 466
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 467
    invoke-virtual {v3, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData(Ljava/lang/String;)V

    goto :goto_82

    .line 470
    :cond_af
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_82

    .line 476
    .end local v1    # "drkUID":Ljava/lang/String;
    :pswitch_b3
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getEnableTlv()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 477
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v7

    iget-object v8, p0, mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .line 481
    .local v4, "serviceKey":[B
    :goto_c9
    if-eqz v4, :cond_e2

    .line 483
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 484
    invoke-virtual {v3, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto :goto_82

    .line 479
    .end local v4    # "serviceKey":[B
    :cond_d2
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .restart local v4    # "serviceKey":[B
    goto :goto_c9

    .line 487
    :cond_e2
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_82

    .line 491
    .end local v4    # "serviceKey":[B
    :pswitch_e6
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v5}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    .line 492
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_82

    .line 496
    :pswitch_ef
    invoke-direct {p0}, initTlv()V

    .line 497
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_82

    .line 501
    :pswitch_f6
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvTag()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvValue()[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, addTlv(I[B)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 502
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_82

    .line 504
    :cond_109
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_82

    .line 510
    :pswitch_10e
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getRawData()[B

    move-result-object v6

    # invokes: Lcom/android/server/DeviceRootKeyService;->verifyTestDrkCommand([B)[B
    invoke-static {v5, v6}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;[B)[B

    move-result-object v0

    .local v0, "blobData":[B
    if-eqz v0, :cond_135

    .line 512
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    # setter for: Lcom/android/server/DeviceRootKeyService;->isHexaData:Z
    invoke-static {v5, v9}, Lcom/android/server/DeviceRootKeyService;->access$202(Lcom/android/server/DeviceRootKeyService;Z)Z

    .line 514
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v5, v0}, Lcom/android/server/DeviceRootKeyService;->setDeviceRootKey([B)I

    move-result v5

    if-nez v5, :cond_131

    .line 515
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 519
    :goto_12a
    iget-object v5, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    # setter for: Lcom/android/server/DeviceRootKeyService;->isHexaData:Z
    invoke-static {v5, v7}, Lcom/android/server/DeviceRootKeyService;->access$202(Lcom/android/server/DeviceRootKeyService;Z)Z

    goto/16 :goto_82

    .line 517
    :cond_131
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_12a

    .line 522
    :cond_135
    invoke-virtual {v3, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_82

    .line 453
    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_87
        :pswitch_9c
        :pswitch_b3
        :pswitch_e6
        :pswitch_ef
        :pswitch_f6
        :pswitch_10e
    .end packed-switch
.end method

.method private initTlv()V
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 412
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 362
    :try_start_0
    new-instance v5, Landroid/net/LocalServerSocket;

    const-string v6, "DeviceRootKeyService"

    invoke-direct {v5, v6}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, mLocalServerSocket:Landroid/net/LocalServerSocket;

    .line 363
    const/16 v5, 0x2000

    new-array v5, v5, [B

    iput-object v5, p0, input:[B
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_b0

    .line 371
    :goto_f
    iget-object v5, p0, mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v5, :cond_c6

    .line 374
    :try_start_13
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Ready to connect."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v5, p0, mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v5}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v5

    iput-object v5, p0, mLocalSocket:Landroid/net/LocalSocket;

    .line 377
    iget-object v5, p0, mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_bd

    .line 379
    iget-object v5, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 380
    .local v2, "is":Ljava/io/InputStream;
    iget-object v5, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 382
    .local v3, "os":Ljava/io/OutputStream;
    iget-object v5, p0, input:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 383
    .local v4, "readLen":I
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_50
    :goto_50
    if-lez v4, :cond_bd

    .line 387
    iget-object v5, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    .line 389
    .local v0, "cred":Landroid/net/Credentials;
    iget-object v5, p0, input:[B

    iget-object v6, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v7

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v8

    const/4 v9, 0x1

    # invokes: Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;IIZ)Z

    move-result v6

    invoke-direct {p0, v5, v6}, executeCommand([BZ)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 391
    iget-object v5, p0, input:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 393
    if-lez v4, :cond_50

    .line 394
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_90} :catch_91

    goto :goto_50

    .line 400
    .end local v0    # "cred":Landroid/net/Credentials;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "readLen":I
    :catch_91
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket connection may be closed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b0
    move-exception v1

    .line 367
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Failed to excute socket service."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_bd
    :try_start_bd
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Disconnected."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c4} :catch_91

    goto/16 :goto_f

    .line 406
    :cond_c6
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Socket thread has been stopped."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method
