.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_BATCH:B = 0x0t

.field private static final DATA_TYPE_GPS_STATUS:B = 0x1t


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastGpsEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorType:I

.field private mTotalPedoDistance:D

.field private mTotalStepCount:J

.field private startTimeStamp:J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 11
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 52
    iput-wide v4, p0, mTotalStepCount:J

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTotalPedoDistance:D

    .line 55
    iput-wide v4, p0, startTimeStamp:J

    .line 80
    iput-object v3, p0, mContext:Landroid/content/Context;

    .line 81
    iput v2, p0, mSensorType:I

    .line 82
    iput-boolean v2, p0, mLastGpsEnabled:Z

    .line 533
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 47
    invoke-direct {p0}, isGpsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 47
    iget-boolean v0, p0, mLastGpsEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, mLastGpsEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z
    .registers 6
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # B
    .param p4, "x4"    # [B

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method

.method private isGpsEnabled()Z
    .registers 4

    .prologue
    .line 557
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 558
    .local v0, "manager":Landroid/location/LocationManager;
    if-eqz v0, :cond_13

    .line 559
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 561
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .prologue
    .line 499
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTotalStepCount:J

    .line 502
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTotalPedoDistance:D

    .line 504
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 505
    return-void
.end method

.method public final disable()V
    .registers 3

    .prologue
    .line 485
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 487
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 490
    return-void
.end method

.method public final enable()V
    .registers 5

    .prologue
    .line 466
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 468
    invoke-direct {p0}, isGpsEnabled()Z

    move-result v0

    iput-boolean v0, p0, mLastGpsEnabled:Z

    .line 469
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, startTimeStamp:J

    .line 473
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 474
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LatitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LongitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AltitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PressureArray"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StepCountDiffArray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PedoDistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PedoSpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GpsStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TotalPedoDistance"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 3

    .prologue
    .line 132
    iget v0, p0, mSensorType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 528
    invoke-virtual {p0}, checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 529
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 120
    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 442
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 454
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .registers 1

    .prologue
    .line 515
    return-object p0
.end method

