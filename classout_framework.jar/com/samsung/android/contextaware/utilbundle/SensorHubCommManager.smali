.class public Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generatePacket([B[B)[B
    .registers 12
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .prologue
    .line 183
    array-length v1, p2

    .line 184
    .local v1, "headerLength":I
    const/4 v8, 0x2

    if-lt v1, v8, :cond_7

    const/4 v8, 0x4

    if-le v1, v8, :cond_9

    .line 185
    :cond_7
    const/4 v7, 0x0

    .line 198
    :cond_8
    return-object v7

    .line 188
    :cond_9
    const/4 v4, 0x0

    .line 189
    .local v4, "index":I
    array-length v8, p1

    add-int/2addr v8, v1

    new-array v7, v8, [B

    .line 191
    .local v7, "packet":[B
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_12
    if-ge v3, v6, :cond_1e

    aget-byte v2, v0, v3

    .line 192
    .local v2, "i":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v2, v7, v5

    .line 191
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_12

    .line 194
    .end local v2    # "i":B
    :cond_1e
    move-object v0, p1

    array-length v6, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v6, :cond_8

    aget-byte v2, v0, v3

    .line 195
    .restart local v2    # "i":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v2, v7, v5

    .line 194
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_21
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    .registers 2

    .prologue
    .line 44
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_13

    .line 45
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v1

    .line 46
    :try_start_7
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    .line 49
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 51
    :cond_13
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    return-object v0

    .line 49
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Lcom/samsung/android/sensorhub/SensorHubManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/samsung/android/sensorhub/SensorHubManager;

    .prologue
    .line 208
    iput-object p1, p0, mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    .line 209
    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    if-nez p1, :cond_8

    .line 64
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 76
    :cond_7
    :goto_7
    return-void

    .line 68
    :cond_8
    const-string/jumbo v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sensorhub/SensorHubManager;

    invoke-direct {p0, v0}, setSensorHubManager(Lcom/samsung/android/sensorhub/SensorHubManager;)V

    .line 71
    invoke-direct {p0}, getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 72
    const-string/jumbo v0, "mSensorHubManager is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public final varargs sendCmdToSensorHub([B[B)I
    .registers 8
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .prologue
    .line 148
    array-length v0, p2

    .line 149
    .local v0, "headerLength":I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    const/4 v4, 0x4

    if-le v0, v4, :cond_e

    .line 150
    :cond_7
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    .line 170
    :cond_d
    :goto_d
    return v2

    .line 153
    :cond_e
    invoke-direct {p0, p1, p2}, generatePacket([B[B)[B

    move-result-object v1

    .line 154
    .local v1, "packet":[B
    if-eqz v1, :cond_17

    array-length v4, v1

    if-gtz v4, :cond_1e

    .line 155
    :cond_17
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_GENERATION_FAIL:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    goto :goto_d

    .line 158
    :cond_1e
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 160
    :cond_2a
    const-string v4, "Packet is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 165
    :goto_2f
    array-length v4, v1

    invoke-virtual {p0, v4, v1}, sendPacketToSensorHub(I[B)I

    move-result v2

    .line 166
    .local v2, "result":I
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v2, v4, :cond_d

    .line 167
    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 162
    .end local v2    # "result":I
    :cond_44
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public final sendPacketToSensorHub(I[B)I
    .registers 8
    .param p1, "len"    # I
    .param p2, "packet"    # [B

    .prologue
    .line 99
    invoke-direct {p0}, getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v2

    if-nez v2, :cond_d

    .line 100
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    .line 135
    :cond_c
    :goto_c
    return v0

    .line 104
    :cond_d
    invoke-direct {p0}, getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v2

    invoke-direct {p0}, getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/samsung/android/sensorhub/SensorHubManager;->SendSensorHubData(Lcom/samsung/android/sensorhub/SensorHub;I[B)I

    move-result v0

    .line 107
    .local v0, "result":I
    if-lez v0, :cond_4d

    .line 108
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    .line 121
    :goto_26
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v0, v2, :cond_c

    .line 122
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 124
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 126
    :cond_41
    const-string v2, "Packet is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 131
    :goto_46
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_c

    .line 109
    .end local v1    # "str":Ljava/lang/String;
    :cond_4d
    const/4 v2, -0x5

    if-ne v0, v2, :cond_57

    .line 110
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_I2C_COMM:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_26

    .line 111
    :cond_57
    const/16 v2, -0xb

    if-ne v0, v2, :cond_62

    .line 112
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_RECEIVE_ACK:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_26

    .line 114
    :cond_62
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_26

    .line 128
    .restart local v1    # "str":Ljava/lang/String;
    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deliver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_46
.end method

.method public final terminateManager()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setSensorHubManager(Lcom/samsung/android/sensorhub/SensorHubManager;)V

    .line 87
    return-void
.end method

.method public final varargs testGeneratePacket([B[B)[B
    .registers 4
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B
    .annotation runtime Landroid/test/FlakyTest;
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, generatePacket([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final testGetSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;
    .registers 2
    .annotation runtime Landroid/test/FlakyTest;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-object v0
.end method
