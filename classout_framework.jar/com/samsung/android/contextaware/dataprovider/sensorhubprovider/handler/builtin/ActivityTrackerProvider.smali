.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 57
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .registers 8
    .param p1, "bytes"    # [B

    .prologue
    const/16 v4, 0x8

    .line 290
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 291
    .local v0, "byte_buf":Ljava/nio/ByteBuffer;
    new-array v1, v4, [B

    .line 292
    .local v1, "change":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v4, :cond_11

    .line 293
    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 295
    :cond_11
    const/4 v2, 0x0

    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_22

    .line 296
    rsub-int/lit8 v3, v2, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 298
    :cond_22
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    return-wide v4
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->disable()V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 181
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 167
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->enable()V

    .line 168
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 169
    return-void
.end method

.method protected getAccuracyType()B
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()I
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 91
    const/16 v7, 0xb

    new-array v4, v7, [B

    .line 93
    .local v4, "packet":[B
    invoke-virtual {p0}, getModeType()B

    move-result v7

    aput-byte v7, v4, v9

    .line 95
    invoke-virtual {p0}, getActivityType()I

    move-result v7

    if-gez v7, :cond_17

    .line 96
    const/4 v4, 0x0

    .line 123
    .end local v4    # "packet":[B
    :goto_16
    return-object v4

    .line 99
    .restart local v4    # "packet":[B
    :cond_17
    invoke-virtual {p0}, getActivityType()I

    move-result v7

    invoke-static {v7, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 102
    .local v0, "activityType":[B
    aget-byte v7, v0, v9

    aput-byte v7, v4, v10

    .line 103
    aget-byte v7, v0, v10

    aput-byte v7, v4, v11

    .line 104
    aget-byte v7, v0, v11

    aput-byte v7, v4, v8

    .line 105
    aget-byte v7, v0, v8

    aput-byte v7, v4, v12

    .line 107
    const/4 v7, 0x5

    invoke-virtual {p0}, getAccuracyType()B

    move-result v8

    aput-byte v8, v4, v7

    .line 109
    invoke-virtual {p0}, getBatchingPeriod()I

    move-result v7

    invoke-static {v7, v11}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 111
    .local v1, "arBatchingPeriod":[B
    const/4 v7, 0x6

    aget-byte v8, v1, v9

    aput-byte v8, v4, v7

    .line 112
    const/4 v7, 0x7

    aget-byte v8, v1, v10

    aput-byte v8, v4, v7

    .line 114
    new-instance v7, Ljava/util/SimpleTimeZone;

    const-string v8, "GMT"

    invoke-direct {v7, v9, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 116
    .local v6, "temp":Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 117
    .local v2, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 118
    .local v3, "minute":I
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 119
    .local v5, "second":I
    const/16 v7, 0x8

    int-to-byte v8, v2

    aput-byte v8, v4, v7

    .line 120
    const/16 v7, 0x9

    int-to-byte v8, v3

    aput-byte v8, v4, v7

    .line 121
    const/16 v7, 0xa

    int-to-byte v8, v5

    aput-byte v8, v4, v7

    goto :goto_16
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 136
    .local v2, "packet":[B
    invoke-virtual {p0}, getModeType()B

    move-result v3

    aput-byte v3, v2, v5

    .line 138
    invoke-virtual {p0}, getActivityType()I

    move-result v3

    if-gez v3, :cond_17

    .line 139
    const/4 v2, 0x0

    .line 156
    .end local v2    # "packet":[B
    :goto_16
    return-object v2

    .line 142
    .restart local v2    # "packet":[B
    :cond_17
    invoke-virtual {p0}, getActivityType()I

    move-result v3

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 144
    .local v0, "activityType":[B
    aget-byte v3, v0, v5

    aput-byte v3, v2, v6

    .line 145
    aget-byte v3, v0, v6

    aput-byte v3, v2, v7

    .line 146
    aget-byte v3, v0, v7

    aput-byte v3, v2, v4

    .line 147
    aget-byte v3, v0, v4

    aput-byte v3, v2, v8

    .line 149
    const/4 v3, 0x5

    invoke-virtual {p0}, getAccuracyType()B

    move-result v4

    aput-byte v4, v2, v3

    .line 151
    invoke-virtual {p0}, getBatchingPeriod()I

    move-result v3

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 153
    .local v1, "arBatchingPeriod":[B
    const/4 v3, 0x6

    aget-byte v4, v1, v5

    aput-byte v4, v2, v3

    .line 154
    const/4 v3, 0x7

    aget-byte v4, v1, v6

    aput-byte v4, v2, v3

    goto :goto_16
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 68
    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method public parse([BI)I
    .registers 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 218
    move v4, p2

    .line 220
    .local v4, "tmpNext":I
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x4

    if-gez v6, :cond_14

    .line 221
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 222
    const/4 v6, -0x1

    .line 244
    :goto_13
    return v6

    .line 225
    :cond_14
    invoke-virtual {p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {p0}, getModeType()B

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 229
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 230
    .local v1, "timeTemp":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v6, p1, v4

    aput-byte v6, v1, v9

    .line 231
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v6, p1, v5

    aput-byte v6, v1, v10

    .line 232
    const/4 v6, 0x2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v7, p1, v4

    aput-byte v7, v1, v6

    .line 233
    const/4 v6, 0x3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v7, p1, v5

    aput-byte v7, v1, v6

    .line 234
    invoke-virtual {p0, v1}, byteArrayToLong([B)J

    move-result-wide v2

    .line 235
    .local v2, "time_tempdata":J
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v10

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 238
    invoke-virtual {p0, p1, v4}, parseData([BI)I

    move-result v4

    .line 240
    if-lez v4, :cond_61

    .line 241
    invoke-virtual {p0}, notifyObserver()V

    :cond_61
    move v6, v4

    .line 244
    goto :goto_13
.end method

.method protected parseData([BI)I
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 257
    move v3, p2

    .line 259
    .local v3, "tmpNext":I
    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_12

    .line 260
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 261
    const/4 v5, -0x1

    .line 272
    :goto_11
    return v5

    .line 264
    :cond_12
    invoke-virtual {p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "names":[Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v1, p1, v3

    .line 267
    .local v1, "activityType":I
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 269
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v0, p1, v4

    .line 270
    .local v0, "accuracy":I
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v5, v3

    .line 272
    goto :goto_11
.end method