.method public final parse([BI)I
    .registers 41
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 213
    move/from16 v29, p2

    .line 215
    .local v29, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v22

    .line 218
    .local v22, "names":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_1d

    .line 219
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 220
    const/16 v31, -0x1

    .line 431
    :goto_1c
    return v31

    .line 223
    :cond_1d
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .local v30, "tmpNext":I
    aget-byte v12, p1, v29

    .line 225
    .local v12, "dataType":I
    if-nez v12, :cond_4a9

    .line 228
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v30

    add-int/lit8 v31, v31, -0x6

    if-gez v31, :cond_3e

    .line 229
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 230
    const/16 v29, -0x1

    move/from16 v31, v29

    move/from16 v29, v30

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto :goto_1c

    .line 234
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_3e
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x4

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    const/16 v32, 0x5

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v33, p1, v29

    aput-byte v33, v31, v32

    const/16 v32, 0x6

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    const/16 v32, 0x7

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v33, p1, v29

    aput-byte v33, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 246
    .local v6, "baseTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, startTimeStamp:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    add-long v32, v32, v34

    add-long v6, v6, v32

    .line 249
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v33, p1, v29

    aput-byte v33, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 256
    .local v11, "dataSize":I
    if-gtz v11, :cond_d1

    .line 257
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 259
    const/16 v29, -0x1

    move/from16 v31, v29

    move/from16 v29, v30

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto/16 :goto_1c

    .line 263
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_d1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v30

    mul-int/lit8 v32, v11, 0x15

    sub-int v31, v31, v32

    if-gez v31, :cond_ef

    .line 264
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 265
    const/16 v29, -0x1

    move/from16 v31, v29

    move/from16 v29, v30

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto/16 :goto_1c

    .line 270
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_ef
    new-array v0, v11, [J

    move-object/from16 v28, v0

    .line 271
    .local v28, "timeStamp":[J
    new-array v15, v11, [D

    .line 272
    .local v15, "latitude":[D
    new-array v0, v11, [D

    move-object/from16 v20, v0

    .line 273
    .local v20, "longitude":[D
    new-array v4, v11, [F

    .line 274
    .local v4, "altitude":[F
    new-array v0, v11, [F

    move-object/from16 v25, v0

    .line 275
    .local v25, "pressure":[F
    new-array v0, v11, [J

    move-object/from16 v27, v0

    .line 276
    .local v27, "stepCountDiff":[J
    new-array v0, v11, [D

    move-object/from16 v23, v0

    .line 277
    .local v23, "pedoDistanceDiff":[D
    new-array v0, v11, [D

    move-object/from16 v24, v0

    .line 278
    .local v24, "pedoSpeed":[D
    new-array v0, v11, [F

    move-object/from16 v26, v0

    .line 280
    .local v26, "speed":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_110
    if-ge v14, v11, :cond_3d4

    .line 283
    mul-int/lit16 v0, v14, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v32, v32, v6

    aput-wide v32, v28, v14

    .line 286
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v5, p1, v30

    .line 287
    .local v5, "byte1":B
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v8, p1, v29

    .line 288
    .local v8, "byte2":B
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v9, p1, v30

    .line 289
    .local v9, "byte3":B
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v10, p1, v29

    .line 291
    .local v10, "byte4":B
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v21, p1, v30

    .line 293
    .local v21, "midByte":B
    and-int/lit16 v0, v5, 0x80

    move/from16 v31, v0

    const/16 v32, 0x80

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_359

    .line 294
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, -0x1

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, -0x1

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, -0x1

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    aput-byte v5, v31, v32

    const/16 v32, 0x4

    aput-byte v8, v31, v32

    const/16 v32, 0x5

    aput-byte v9, v31, v32

    const/16 v32, 0x6

    aput-byte v10, v31, v32

    const/16 v32, 0x7

    aput-byte v21, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v32

    const/16 v31, 0x4

    shr-long v16, v32, v31

    .line 317
    .local v16, "lat":J
    :goto_179
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v32, v32, v34

    aput-wide v32, v15, v14

    .line 320
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v5, p1, v29

    .line 321
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v8, p1, v30

    .line 322
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v9, p1, v29

    .line 323
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v10, p1, v30

    .line 325
    and-int/lit8 v31, v21, 0x8

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_395

    .line 326
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, -0x1

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, -0x1

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, -0x1

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    and-int/lit8 v33, v21, 0xf

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0xf0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v31, v32

    const/16 v32, 0x4

    aput-byte v5, v31, v32

    const/16 v32, 0x5

    aput-byte v8, v31, v32

    const/16 v32, 0x6

    aput-byte v9, v31, v32

    const/16 v32, 0x7

    aput-byte v10, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v18

    .line 349
    .local v18, "lon":J
    :goto_1e4
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v32, v32, v34

    aput-wide v32, v20, v14

    .line 352
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v33, p1, v29

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v33, p1, v29

    aput-byte v33, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v4, v14

    .line 360
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v33, p1, v29

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x408f400000000000L    # 1000.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v25, v14

    .line 368
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalStepCount:J

    move-wide/from16 v32, v0

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v31, p1, v29

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, mTotalStepCount:J

    .line 369
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalStepCount:J

    move-wide/from16 v32, v0

    aput-wide v32, v27, v14

    .line 372
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalPedoDistance:D

    move-wide/from16 v32, v0

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v31, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v31, v34

    const/16 v34, 0x2

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v35, p1, v30

    aput-byte v35, v31, v34

    const/16 v34, 0x3

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v35, p1, v29

    aput-byte v35, v31, v34

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, mTotalPedoDistance:D

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalPedoDistance:D

    move-wide/from16 v32, v0

    aput-wide v32, v23, v14

    .line 381
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v5, p1, v30

    .line 382
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v21, p1, v29

    .line 383
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    aput-byte v5, v31, v32

    const/16 v32, 0x3

    aput-byte v21, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    shr-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    aput-wide v32, v24, v14

    .line 391
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    and-int/lit8 v33, v21, 0xf

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v33, p1, v30

    aput-byte v33, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v26, v14

    .line 280
    add-int/lit8 v14, v14, 0x1

    move/from16 v30, v29

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    goto/16 :goto_110

    .line 305
    .end local v16    # "lat":J
    .end local v18    # "lon":J
    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    :cond_359
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    aput-byte v5, v31, v32

    const/16 v32, 0x4

    aput-byte v8, v31, v32

    const/16 v32, 0x5

    aput-byte v9, v31, v32

    const/16 v32, 0x6

    aput-byte v10, v31, v32

    const/16 v32, 0x7

    aput-byte v21, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v32

    const/16 v31, 0x4

    shr-long v16, v32, v31

    .restart local v16    # "lat":J
    goto/16 :goto_179

    .line 338
    :cond_395
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x1

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x0

    aput-byte v33, v31, v32

    const/16 v32, 0x3

    and-int/lit8 v33, v21, 0xf

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v31, v32

    const/16 v32, 0x4

    aput-byte v5, v31, v32

    const/16 v32, 0x5

    aput-byte v8, v31, v32

    const/16 v32, 0x6

    aput-byte v9, v31, v32

    const/16 v32, 0x7

    aput-byte v10, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v18

    .restart local v18    # "lon":J
    goto/16 :goto_1e4

    .line 399
    .end local v5    # "byte1":B
    .end local v8    # "byte2":B
    .end local v9    # "byte3":B
    .end local v10    # "byte4":B
    .end local v16    # "lat":J
    .end local v18    # "lon":J
    .end local v21    # "midByte":B
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_3d4
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 400
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 401
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 402
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 403
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 404
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 405
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 406
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 407
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 408
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 410
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v29, v30

    .end local v4    # "altitude":[F
    .end local v6    # "baseTimeStamp":J
    .end local v11    # "dataSize":I
    .end local v14    # "i":I
    .end local v15    # "latitude":[D
    .end local v20    # "longitude":[D
    .end local v23    # "pedoDistanceDiff":[D
    .end local v24    # "pedoSpeed":[D
    .end local v25    # "pressure":[F
    .end local v26    # "speed":[F
    .end local v27    # "stepCountDiff":[J
    .end local v28    # "timeStamp":[J
    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    :goto_4a5
    move/from16 v31, v29

    .line 431
    goto/16 :goto_1c

    .line 412
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_4a9
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v12, v0, :cond_4e5

    .line 415
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v30

    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_4cb

    .line 416
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 417
    const/16 v29, -0x1

    move/from16 v31, v29

    move/from16 v29, v30

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto/16 :goto_1c

    .line 420
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_4cb
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v13, p1, v30

    .line 422
    .local v13, "gpsStatus":B
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    int-to-short v0, v13

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 424
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    goto :goto_4a5

    .line 426
    .end local v13    # "gpsStatus":B
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :cond_4e5
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 428
    const/16 v29, -0x1

    move/from16 v31, v29

    move/from16 v29, v30

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto/16 :goto_1c
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 13
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 170
    const/4 v2, 0x1

    .line 171
    .local v2, "result":Z
    const/16 v3, 0x3f

    if-ne p1, v3, :cond_4a

    .line 172
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, "dataType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exercise data type = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 175
    iget v3, p0, mSensorType:I

    or-int/2addr v3, v0

    iput v3, p0, mSensorType:I

    .line 186
    const/16 v6, 0x17

    const/16 v7, 0x2e

    const/16 v8, 0x25

    new-array v9, v4, [B

    invoke-direct {p0}, isGpsEnabled()Z

    move-result v3

    if-ne v3, v4, :cond_48

    move v3, v4

    :goto_41
    int-to-byte v3, v3

    aput-byte v3, v9, v5

    invoke-virtual {p0, v6, v7, v8, v9}, sendPropertyValueToSensorHub(BBB[B)Z

    .line 201
    .end local v0    # "dataType":I
    :goto_47
    return v2

    .restart local v0    # "dataType":I
    :cond_48
    move v3, v5

    .line 186
    goto :goto_41

    .line 191
    .end local v0    # "dataType":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4a
    if-nez p1, :cond_5d

    .line 192
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 193
    .local v1, "packet":[B
    aput-byte v4, v1, v5

    .line 194
    aput-byte v5, v1, v4

    .line 196
    const/16 v3, -0x48

    invoke-virtual {p0}, getInstLibType()B

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, sendCmdToSensorHub(BB[B)V

    goto :goto_47

    .line 199
    .end local v1    # "packet":[B
    :cond_5d
    const/4 v2, 0x0

    goto :goto_47
.end method
