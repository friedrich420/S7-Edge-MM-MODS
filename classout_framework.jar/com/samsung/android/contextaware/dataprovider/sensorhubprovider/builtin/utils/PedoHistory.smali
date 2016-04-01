.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
.super Ljava/lang/Object;
.source "PedoHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# static fields
.field public static final DATA_MODE_BATCH:I = 0x2

.field public static final DATA_MODE_NORMAL:I = 0x1

.field private static final LOG_BUFFER_SIZE:I = 0x5a0

.field private static volatile mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;


# instance fields
.field private mAccumulatedCalorie:D

.field private mAccumulatedDistance:D

.field private mAccumulatedRunDnStep:J

.field private mAccumulatedRunStep:J

.field private mAccumulatedRunUpStep:J

.field private mAccumulatedTotalStep:J

.field private mAccumulatedWalkDnStep:J

.field private mAccumulatedWalkStep:J

.field private mAccumulatedWalkUpStep:J

.field private mAverageSpeed:D

.field private final mCalorieArray:[D

.field private final mDistanceArray:[D

.field private mHistoryArrayIndex:I

.field private mHistoryArraySize:I

.field private mLastDataMode:I

.field private mLastSavingTimestamp:J

.field private mNumAccumulatedData:D

.field private final mRunDnStepCountArray:[J

.field private final mRunStepCountArray:[J

.field private final mRunUpStepCountArray:[J

.field private final mSpeedArray:[D

.field private final mTimeStampArray:[J

.field private final mTotalStepCountArray:[J

.field private final mWalkDnStepCountArray:[J

.field private final mWalkStepCountArray:[J

.field private final mWalkUpStepCountArray:[J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x5a0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [J

    iput-object v0, p0, mTimeStampArray:[J

    .line 31
    new-array v0, v1, [D

    iput-object v0, p0, mDistanceArray:[D

    .line 32
    new-array v0, v1, [D

    iput-object v0, p0, mCalorieArray:[D

    .line 33
    new-array v0, v1, [D

    iput-object v0, p0, mSpeedArray:[D

    .line 34
    new-array v0, v1, [J

    iput-object v0, p0, mWalkStepCountArray:[J

    .line 35
    new-array v0, v1, [J

    iput-object v0, p0, mRunStepCountArray:[J

    .line 36
    new-array v0, v1, [J

    iput-object v0, p0, mWalkUpStepCountArray:[J

    .line 37
    new-array v0, v1, [J

    iput-object v0, p0, mWalkDnStepCountArray:[J

    .line 38
    new-array v0, v1, [J

    iput-object v0, p0, mRunUpStepCountArray:[J

    .line 39
    new-array v0, v1, [J

    iput-object v0, p0, mRunDnStepCountArray:[J

    .line 40
    new-array v0, v1, [J

    iput-object v0, p0, mTotalStepCountArray:[J

    .line 75
    invoke-direct {p0}, initialize()V

    .line 76
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
    .registers 2

    .prologue
    .line 64
    sget-object v0, mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v0, :cond_13

    .line 65
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v0, :cond_12

    .line 67
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-direct {v0}, <init>()V

    sput-object v0, mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 69
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 71
    :cond_13
    sget-object v0, mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    return-object v0

    .line 69
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getLastSavingTimestamp()J
    .registers 3

    .prologue
    .line 98
    iget-wide v0, p0, mLastSavingTimestamp:J

    return-wide v0
.end method

.method private getLatestBufferIndex()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, mHistoryArrayIndex:I

    return v0
.end method

.method private increaseBufferIndex()V
    .registers 3

    .prologue
    const/16 v1, 0x5a0

    .line 340
    iget v0, p0, mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mHistoryArrayIndex:I

    .line 341
    iget v0, p0, mHistoryArrayIndex:I

    if-ne v0, v1, :cond_f

    .line 342
    const/4 v0, 0x0

    iput v0, p0, mHistoryArrayIndex:I

    .line 345
    :cond_f
    iget v0, p0, mHistoryArraySize:I

    if-ge v0, v1, :cond_19

    .line 346
    iget v0, p0, mHistoryArraySize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mHistoryArraySize:I

    .line 348
    :cond_19
    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 80
    const/4 v0, -0x1

    iput v0, p0, mHistoryArrayIndex:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, mHistoryArraySize:I

    .line 83
    invoke-direct {p0}, resetAccumulatedStepInfo()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastSavingTimestamp:J

    .line 86
    const/4 v0, 0x1

    iput v0, p0, mLastDataMode:I

    .line 87
    return-void
.end method

.method private resetAccumulatedStepInfo()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, mAccumulatedTotalStep:J

    .line 230
    iput-wide v0, p0, mAccumulatedWalkStep:J

    .line 231
    iput-wide v0, p0, mAccumulatedRunStep:J

    .line 232
    iput-wide v0, p0, mAccumulatedWalkUpStep:J

    .line 233
    iput-wide v0, p0, mAccumulatedRunUpStep:J

    .line 234
    iput-wide v0, p0, mAccumulatedWalkDnStep:J

    .line 235
    iput-wide v0, p0, mAccumulatedRunDnStep:J

    .line 236
    iput-wide v2, p0, mAccumulatedDistance:D

    .line 237
    iput-wide v2, p0, mAccumulatedCalorie:D

    .line 238
    iput-wide v2, p0, mAverageSpeed:D

    .line 239
    iput-wide v2, p0, mNumAccumulatedData:D

    .line 240
    return-void
.end method


# virtual methods
.method public erase()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, initialize()V

    .line 94
    const-string v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 402
    iget v0, p0, mHistoryArraySize:I

    return v0
.end method

.method public getCalorieArraySingle(I)D
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 580
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 581
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 582
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 583
    add-int/lit16 v0, v0, -0x5a0

    .line 589
    :cond_10
    :goto_10
    iget-object v1, p0, mCalorieArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 586
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getDistanceArraySingle(I)D
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 562
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 563
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 564
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 565
    add-int/lit16 v0, v0, -0x5a0

    .line 571
    :cond_10
    :goto_10
    iget-object v1, p0, mDistanceArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 568
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getLastCallBackMode()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, mLastDataMode:I

    return v0
.end method

.method public getMaxBufferSize()I
    .registers 2

    .prologue
    .line 391
    const/16 v0, 0x5a0

    return v0
.end method

.method public getRunDnStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 544
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 545
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 546
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 547
    add-int/lit16 v0, v0, -0x5a0

    .line 553
    :cond_10
    :goto_10
    iget-object v1, p0, mRunDnStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 550
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getRunStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 472
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 473
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 474
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 475
    add-int/lit16 v0, v0, -0x5a0

    .line 481
    :cond_10
    :goto_10
    iget-object v1, p0, mRunStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 478
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getRunUpStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 508
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 509
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 510
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 511
    add-int/lit16 v0, v0, -0x5a0

    .line 517
    :cond_10
    :goto_10
    iget-object v1, p0, mRunUpStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 514
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getSpeedArraySingle(I)D
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 598
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 599
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 600
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 601
    add-int/lit16 v0, v0, -0x5a0

    .line 607
    :cond_10
    :goto_10
    iget-object v1, p0, mSpeedArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 604
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getTimeStampSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 418
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 419
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 420
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 421
    add-int/lit16 v0, v0, -0x5a0

    .line 427
    :cond_10
    :goto_10
    iget-object v1, p0, mTimeStampArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 424
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getTotalStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 436
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 437
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 438
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 439
    add-int/lit16 v0, v0, -0x5a0

    .line 445
    :cond_10
    :goto_10
    iget-object v1, p0, mTotalStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 442
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getWalkDnStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 526
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 527
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 528
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 529
    add-int/lit16 v0, v0, -0x5a0

    .line 535
    :cond_10
    :goto_10
    iget-object v1, p0, mWalkDnStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 532
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getWalkStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 454
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 455
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 456
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 457
    add-int/lit16 v0, v0, -0x5a0

    .line 463
    :cond_10
    :goto_10
    iget-object v1, p0, mWalkStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 460
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public getWalkUpStepCountSingle(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 490
    iget v1, p0, mHistoryArraySize:I

    if-lt v1, v2, :cond_15

    .line 491
    iget v1, p0, mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 492
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_10

    .line 493
    add-int/lit16 v0, v0, -0x5a0

    .line 499
    :cond_10
    :goto_10
    iget-object v1, p0, mWalkUpStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 496
    .end local v0    # "modifiedIndex":I
    :cond_15
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_10
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 612
    invoke-virtual {p0}, erase()V

    .line 613
    return-void
.end method

.method public putCalorieInfo(D)V
    .registers 6
    .param p1, "calorie"    # D

    .prologue
    .line 329
    iget-object v0, p0, mCalorieArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 330
    return-void
.end method

.method public putCalorieInfoSingle(D)V
    .registers 8
    .param p1, "calorie"    # D

    .prologue
    .line 215
    iget-wide v0, p0, mAccumulatedCalorie:D

    add-double/2addr v0, p1

    iput-wide v0, p0, mAccumulatedCalorie:D

    .line 216
    iget-object v0, p0, mCalorieArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 217
    return-void
.end method

.method public putDistanceInfo(D)V
    .registers 6
    .param p1, "distance"    # D

    .prologue
    .line 322
    iget-object v0, p0, mDistanceArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 323
    return-void
.end method

.method public putDistanceInfoSingle(D)V
    .registers 8
    .param p1, "distance"    # D

    .prologue
    .line 207
    iget-wide v0, p0, mAccumulatedDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, mAccumulatedDistance:D

    .line 208
    iget-object v0, p0, mDistanceArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 209
    return-void
.end method

.method public putRunDnStepInfo(J)V
    .registers 6
    .param p1, "scRunDn"    # J

    .prologue
    .line 315
    iget-object v0, p0, mRunDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 316
    return-void
.end method

.method public putRunDnStepInfoSingle(J)V
    .registers 8
    .param p1, "scRunDn"    # J

    .prologue
    .line 199
    iget-wide v0, p0, mAccumulatedRunDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedRunDnStep:J

    .line 200
    iget-object v0, p0, mRunDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 201
    return-void
.end method

.method public putRunStepInfo(J)V
    .registers 6
    .param p1, "scRun"    # J

    .prologue
    .line 287
    iget-object v0, p0, mRunStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 288
    return-void
.end method

.method public putRunStepInfoSingle(J)V
    .registers 8
    .param p1, "scRun"    # J

    .prologue
    .line 167
    iget-wide v0, p0, mAccumulatedRunStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedRunStep:J

    .line 168
    iget-object v0, p0, mRunStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 169
    return-void
.end method

.method public putRunUpStepInfo(J)V
    .registers 6
    .param p1, "scRunUp"    # J

    .prologue
    .line 301
    iget-object v0, p0, mRunUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 302
    return-void
.end method

.method public putRunUpStepInfoSingle(J)V
    .registers 8
    .param p1, "scRunUp"    # J

    .prologue
    .line 183
    iget-wide v0, p0, mAccumulatedRunUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedRunUpStep:J

    .line 184
    iget-object v0, p0, mRunUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 185
    return-void
.end method

.method public putSpeedInfo(D)V
    .registers 6
    .param p1, "speed"    # D

    .prologue
    .line 336
    iget-object v0, p0, mSpeedArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 337
    return-void
.end method

.method public putSpeedInfoSingle(D)V
    .registers 10
    .param p1, "speed"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 223
    iget-wide v0, p0, mAverageSpeed:D

    iget-wide v2, p0, mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    iget-wide v2, p0, mNumAccumulatedData:D

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, mAverageSpeed:D

    .line 224
    iget-wide v0, p0, mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, mNumAccumulatedData:D

    .line 225
    iget-object v0, p0, mSpeedArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 226
    return-void
.end method

.method public putStepInfo(JJJJJJJDDD)V
    .registers 24
    .param p1, "scTotal"    # J
    .param p3, "scWalk"    # J
    .param p5, "scRun"    # J
    .param p7, "scWalkUp"    # J
    .param p9, "scRunUp"    # J
    .param p11, "scWalkDn"    # J
    .param p13, "scRunDn"    # J
    .param p15, "distance"    # D
    .param p17, "calorie"    # D
    .param p19, "speed"    # D

    .prologue
    .line 247
    iget-object v0, p0, mTotalStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 248
    iget-object v0, p0, mWalkStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p3, v0, v1

    .line 249
    iget-object v0, p0, mRunStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p5, v0, v1

    .line 250
    iget-object v0, p0, mWalkUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p7, v0, v1

    .line 251
    iget-object v0, p0, mRunUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p9, v0, v1

    .line 252
    iget-object v0, p0, mWalkDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p11, v0, v1

    .line 253
    iget-object v0, p0, mRunDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p13, v0, v1

    .line 255
    iget-object v0, p0, mDistanceArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p15, v0, v1

    .line 256
    iget-object v0, p0, mCalorieArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p17, v0, v1

    .line 257
    iget-object v0, p0, mSpeedArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p19, v0, v1

    .line 259
    const/4 v0, 0x2

    iput v0, p0, mLastDataMode:I

    .line 260
    return-void
.end method

.method public putStepInfoSingle(JJJJJJJDDD)V
    .registers 28
    .param p1, "scTotal"    # J
    .param p3, "scWalk"    # J
    .param p5, "scRun"    # J
    .param p7, "scWalkUp"    # J
    .param p9, "scRunUp"    # J
    .param p11, "scWalkDn"    # J
    .param p13, "scRunDn"    # J
    .param p15, "distance"    # D
    .param p17, "calorie"    # D
    .param p19, "speed"    # D

    .prologue
    .line 120
    iget-wide v0, p0, mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedTotalStep:J

    .line 121
    iget-wide v0, p0, mAccumulatedWalkStep:J

    add-long/2addr v0, p3

    iput-wide v0, p0, mAccumulatedWalkStep:J

    .line 122
    iget-wide v0, p0, mAccumulatedRunStep:J

    add-long/2addr v0, p5

    iput-wide v0, p0, mAccumulatedRunStep:J

    .line 123
    iget-wide v0, p0, mAccumulatedWalkUpStep:J

    add-long/2addr v0, p7

    iput-wide v0, p0, mAccumulatedWalkUpStep:J

    .line 124
    iget-wide v0, p0, mAccumulatedRunUpStep:J

    add-long v0, v0, p9

    iput-wide v0, p0, mAccumulatedRunUpStep:J

    .line 125
    iget-wide v0, p0, mAccumulatedWalkDnStep:J

    add-long v0, v0, p11

    iput-wide v0, p0, mAccumulatedWalkDnStep:J

    .line 126
    iget-wide v0, p0, mAccumulatedRunDnStep:J

    add-long v0, v0, p13

    iput-wide v0, p0, mAccumulatedRunDnStep:J

    .line 127
    iget-wide v0, p0, mAccumulatedDistance:D

    add-double v0, v0, p15

    iput-wide v0, p0, mAccumulatedDistance:D

    .line 128
    iget-wide v0, p0, mAccumulatedCalorie:D

    add-double v0, v0, p17

    iput-wide v0, p0, mAccumulatedCalorie:D

    .line 129
    iget-wide v0, p0, mAverageSpeed:D

    iget-wide v2, p0, mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double v0, v0, p19

    iget-wide v2, p0, mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, mAverageSpeed:D

    .line 130
    iget-wide v0, p0, mNumAccumulatedData:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, mNumAccumulatedData:D

    .line 132
    iget-object v0, p0, mTotalStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 133
    iget-object v0, p0, mWalkStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 134
    iget-object v0, p0, mRunStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 135
    iget-object v0, p0, mWalkUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 136
    iget-object v0, p0, mRunUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 137
    iget-object v0, p0, mWalkDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 138
    iget-object v0, p0, mRunDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 140
    iget-object v0, p0, mDistanceArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 141
    iget-object v0, p0, mCalorieArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 142
    iget-object v0, p0, mSpeedArray:[D

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 144
    const/4 v0, 0x1

    iput v0, p0, mLastDataMode:I

    .line 145
    return-void
.end method

.method public putTimestamp(J)V
    .registers 6
    .param p1, "curTimeStamp"    # J

    .prologue
    .line 111
    iput-wide p1, p0, mLastSavingTimestamp:J

    .line 112
    iget-object v0, p0, mTimeStampArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 113
    return-void
.end method

.method public putTotalStepInfo(J)V
    .registers 6
    .param p1, "scTotal"    # J

    .prologue
    .line 273
    iget-object v0, p0, mTotalStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 274
    return-void
.end method

.method public putTotalStepInfoSingle(J)V
    .registers 8
    .param p1, "scTotal"    # J

    .prologue
    .line 151
    iget-wide v0, p0, mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedTotalStep:J

    .line 152
    iget-object v0, p0, mTotalStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 153
    return-void
.end method

.method public putWalkDnStepInfo(J)V
    .registers 6
    .param p1, "scWalkDn"    # J

    .prologue
    .line 308
    iget-object v0, p0, mWalkDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 309
    return-void
.end method

.method public putWalkDnStepInfoSingle(J)V
    .registers 8
    .param p1, "scWalkDn"    # J

    .prologue
    .line 191
    iget-wide v0, p0, mAccumulatedWalkDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedWalkDnStep:J

    .line 192
    iget-object v0, p0, mWalkDnStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 193
    return-void
.end method

.method public putWalkStepInfo(J)V
    .registers 6
    .param p1, "scWalk"    # J

    .prologue
    .line 280
    iget-object v0, p0, mWalkStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 281
    return-void
.end method

.method public putWalkStepInfoSingle(J)V
    .registers 8
    .param p1, "scWalk"    # J

    .prologue
    .line 159
    iget-wide v0, p0, mAccumulatedWalkStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedWalkStep:J

    .line 160
    iget-object v0, p0, mWalkStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 161
    return-void
.end method

.method public putWalkUpStepInfo(J)V
    .registers 6
    .param p1, "scWalkUp"    # J

    .prologue
    .line 294
    iget-object v0, p0, mWalkUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 295
    return-void
.end method

.method public putWalkUpStepInfoSingle(J)V
    .registers 8
    .param p1, "scWalkUp"    # J

    .prologue
    .line 175
    iget-wide v0, p0, mAccumulatedWalkUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mAccumulatedWalkUpStep:J

    .line 176
    iget-object v0, p0, mWalkUpStepCountArray:[J

    iget v1, p0, mHistoryArrayIndex:I

    iget-wide v2, p0, mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 177
    return-void
.end method

.method public setDataMode(I)V
    .registers 2
    .param p1, "dataMode"    # I

    .prologue
    .line 266
    iput p1, p0, mLastDataMode:I

    .line 267
    return-void
.end method

.method public updateBufferIndex(I)V
    .registers 15
    .param p1, "dataMode"    # I

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x2

    .line 355
    if-ne p1, v11, :cond_9

    .line 356
    invoke-direct {p0}, increaseBufferIndex()V

    .line 385
    :cond_8
    :goto_8
    return-void

    .line 357
    :cond_9
    const/4 v8, 0x1

    if-ne p1, v8, :cond_8

    .line 358
    new-instance v8, Ljava/util/SimpleTimeZone;

    const/4 v9, 0x0

    const-string v10, "GMT"

    invoke-direct {v8, v9, v10}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 360
    .local v0, "calender":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 361
    .local v2, "curTimeMillis":J
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 363
    .local v7, "minute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 364
    .local v6, "lastUpdatedTime":Ljava/util/Calendar;
    invoke-direct {p0}, getLastSavingTimestamp()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 365
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 366
    .local v1, "lastUpdatedMinute":I
    invoke-direct {p0}, getLastSavingTimestamp()J

    move-result-wide v8

    sub-long v4, v2, v8

    .line 368
    .local v4, "diffTimeStamp":J
    invoke-virtual {p0}, getLastCallBackMode()I

    move-result v8

    if-ne v8, v11, :cond_45

    .line 369
    invoke-direct {p0}, increaseBufferIndex()V

    .line 370
    invoke-direct {p0}, resetAccumulatedStepInfo()V

    .line 371
    invoke-virtual {p0, v2, v3}, putTimestamp(J)V

    goto :goto_8

    .line 373
    :cond_45
    if-ne v7, v1, :cond_54

    const-wide/32 v8, 0xea60

    cmp-long v8, v4, v8

    if-gtz v8, :cond_54

    invoke-direct {p0}, getLatestBufferIndex()I

    move-result v8

    if-gez v8, :cond_8

    .line 375
    :cond_54
    invoke-direct {p0}, increaseBufferIndex()V

    .line 376
    invoke-direct {p0}, resetAccumulatedStepInfo()V

    .line 377
    invoke-virtual {p0, v2, v3}, putTimestamp(J)V

    goto :goto_8
.end method
