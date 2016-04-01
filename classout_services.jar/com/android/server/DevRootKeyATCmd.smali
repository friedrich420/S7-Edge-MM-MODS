.class public Lcom/android/server/DevRootKeyATCmd;
.super Ljava/lang/Object;
.source "DevRootKeyATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_DEVROOTK:Ljava/lang/String; = "DEVROOTK"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_RESPNOSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAIL(FAILED CONNECTION)"

.field private static final AT_RESPONSE_INSTANCE_ERROR:Ljava/lang/String; = "NG_FAIL(INSTANCE ERROR)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field private static final AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_RESPONSE_PMK_OK:Ljava/lang/String; = "OK(NOT SUPPORT PMK IN M OS)"

.field private static final TAG:Ljava/lang/String; = "DevRootKeyATCmd"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final AT_COMMAND_DEVROOTK_WRITING_END:Ljava/lang/String;

.field private final AT_COMMAND_WRITING_COUNTER_MAX:I

.field private mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private mTlvDevRootKey:Ljava/lang/String;

.field private mWritingCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "FF"

    iput-object v0, p0, AT_COMMAND_DEVROOTK_WRITING_END:Ljava/lang/String;

    .line 25
    const/16 v0, 0xa

    iput v0, p0, AT_COMMAND_WRITING_COUNTER_MAX:I

    .line 36
    sput-object p1, mContext:Landroid/content/Context;

    .line 37
    const-string v0, ""

    iput-object v0, p0, mTlvDevRootKey:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, mWritingCounter:I

    .line 39
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 40
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 176
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v2

    .line 185
    .end local v1    # "params":Ljava/lang/String;
    :goto_10
    return-object v2

    .line 179
    :catch_11
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 45
    .local v0, "response":Ljava/lang/String;
    const-string v0, "DEVROOTK"

    .line 46
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 51
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 52
    .local v4, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "params":[Ljava/lang/String;
    const/4 v8, 0x6

    new-array v7, v8, [Ljava/lang/String;

    const-string v8, "0,0,0"

    aput-object v8, v7, v9

    const-string v8, "1,0,0"

    aput-object v8, v7, v11

    const-string v8, "2,0,"

    aput-object v8, v7, v10

    const-string v8, "0,1,0"

    aput-object v8, v7, v12

    const-string v8, "1,1,0"

    aput-object v8, v7, v13

    const/4 v8, 0x5

    const-string v9, "2,1,"

    aput-object v9, v7, v8

    .line 63
    .local v7, "supportedParams":[Ljava/lang/String;
    if-nez v3, :cond_2f

    .line 64
    const-string v8, "NG_FAIL(INVALID_PARAM)"

    .line 168
    :goto_2e
    return-object v8

    .line 66
    :cond_2f
    iget-object v8, p0, mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v8, :cond_36

    .line 67
    const-string v8, "NG_FAIL(INSTANCE ERROR)"

    goto :goto_2e

    .line 69
    :cond_36
    iget-object v8, p0, mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v8}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v8

    if-nez v8, :cond_41

    .line 70
    const-string v8, "NG_FAIL(FAILED CONNECTION)"

    goto :goto_2e

    .line 73
    :cond_41
    :try_start_41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 78
    iget-object v8, p0, mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_88
    move-object v8, v4

    .line 168
    goto :goto_2e

    .line 82
    :cond_8a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_88

    .line 85
    :cond_9e
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 87
    iget-object v8, p0, mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "Uid":Ljava/lang/String;
    if-eqz v0, :cond_ce

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_88

    .line 93
    :cond_ce
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_88

    .line 96
    .end local v0    # "Uid":Ljava/lang/String;
    :cond_e2
    const/4 v8, 0x2

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_230

    .line 98
    const/4 v8, 0x2

    aget-object v8, v3, v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "strSequenceNo":Ljava/lang/String;
    const-string v8, "FF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17e

    .line 103
    iget v8, p0, mWritingCounter:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_169

    .line 105
    iget-object v8, p0, mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v9, p0, mTlvDevRootKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->setDeviceRootKey([B)I

    move-result v5

    .line 108
    .local v5, "ret":I
    if-nez v5, :cond_151

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    :goto_12f
    const-string v8, ""

    iput-object v8, p0, mTlvDevRootKey:Ljava/lang/String;

    .line 115
    const/4 v8, 0x0

    iput v8, p0, mWritingCounter:I
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_136} :catch_138

    goto/16 :goto_88

    .line 162
    .end local v5    # "ret":I
    .end local v6    # "strSequenceNo":Ljava/lang/String;
    :catch_138
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "ret":I
    .restart local v6    # "strSequenceNo":Ljava/lang/String;
    :cond_151
    :try_start_151
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12f

    .line 118
    .end local v5    # "ret":I
    :cond_169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL(DATA MISSED)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 121
    :cond_17e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "intSequenceNo":I
    if-ne v2, v11, :cond_1ba

    .line 126
    iput v2, p0, mWritingCounter:I

    .line 127
    const/4 v8, 0x2

    aget-object v8, v3, v8

    const/4 v9, 0x2

    aget-object v9, v3, v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, mTlvDevRootKey:Ljava/lang/String;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 133
    :cond_1ba
    iget v8, p0, mWritingCounter:I

    add-int/lit8 v8, v8, 0x1

    if-ne v2, v8, :cond_209

    .line 135
    iput v2, p0, mWritingCounter:I

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, mTlvDevRootKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v3, v9

    const/4 v10, 0x2

    aget-object v10, v3, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x2

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, mTlvDevRootKey:Ljava/lang/String;

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 140
    :cond_209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL(DATA MISSED) SN-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TB-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mWritingCounter:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 145
    .end local v2    # "intSequenceNo":I
    .end local v6    # "strSequenceNo":Ljava/lang/String;
    :cond_230
    const/4 v8, 0x3

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25a

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 150
    :cond_25a
    const/4 v8, 0x4

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_284

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 155
    :cond_284
    const/4 v8, 0x5

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ae

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_88

    .line 160
    :cond_2ae
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_2c0} :catch_138

    move-result-object v4

    goto/16 :goto_88
.end method
