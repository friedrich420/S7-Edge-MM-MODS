.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$1;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$CACertPubType;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"


# instance fields
.field private _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver;Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V

    iput-object v0, p0, _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    .line 14
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    .line 66
    iget-object v0, p0, _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 67
    iget-object v0, p0, _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->ca_cert_pub:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 68
    return-void
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native deleteCACert(ILjava/lang/String;)I
.end method

.method private static native destorySecureChannel(I)I
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private forwardApdu(I[B)[B
    .registers 4
    .param p1, "uid"    # I
    .param p2, "apdu"    # [B

    .prologue
    .line 292
    invoke-static {p1, p2}, forwardApduResponse(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method private getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .registers 7
    .param p1, "status"    # I
    .param p2, "tzError"    # I

    .prologue
    .line 57
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {p0, p2}, getSDKErrorCode(I)I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v0
.end method

.method private getSDKErrorCode(I)I
    .registers 6
    .param p1, "internalCode"    # I

    .prologue
    .line 75
    const-string v1, "UCM.SCP.TADriver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSDKErrorCode internalCode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "errorCode":I
    sparse-switch p1, :sswitch_data_5e

    .line 131
    :goto_1d
    const-string v1, "UCM.SCP.TADriver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSDKErrorCode errorCode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0

    .line 83
    :sswitch_37
    const/16 v0, 0x32

    .line 84
    goto :goto_1d

    .line 86
    :sswitch_3a
    const/16 v0, 0x33

    .line 87
    goto :goto_1d

    .line 90
    :sswitch_3d
    const/16 v0, 0x34

    .line 91
    goto :goto_1d

    .line 94
    :sswitch_40
    const/16 v0, 0x35

    .line 95
    goto :goto_1d

    .line 97
    :sswitch_43
    const/16 v0, 0x36

    .line 98
    goto :goto_1d

    .line 100
    :sswitch_46
    const/16 v0, 0x37

    .line 101
    goto :goto_1d

    .line 103
    :sswitch_49
    const/16 v0, 0x38

    .line 104
    goto :goto_1d

    .line 113
    :sswitch_4c
    const/16 v0, 0x39

    .line 114
    goto :goto_1d

    .line 116
    :sswitch_4f
    const/16 v0, 0x3a

    .line 117
    goto :goto_1d

    .line 119
    :sswitch_52
    const/16 v0, 0x3b

    .line 120
    goto :goto_1d

    .line 122
    :sswitch_55
    const/16 v0, 0x3c

    .line 123
    goto :goto_1d

    .line 125
    :sswitch_58
    const/16 v0, 0x3d

    .line 126
    goto :goto_1d

    .line 128
    :sswitch_5b
    const/16 v0, 0x42

    goto :goto_1d

    .line 77
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_37
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_3d
        0x7 -> :sswitch_40
        0x8 -> :sswitch_37
        0x9 -> :sswitch_43
        0xa -> :sswitch_40
        0xb -> :sswitch_37
        0xf -> :sswitch_37
        0x11 -> :sswitch_46
        0x12 -> :sswitch_49
        0x13 -> :sswitch_4c
        0x14 -> :sswitch_4f
        0x15 -> :sswitch_4c
        0x16 -> :sswitch_4c
        0x17 -> :sswitch_4c
        0x21 -> :sswitch_52
        0x22 -> :sswitch_55
        0x23 -> :sswitch_4c
        0x24 -> :sswitch_4c
        0x25 -> :sswitch_4c
        0x26 -> :sswitch_58
        0x27 -> :sswitch_3d
        0x28 -> :sswitch_4c
        0xf0 -> :sswitch_5b
    .end sparse-switch
.end method

.method private getSW([B)S
    .registers 5
    .param p1, "apdu"    # [B

    .prologue
    .line 296
    array-length v0, p1

    .line 298
    .local v0, "length":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/16 v1, 0x6700

    .line 299
    :goto_6
    return v1

    :cond_7
    add-int/lit8 v1, v0, -0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_6
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method

.method private static native setDhParams(I[B[B)I
.end method


# virtual methods
.method public createSecureChannel(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "protocol"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 162
    iget-object v3, p0, _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v3, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 163
    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "Not supported protocol"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v3, 0x8

    invoke-direct {p0, v7, v3}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    .line 200
    :goto_1a
    return-object v3

    .line 168
    :cond_1b
    const/16 v3, 0x66

    if-ne p2, v3, :cond_36

    .line 169
    sget-object v3, Lcom/samsung/ucm/ucmservice/scp/ErcomCustom;->GENERATOR:[B

    sget-object v4, Lcom/samsung/ucm/ucmservice/scp/ErcomCustom;->MODULUS:[B

    invoke-static {p1, v3, v4}, setDhParams(I[B[B)I

    move-result v3

    if-eqz v3, :cond_36

    .line 171
    const-string v3, "UCM.SCP.TADriver"

    const-string/jumbo v4, "failed to set dh parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, v7, v5}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    goto :goto_1a

    .line 178
    :cond_36
    new-array v0, v5, [B

    fill-array-data v0, :array_86

    .line 182
    .local v0, "in":[B
    invoke-static {p1, p2, v0}, constructSecureChannel(II[B)[B

    move-result-object v1

    .line 183
    .local v1, "resp":[B
    if-eqz v1, :cond_44

    array-length v3, v1

    if-gtz v3, :cond_52

    .line 184
    :cond_44
    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "Invalid msg returned from SCPConstructSecureChannel(in)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/16 v3, 0xb

    invoke-direct {p0, v7, v3}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    goto :goto_1a

    .line 189
    :cond_52
    aget-byte v2, v1, v8

    .line 190
    .local v2, "tzRet":I
    packed-switch v2, :pswitch_data_8c

    .line 196
    const-string v3, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown TZ response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, v7, v2}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    goto :goto_1a

    .line 192
    :pswitch_75
    new-instance v3, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v8}, getSDKErrorCode(I)I

    move-result v4

    const/16 v5, 0x190

    array-length v6, v1

    invoke-static {v1, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v3, v8, v4, v5, v6}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto :goto_1a

    .line 178
    :array_86
    .array-data 1
        0x1t
        0x2t
    .end array-data

    .line 190
    nop

    :pswitch_data_8c
    .packed-switch 0x5
        :pswitch_75
    .end packed-switch
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1, p2}, deleteCACert(ILjava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "ret":I
    if-nez v0, :cond_8

    .line 156
    const/4 v1, 0x1

    .line 158
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public destroySecureChannel(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 204
    invoke-static {p1}, destorySecureChannel(I)I

    move-result v0

    return v0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # [B
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "modified_cert":[B
    :try_start_2
    iget-object v4, p0, certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {v4, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_10

    move-result-object v1

    .line 146
    invoke-static {p3, p1, v1}, installCACert(ILjava/lang/String;[B)I

    move-result v2

    .line 147
    .local v2, "ret":I
    if-nez v2, :cond_f

    .line 148
    const/4 v3, 0x1

    .line 150
    .end local v2    # "ret":I
    :cond_f
    :goto_f
    return v3

    .line 143
    :catch_10
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_f
.end method

.method public processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .registers 15
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # [B

    .prologue
    .line 208
    packed-switch p2, :pswitch_data_160

    .line 288
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    :goto_9
    return-object v5

    .line 211
    :pswitch_a
    const/4 v5, 0x1

    invoke-static {p1, p3, v5}, encodeAPDU(I[BZ)[B

    move-result-object v0

    .line 212
    .local v0, "encrypted_apdu":[B
    if-nez v0, :cond_21

    .line 213
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to encode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v5, 0x12d

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto :goto_9

    .line 218
    :cond_21
    const/4 v5, 0x0

    aget-byte v4, v0, v5

    .line 219
    .local v4, "tzRet":I
    if-eqz v4, :cond_49

    .line 220
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to encode APDU 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v5, 0x12d

    invoke-direct {p0, v5, v4}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto :goto_9

    .line 224
    :cond_49
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x191

    const/4 v9, 0x1

    array-length v10, v0

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto :goto_9

    .line 231
    .end local v0    # "encrypted_apdu":[B
    .end local v4    # "tzRet":I
    :pswitch_5d
    invoke-direct {p0, p3}, getSW([B)S

    move-result v3

    .line 232
    .local v3, "sw":S
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SW of response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v5, -0x7000

    if-eq v3, v5, :cond_a5

    .line 235
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_9

    .line 240
    :cond_a5
    const/4 v5, 0x0

    invoke-static {p1, p3, v5}, encodeAPDU(I[BZ)[B

    move-result-object v1

    .line 241
    .local v1, "plain_apdu":[B
    if-nez v1, :cond_bd

    .line 242
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to decode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v5, 0x12d

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_9

    .line 246
    :cond_bd
    const/4 v5, 0x0

    aget-byte v4, v1, v5

    .line 247
    .restart local v4    # "tzRet":I
    if-eqz v4, :cond_e6

    .line 248
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode APDU 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v5, 0x12d

    invoke-direct {p0, v5, v4}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_9

    .line 252
    :cond_e6
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x191

    const/4 v9, 0x1

    array-length v10, v1

    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto/16 :goto_9

    .line 259
    .end local v1    # "plain_apdu":[B
    .end local v3    # "sw":S
    .end local v4    # "tzRet":I
    :pswitch_fb
    invoke-direct {p0, p1, p3}, forwardApdu(I[B)[B

    move-result-object v2

    .line 261
    .local v2, "resp":[B
    if-eqz v2, :cond_104

    array-length v5, v2

    if-gtz v5, :cond_114

    .line 262
    :cond_104
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Invalid msg returned from SCPForwardApduMessage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_9

    .line 267
    :cond_114
    const/4 v5, 0x0

    aget-byte v4, v2, v5

    .line 268
    .restart local v4    # "tzRet":I
    packed-switch v4, :pswitch_data_16a

    .line 280
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown TZ response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_9

    .line 270
    :pswitch_13a
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/16 v6, 0x12c

    const/4 v7, 0x0

    invoke-direct {p0, v7}, getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x191

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto/16 :goto_9

    .line 276
    :pswitch_14b
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x190

    const/4 v9, 0x1

    array-length v10, v2

    invoke-static {v2, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto/16 :goto_9

    .line 208
    :pswitch_data_160
    .packed-switch 0xc8
        :pswitch_a
        :pswitch_5d
        :pswitch_fb
    .end packed-switch

    .line 268
    :pswitch_data_16a
    .packed-switch 0x5
        :pswitch_14b
        :pswitch_13a
    .end packed-switch
.end method
