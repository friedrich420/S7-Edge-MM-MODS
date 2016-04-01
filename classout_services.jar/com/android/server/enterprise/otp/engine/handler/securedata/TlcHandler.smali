.class public Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;
.super Ljava/lang/Object;
.source "TlcHandler.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/securedata/ISecureData;


# static fields
.field static final DB_HMAC_KEY:I = 0x0

.field static final DB_HMAC_VALUE:I = 0x1

.field public static sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private byteToHex([B)Ljava/lang/String;
    .registers 11
    .param p1, "bytes"    # [B

    .prologue
    .line 596
    if-nez p1, :cond_4

    .line 597
    const/4 v5, 0x0

    .line 602
    :goto_3
    return-object v5

    .line 598
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-ge v2, v3, :cond_26

    aget-byte v1, v0, v2

    .line 600
    .local v1, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 602
    .end local v1    # "b":B
    :cond_26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private getDeviceCertPublicKey()[B
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 419
    const-string v13, "TlcHandler::getDeviceCertPublicKey Enter"

    invoke-static {v13}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, "KNOX_KEY_TYPE_RSA_CERT":I
    const/4 v10, 0x0

    .line 422
    .local v10, "otpCert":[B
    const/4 v11, 0x0

    .line 423
    .local v11, "otpCertParsed":[B
    const/4 v12, 0x0

    .line 425
    .local v12, "publicKey":[B
    invoke-virtual {p0}, getCertificate()[B

    move-result-object v10

    .line 426
    if-eqz v10, :cond_6b

    .line 428
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v8, 0x0

    .line 430
    .local v8, "k":I
    :goto_12
    :try_start_12
    array-length v13, v10

    if-ge v4, v13, :cond_41

    aget-byte v13, v10, v4

    if-ne v13, v14, :cond_41

    .line 431
    add-int/lit8 v4, v4, 0x1

    aget-byte v13, v10, v4

    and-int/lit16 v9, v13, 0xff

    .line 432
    .local v9, "len":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v13, v10, v4

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v9, v13

    .line 433
    add-int/lit8 v4, v4, 0x1

    .line 434
    if-ne v8, v14, :cond_3d

    .line 435
    new-array v11, v9, [B

    .line 436
    const/4 v7, 0x0

    .local v7, "j":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_30
    if-ge v7, v9, :cond_3c

    .line 437
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v13, v10, v5

    aput-byte v13, v11, v7

    .line 436
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_30

    :cond_3c
    move v4, v5

    .line 440
    .end local v5    # "i":I
    .end local v7    # "j":I
    .restart local v4    # "i":I
    :cond_3d
    add-int/2addr v4, v9

    .line 441
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 444
    .end local v9    # "len":I
    :cond_41
    if-eqz v11, :cond_6b

    .line 445
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 447
    .local v6, "inputstream":Ljava/io/InputStream;
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 449
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 451
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v12

    .line 454
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_6b} :catch_75
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_6b} :catch_6c

    .line 460
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "i":I
    .end local v6    # "inputstream":Ljava/io/InputStream;
    .end local v8    # "k":I
    :cond_6b
    :goto_6b
    return-object v12

    .line 456
    .restart local v4    # "i":I
    .restart local v8    # "k":I
    :catch_6c
    move-exception v3

    .line 457
    .local v3, "e":Ljava/lang/Exception;
    :goto_6d
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_6b

    .line 456
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_75
    move-exception v3

    goto :goto_6d
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;
    .registers 4

    .prologue
    .line 38
    const-class v3, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    monitor-enter v3

    :try_start_3
    sget-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    if-nez v2, :cond_2e

    .line 39
    const-string v2, "TlcHandler::getInstance - New instance created"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 40
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-direct {v2}, <init>()V

    sput-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    .line 41
    sget-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, otpInit()I

    .line 43
    sget-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, getDbHmacKey()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "oldDbHmacKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 46
    .local v1, "ret":I
    if-nez v0, :cond_27

    .line 47
    sget-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, setDbHmacKey()I

    move-result v1

    .line 49
    :cond_27
    if-eqz v1, :cond_32

    .line 50
    const-string v2, "TlcHandler - Key creation failed"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 57
    :cond_2e
    :goto_2e
    sget-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_42

    monitor-exit v3

    return-object v2

    .line 51
    :cond_32
    if-nez v0, :cond_2e

    :try_start_34
    sget-object v2, sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, getOtpDbHmac()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 52
    const-string v2, "TlcHandler - HAMC Key is NULL, whereas last saved HMAC VALUE is not NULL."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_42

    goto :goto_2e

    .line 38
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getLength([B)I
    .registers 3
    .param p1, "in"    # [B

    .prologue
    .line 588
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    array-length v0, p1

    goto :goto_3
.end method

.method private getString([B)Ljava/lang/String;
    .registers 3
    .param p1, "in"    # [B

    .prologue
    .line 592
    if-nez p1, :cond_5

    const-string v0, "NULL"

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method public static native nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeDeleteToken(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGenerateOtp(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetCertificate()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetDbHmacData(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetDerivedKey(Ljava/lang/String;I[BIII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetHmac(Ljava/lang/String;I[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetKeyProvClientHello(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIIII)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeOtpInit()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeOtpShutdown()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeSetDbHmacData(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized createToken(Landroid/os/Bundle;)I
    .registers 37
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::createToken - ENTER "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 77
    const-string v8, "OTP_INTERNAL_TOKEN_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "token_id":Ljava/lang/String;
    const-string v8, "OTP_OATH_PROTOCOL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "oath_protocol":I
    const-string v8, "OTP_LENGTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 80
    .local v12, "otp_len":I
    const-string v8, "OTP_ENCODING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 81
    .local v13, "otp_encoding":I
    const-string v8, "OTP_PARAM"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 82
    .local v10, "otp_param":J
    const-string v8, "SECRET_ENCRYPTION_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 83
    .local v17, "encryption_algo":I
    const/4 v15, 0x0

    .line 84
    .local v15, "encryption_key":[B
    const/16 v20, 0x0

    .line 85
    .local v20, "pwd":[B
    const/16 v8, 0x184

    move/from16 v0, v17

    if-eq v0, v8, :cond_62

    const/16 v8, 0x185

    move/from16 v0, v17

    if-ne v0, v8, :cond_230

    .line 87
    :cond_62
    const-string v8, "SECRET_ENCRYPTION_PASSWORD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 90
    :goto_6a
    const-string v8, "SHARED_SECRET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 91
    .local v7, "shared_secret":[B
    const-string v8, "SECRET_ENCRYPTION_IV"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .line 92
    .local v18, "iv":[B
    const-string v8, "OCRA_SUITE"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "ocra_suite":Ljava/lang/String;
    const-string v8, "TIME_DRIFT"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 95
    .local v25, "time_drift":I
    const-string v8, "SECRET_ENCRYPTION_PBE_SALT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .line 96
    .local v22, "salt":[B
    const-string v8, "SECRET_ENCRYPTION_PBE_ITERATION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 97
    .local v24, "num_iteration":I
    const-string v8, "OTP_HASH_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 98
    .local v9, "hash_algo":I
    const/16 v33, 0x0

    .line 99
    .local v33, "flags":I
    const-string v8, "DSKPP_SERVER_ID"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 101
    .local v28, "serverId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | token_id = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | oath_protocol = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | otp_len = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | otp_encoding = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | hash_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | otp_param (initial_counter/step_size) = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | shared_secret_encryption_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | shared_secret_encryption_key = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | shared_secret = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | ocra_suite = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | time_drift = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | serverId = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_1f8
    .catchall {:try_start_1 .. :try_end_1f8} :catchall_25f

    .line 114
    const/16 v34, 0x4ff

    .line 116
    .local v34, "ret":I
    :try_start_1fa
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getLength([B)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, getLength([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, getLength([B)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, getLength([B)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, getLength([B)I

    move-result v23

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v5 .. v33}, nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    :try_end_22d
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1fa .. :try_end_22d} :catch_23a
    .catchall {:try_start_1fa .. :try_end_22d} :catchall_25f

    move-result v34

    .line 125
    :goto_22e
    monitor-exit p0

    return v34

    .line 89
    .end local v7    # "shared_secret":[B
    .end local v9    # "hash_algo":I
    .end local v14    # "ocra_suite":Ljava/lang/String;
    .end local v18    # "iv":[B
    .end local v22    # "salt":[B
    .end local v24    # "num_iteration":I
    .end local v25    # "time_drift":I
    .end local v28    # "serverId":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "ret":I
    :cond_230
    :try_start_230
    const-string v8, "SECRET_ENCRYPTION_PASSWORD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    goto/16 :goto_6a

    .line 121
    .restart local v7    # "shared_secret":[B
    .restart local v9    # "hash_algo":I
    .restart local v14    # "ocra_suite":Ljava/lang/String;
    .restart local v18    # "iv":[B
    .restart local v22    # "salt":[B
    .restart local v24    # "num_iteration":I
    .restart local v25    # "time_drift":I
    .restart local v28    # "serverId":Ljava/lang/String;
    .restart local v33    # "flags":I
    .restart local v34    # "ret":I
    :catch_23a
    move-exception v4

    .line 122
    .local v4, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otpjni nativeCreateToken Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_25d
    .catchall {:try_start_230 .. :try_end_25d} :catchall_25f

    move-result v34

    goto :goto_22e

    .line 75
    .end local v4    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v5    # "token_id":Ljava/lang/String;
    .end local v6    # "oath_protocol":I
    .end local v7    # "shared_secret":[B
    .end local v9    # "hash_algo":I
    .end local v10    # "otp_param":J
    .end local v12    # "otp_len":I
    .end local v13    # "otp_encoding":I
    .end local v14    # "ocra_suite":Ljava/lang/String;
    .end local v15    # "encryption_key":[B
    .end local v17    # "encryption_algo":I
    .end local v18    # "iv":[B
    .end local v20    # "pwd":[B
    .end local v22    # "salt":[B
    .end local v24    # "num_iteration":I
    .end local v25    # "time_drift":I
    .end local v28    # "serverId":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "ret":I
    :catchall_25f
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized deleteToken(Ljava/lang/String;)I
    .registers 6
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TlcHandler::deleteToken - ENTER ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_46

    .line 159
    const/16 v1, 0x4ff

    .line 161
    .local v1, "ret":I
    :try_start_1f
    invoke-static {p1}, nativeDeleteToken(Ljava/lang/String;)I
    :try_end_22
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1f .. :try_end_22} :catch_25
    .catchall {:try_start_1f .. :try_end_22} :catchall_46

    move-result v1

    .line 166
    :goto_23
    monitor-exit p0

    return v1

    .line 162
    :catch_25
    move-exception v0

    .line 163
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni nativeDeleteToken Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_46

    move-result v1

    goto :goto_23

    .line 158
    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v1    # "ret":I
    :catchall_46
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized generateOtp(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 16
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    const-string v10, "TlcHandler::generateOtp - ENTER"

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 131
    const-string v10, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "token_id":Ljava/lang/String;
    const-string v10, "OTP_OATH_PROTOCOL"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "oath_protocol":I
    const-string v10, "OCRA_PIN"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "pin":Ljava/lang/String;
    const-string v10, "OCRA_SESSION"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "session":Ljava/lang/String;
    const-string v10, "OCRA_CHALLENGE"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "challenge":Ljava/lang/String;
    const-string v10, "OCRA_IS_SIGNATURE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 137
    .local v7, "is_signature":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 139
    .local v2, "current_time":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | token_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 140
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | oath_protocol = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | current_time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 142
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_pin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_challenge = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_session = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_is_signature = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_1 .. :try_end_db} :catchall_ff

    .line 146
    const/4 v9, 0x0

    .line 148
    .local v9, "ret":Ljava/lang/String;
    :try_start_dc
    invoke-static/range {v0 .. v7}, nativeGenerateOtp(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_df
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_dc .. :try_end_df} :catch_e2
    .catchall {:try_start_dc .. :try_end_df} :catchall_ff

    move-result-object v9

    .line 153
    :goto_e0
    monitor-exit p0

    return-object v9

    .line 150
    :catch_e2
    move-exception v8

    .line 151
    .local v8, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_e3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "otpjni generateOtp Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_fe
    .catchall {:try_start_e3 .. :try_end_fe} :catchall_ff

    goto :goto_e0

    .line 130
    .end local v0    # "token_id":Ljava/lang/String;
    .end local v1    # "oath_protocol":I
    .end local v2    # "current_time":J
    .end local v4    # "challenge":Ljava/lang/String;
    .end local v5    # "pin":Ljava/lang/String;
    .end local v6    # "session":Ljava/lang/String;
    .end local v7    # "is_signature":I
    .end local v8    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v9    # "ret":Ljava/lang/String;
    :catchall_ff
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public getCertificate()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 403
    const-string v2, "TlcHandler::getCertificate Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "cert":[B
    :try_start_6
    invoke-static {}, nativeGetCertificate()[B
    :try_end_9
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 411
    :goto_a
    return-object v0

    .line 407
    :catch_b
    move-exception v1

    .line 408
    .local v1, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni nativeGetCertificate Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    goto :goto_a
.end method

.method public declared-synchronized getDbHmacKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 320
    monitor-enter p0

    const/4 v1, 0x0

    .line 322
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, nativeGetDbHmacData(I)Ljava/lang/String;
    :try_end_6
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_26

    move-result-object v1

    .line 327
    :goto_7
    monitor-exit p0

    return-object v1

    .line 323
    :catch_9
    move-exception v0

    .line 324
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni nativeGetDbHmacData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_26

    goto :goto_7

    .line 320
    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
    .registers 12
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "keyParams"    # Landroid/os/Bundle;

    .prologue
    .line 361
    const-string v0, "TlcHandler::getDerivedKey Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 362
    const-string v0, "CRYPTO_KDF_TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, "hmacType":I
    const-string v0, "CRYPTO_SALT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 364
    .local v2, "salt":[B
    const-string v0, "CRYPTO_ITERATION_COUNT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 365
    .local v4, "iterationCount":I
    const-string v0, "CRYPTO_DERIVEDKEY_LENGTH"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 366
    .local v5, "keyLength":I
    if-eqz v2, :cond_27

    array-length v3, v2

    .line 367
    .local v3, "saltLen":I
    :goto_20
    const/4 v7, 0x0

    .local v7, "key":[B
    move-object v0, p1

    .line 369
    :try_start_22
    invoke-static/range {v0 .. v5}, nativeGetDerivedKey(Ljava/lang/String;I[BIII)[B
    :try_end_25
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_22 .. :try_end_25} :catch_29

    move-result-object v7

    .line 373
    :goto_26
    return-object v7

    .line 366
    .end local v3    # "saltLen":I
    .end local v7    # "key":[B
    :cond_27
    const/4 v3, 0x0

    goto :goto_20

    .line 370
    .restart local v3    # "saltLen":I
    .restart local v7    # "key":[B
    :catch_29
    move-exception v6

    .line 371
    .local v6, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "otpjni nativeGetDerivedKey Exception : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public getHmac(Ljava/lang/String;I[B)[B
    .registers 10
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "msg"    # [B

    .prologue
    .line 378
    const-string v4, "TlcHandler::getHmac Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 379
    if-eqz p3, :cond_17

    array-length v3, p3

    .line 380
    .local v3, "msgLen":I
    :goto_8
    const/4 v1, 0x0

    .line 381
    .local v1, "key":[B
    const/16 v2, 0x14

    .line 382
    .local v2, "key_len":I
    const/16 v4, 0x170

    if-ne p2, v4, :cond_19

    .line 383
    const/16 v2, 0x14

    .line 391
    :goto_11
    :try_start_11
    invoke-static {p1, p2, p3, v3, v2}, nativeGetHmac(Ljava/lang/String;I[BII)[B
    :try_end_14
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_11 .. :try_end_14} :catch_39

    move-result-object v1

    :goto_15
    move-object v4, v1

    .line 395
    :goto_16
    return-object v4

    .line 379
    .end local v1    # "key":[B
    .end local v2    # "key_len":I
    .end local v3    # "msgLen":I
    :cond_17
    const/4 v3, 0x0

    goto :goto_8

    .line 384
    .restart local v1    # "key":[B
    .restart local v2    # "key_len":I
    .restart local v3    # "msgLen":I
    :cond_19
    const/16 v4, 0x171

    if-ne p2, v4, :cond_20

    .line 385
    const/16 v2, 0x20

    goto :goto_11

    .line 387
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "otpjni nativeGetHmac Error Unknown hmac type  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 388
    const/4 v4, 0x0

    goto :goto_16

    .line 392
    :catch_39
    move-exception v0

    .line 393
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "otpjni nativeGetHmac Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public declared-synchronized getOtpDbHmac()Ljava/lang/String;
    .registers 5

    .prologue
    .line 346
    monitor-enter p0

    const/4 v1, 0x0

    .line 348
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_3
    invoke-static {v2}, nativeGetDbHmacData(I)Ljava/lang/String;
    :try_end_6
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_26

    move-result-object v1

    .line 352
    :goto_7
    monitor-exit p0

    return-object v1

    .line 349
    :catch_9
    move-exception v0

    .line 350
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni nativeGetDbHmacData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_26

    goto :goto_7

    .line 346
    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .registers 7
    .param p1, "trigger"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;

    .prologue
    .line 465
    const-string v3, "TlcHandler::keyProvClientHello Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, "objClientHello":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    const/4 v0, 0x0

    .line 468
    .local v0, "encryptionKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 469
    .local v1, "encryptionKeyB":[B
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getDskppVariant()I

    move-result v3

    const/16 v4, 0x50a

    if-ne v3, v4, :cond_1f

    .line 470
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->isbUseCertificate()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 471
    invoke-direct {p0}, getDeviceCertPublicKey()[B

    move-result-object v1

    .line 479
    :cond_1a
    :goto_1a
    invoke-static {p1, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;->keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;[B)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    move-result-object v2

    .line 480
    return-object v2

    .line 473
    :cond_1f
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getDskppVariant()I

    move-result v3

    const/16 v4, 0x50b

    if-ne v3, v4, :cond_1a

    .line 474
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getServerPublicKey()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_1a

    .line 476
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_1a
.end method

.method public keyProvServerFinish(Landroid/os/Bundle;)I
    .registers 40
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 485
    const-string v8, "TlcHandler::keyProvServerFinish Enter"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 486
    const-string v8, "OTP_INTERNAL_TOKEN_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "token_id":Ljava/lang/String;
    const-string v8, "OTP_OATH_PROTOCOL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 488
    .local v6, "oath_protocol":I
    const-string v8, "OTP_LENGTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 489
    .local v12, "otp_len":I
    const-string v8, "OTP_ENCODING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 490
    .local v13, "otp_encoding":I
    const-string v8, "OTP_PARAM"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v36

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 491
    .local v10, "otp_param":J
    const-string v8, "OCRA_SUITE"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 492
    .local v14, "ocra_suite":Ljava/lang/String;
    const-string v8, "TIME_DRIFT"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 493
    .local v25, "time_drift":I
    const-string v8, "OTP_HASH_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 494
    .local v9, "hash_algo":I
    const/16 v33, 0x0

    .line 496
    .local v33, "flags":I
    const-string v8, "SECRET_ENCRYPTION_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 497
    .local v17, "encryption_algo":I
    const-string v8, "DSKPP_CLIENT_MAC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v26

    .line 498
    .local v26, "msg_hash":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, getLength([B)I

    move-result v27

    .line 499
    .local v27, "msg_hash_len":I
    const-string v8, "DSKPP_SERVER_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 500
    .local v28, "server_id":Ljava/lang/String;
    const-string v8, "DSKPP_KEY_PROV"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v29

    .line 501
    .local v29, "k_prov":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, getLength([B)I

    move-result v30

    .line 502
    .local v30, "k_prov_len":I
    const-string v8, "DSKPP_KEY_CONFIRMATION_MAC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v31

    .line 503
    .local v31, "key_confirmation_mac":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, getLength([B)I

    move-result v32

    .line 506
    .local v32, "key_confirmation_mac_len":I
    const/4 v7, 0x0

    .line 507
    .local v7, "shared_secret":[B
    const/4 v15, 0x0

    .line 508
    .local v15, "encryption_key":[B
    const/16 v18, 0x0

    .line 509
    .local v18, "iv":[B
    const/16 v20, 0x0

    .line 510
    .local v20, "pwd":[B
    const/16 v22, 0x0

    .line 511
    .local v22, "salt":[B
    const/16 v24, 0x0

    .line 514
    .local v24, "num_iteration":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "token_id : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "oath_protocol : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 516
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otp_len : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otp_encoding : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otp_param : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ocra_suite : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 520
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "time_drift : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "hash_algo : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 522
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "encryption_algo : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 523
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "msg_hash : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 524
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "msg_hash_len : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "server_id : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 526
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "k_prov : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "k_prov_len : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 528
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "key_confirmation_mac : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 530
    const/16 v34, 0x4ff

    .line 532
    .local v34, "ret":I
    :try_start_24c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getLength([B)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, getLength([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, getLength([B)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, getLength([B)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, getLength([B)I

    move-result v23

    invoke-static/range {v5 .. v33}, nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    :try_end_273
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_24c .. :try_end_273} :catch_275

    move-result v34

    .line 542
    :goto_274
    return v34

    .line 538
    :catch_275
    move-exception v4

    .line 539
    .local v4, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otpjni nativeCreateToken Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v34

    goto :goto_274
.end method

.method public declared-synchronized otpInit()I
    .registers 5

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    const-string v2, "TlcHandler::otpInit - ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    .line 63
    const/16 v1, 0x4ff

    .line 65
    .local v1, "ret":I
    :try_start_8
    invoke-static {}, nativeOtpInit()I
    :try_end_b
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_8 .. :try_end_b} :catch_e
    .catchall {:try_start_8 .. :try_end_b} :catchall_2f

    move-result v1

    .line 70
    :goto_c
    monitor-exit p0

    return v1

    .line 66
    :catch_e
    move-exception v0

    .line 67
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni otpInit Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2f

    move-result v1

    goto :goto_c

    .line 62
    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v1    # "ret":I
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized otpShutdown()I
    .registers 5

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    const-string v2, "TlcHandler::otpShutdown - ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    .line 172
    const/16 v1, 0x4ff

    .line 174
    .local v1, "ret":I
    :try_start_8
    invoke-static {}, nativeOtpShutdown()I
    :try_end_b
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_8 .. :try_end_b} :catch_e
    .catchall {:try_start_8 .. :try_end_b} :catchall_2f

    move-result v1

    .line 179
    :goto_c
    monitor-exit p0

    return v1

    .line 175
    :catch_e
    move-exception v0

    .line 176
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni nativeOtpShutdown Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2f

    move-result v1

    goto :goto_c

    .line 171
    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v1    # "ret":I
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resyncToken(Landroid/os/Bundle;)I
    .registers 37
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    const-string v8, "OTP_INTERNAL_TOKEN_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "token_id":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::resyncToken - ENTER ["

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 187
    const/16 v33, 0x0

    .line 188
    .local v33, "flags":I
    const-string v8, "OTP_OATH_PROTOCOL"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 189
    .local v6, "oath_protocol":I
    const-string v8, "OTP_LENGTH"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 190
    .local v12, "otp_len":I
    const-string v8, "OTP_ENCODING"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 191
    .local v13, "otp_encoding":I
    const-string v8, "OTP_PARAM"

    const-wide/16 v26, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 192
    .local v10, "otp_param":J
    const-string v8, "SECRET_ENCRYPTION_ALGO"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 193
    .local v17, "encryption_algo":I
    const-string v8, "SECRET_ENCRYPTION_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 194
    .local v15, "encryption_key":[B
    const-string v8, "SHARED_SECRET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 195
    .local v7, "shared_secret":[B
    const-string v8, "SECRET_ENCRYPTION_IV"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .line 196
    .local v18, "iv":[B
    const-string v8, "OCRA_SUITE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 197
    .local v14, "ocra_suite":Ljava/lang/String;
    const-string v8, "TIME_DRIFT"

    const v16, 0x7fffffff

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 198
    .local v25, "time_drift":I
    const-string v8, "SECRET_ENCRYPTION_PASSWORD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 199
    .local v20, "pwd":[B
    const-string v8, "SECRET_ENCRYPTION_PBE_SALT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .line 200
    .local v22, "salt":[B
    const-string v8, "SECRET_ENCRYPTION_PBE_ITERATION"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 201
    .local v24, "num_iteration":I
    const-string v8, "OTP_HASH_ALGO"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 202
    .local v9, "hash_algo":I
    const-string v8, "DSKPP_SERVER_ID"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 204
    .local v28, "serverId":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v6, v8, :cond_e8

    .line 205
    or-int/lit8 v33, v33, 0x1

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | oath_protocol = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 208
    :cond_e8
    const/4 v8, -0x1

    if-eq v12, v8, :cond_105

    .line 209
    or-int/lit8 v33, v33, 0x40

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | otp_len = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 212
    :cond_105
    const/4 v8, -0x1

    if-eq v13, v8, :cond_126

    .line 213
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x80

    move/from16 v33, v0

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | otp_encoding = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 216
    :cond_126
    const-wide/16 v26, -0x1

    cmp-long v8, v10, v26

    if-eqz v8, :cond_146

    .line 217
    or-int/lit8 v33, v33, 0x20

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | otp_param = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 220
    :cond_146
    const/4 v8, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_16c

    .line 221
    or-int/lit8 v33, v33, 0x8

    .line 222
    const-string v8, "TlcHandler::otpResyncToken | encryption_algo added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | encryption_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 225
    :cond_16c
    if-eqz v15, :cond_195

    .line 226
    or-int/lit8 v33, v33, 0x4

    .line 227
    const-string v8, "TlcHandler::otpResyncToken | encryption_key added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | encryption_key = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 230
    :cond_195
    if-eqz v7, :cond_1be

    .line 231
    or-int/lit8 v33, v33, 0x2

    .line 232
    const-string v8, "TlcHandler::otpResyncToken | shared_secret added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | shared_secret = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 235
    :cond_1be
    if-eqz v18, :cond_1e9

    .line 236
    or-int/lit8 v33, v33, 0x10

    .line 237
    const-string v8, "TlcHandler::otpResyncToken | iv added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 238
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | iv = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 240
    :cond_1e9
    if-eqz v14, :cond_30c

    .line 241
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x100

    move/from16 v33, v0

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | ocra_suite = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 246
    :goto_209
    const v8, 0x7fffffff

    move/from16 v0, v25

    if-eq v0, v8, :cond_230

    .line 247
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x1000

    move/from16 v33, v0

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | time_drift = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 251
    :cond_230
    if-eqz v20, :cond_25f

    .line 252
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x200

    move/from16 v33, v0

    .line 253
    const-string v8, "TlcHandler::otpResyncToken | pwd added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | pwd = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 256
    :cond_25f
    if-eqz v22, :cond_28e

    .line 257
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    .line 258
    const-string v8, "TlcHandler::otpResyncToken | salt added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | salt = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 262
    :cond_28e
    const/4 v8, -0x1

    move/from16 v0, v24

    if-eq v0, v8, :cond_2b3

    .line 263
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x800

    move/from16 v33, v0

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | num_iteration = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 267
    :cond_2b3
    const/4 v8, -0x1

    if-eq v9, v8, :cond_2d4

    .line 268
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x2000

    move/from16 v33, v0

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | hash_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_2d4
    .catchall {:try_start_1 .. :try_end_2d4} :catchall_338

    .line 271
    :cond_2d4
    const/16 v34, 0x4ff

    .line 273
    .local v34, "ret":I
    :try_start_2d6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getLength([B)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, getLength([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, getLength([B)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, getLength([B)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, getLength([B)I

    move-result v23

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v5 .. v33}, nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    :try_end_309
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_2d6 .. :try_end_309} :catch_313
    .catchall {:try_start_2d6 .. :try_end_309} :catchall_338

    move-result v34

    .line 282
    :goto_30a
    monitor-exit p0

    return v34

    .line 244
    .end local v34    # "ret":I
    :cond_30c
    :try_start_30c
    new-instance v14, Ljava/lang/String;

    .end local v14    # "ocra_suite":Ljava/lang/String;
    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .restart local v14    # "ocra_suite":Ljava/lang/String;
    goto/16 :goto_209

    .line 278
    .restart local v34    # "ret":I
    :catch_313
    move-exception v4

    .line 279
    .local v4, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otpjni otpResyncToken::nativeCreateToken Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_336
    .catchall {:try_start_30c .. :try_end_336} :catchall_338

    move-result v34

    goto :goto_30a

    .line 184
    .end local v4    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v5    # "token_id":Ljava/lang/String;
    .end local v6    # "oath_protocol":I
    .end local v7    # "shared_secret":[B
    .end local v9    # "hash_algo":I
    .end local v10    # "otp_param":J
    .end local v12    # "otp_len":I
    .end local v13    # "otp_encoding":I
    .end local v14    # "ocra_suite":Ljava/lang/String;
    .end local v15    # "encryption_key":[B
    .end local v17    # "encryption_algo":I
    .end local v18    # "iv":[B
    .end local v20    # "pwd":[B
    .end local v22    # "salt":[B
    .end local v24    # "num_iteration":I
    .end local v25    # "time_drift":I
    .end local v28    # "serverId":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "ret":I
    :catchall_338
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setDbHmacKey()I
    .registers 9

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    const-string v6, "TlcHandler::setDbHmacKey - ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 294
    const/16 v2, 0x20

    .line 295
    .local v2, "len":I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 296
    .local v3, "r":Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_16
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v6, v2, :cond_2b

    .line 298
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_16

    .line 292
    .end local v2    # "len":I
    .end local v3    # "r":Ljava/util/Random;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catchall_28
    move-exception v6

    monitor-exit p0

    throw v6

    .line 300
    .restart local v2    # "len":I
    .restart local v3    # "r":Ljava/util/Random;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_2b
    :try_start_2b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_3f

    .line 303
    const-string v6, "TlcHandler::setDbHmacKey - key is  NULL"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_28

    .line 304
    const/16 v4, 0x4ff

    .line 315
    :goto_3d
    monitor-exit p0

    return v4

    .line 306
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TlcHandler::setDbHmacKey - key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_28

    .line 308
    const/16 v4, 0x4ff

    .line 310
    .local v4, "ret":I
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, nativeSetDbHmacData(Ljava/lang/String;II)I
    :try_end_63
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_5b .. :try_end_63} :catch_65
    .catchall {:try_start_5b .. :try_end_63} :catchall_28

    move-result v4

    goto :goto_3d

    .line 311
    :catch_65
    move-exception v0

    .line 312
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "otpjni nativeSetDbHmacData Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_84
    .catchall {:try_start_66 .. :try_end_84} :catchall_28

    move-result v4

    goto :goto_3d
.end method

.method public declared-synchronized setOtpDbHmac(Ljava/lang/String;)I
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 332
    monitor-enter p0

    if-nez p1, :cond_7

    .line 333
    const/16 v1, 0x4ff

    .line 341
    :goto_5
    monitor-exit p0

    return v1

    .line 334
    :cond_7
    const/16 v1, 0x4ff

    .line 336
    .local v1, "ret":I
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, nativeSetDbHmacData(Ljava/lang/String;II)I
    :try_end_15
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_9 .. :try_end_15} :catch_17
    .catchall {:try_start_9 .. :try_end_15} :catchall_38

    move-result v1

    goto :goto_5

    .line 337
    :catch_17
    move-exception v0

    .line 338
    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otpjni nativeSetDbHmacData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_38

    move-result v1

    goto :goto_5

    .line 332
    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method
