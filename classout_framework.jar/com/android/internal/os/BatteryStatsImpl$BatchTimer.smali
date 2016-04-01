.class public final Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchTimer"
.end annotation


# instance fields
.field mInDischarge:Z

.field mLastAddedDuration:J

.field mLastAddedTime:J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 5
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 1311
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1312
    iput-object p1, p0, mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1313
    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, mInDischarge:Z

    .line 1314
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1303
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1304
    iput-object p1, p0, mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1305
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLastAddedTime:J

    .line 1306
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLastAddedDuration:J

    .line 1307
    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, mInDischarge:Z

    .line 1308
    return-void
.end method

.method private computeOverage(J)J
    .registers 8
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 1349
    iget-wide v2, p0, mLastAddedTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_e

    .line 1350
    iget-wide v0, p0, mLastTime:J

    iget-wide v2, p0, mLastAddedDuration:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    .line 1352
    :cond_e
    return-wide v0
.end method

.method private recomputeLastDuration(JZ)V
    .registers 11
    .param p1, "curTime"    # J
    .param p3, "abort"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 1356
    invoke-direct {p0, p1, p2}, computeOverage(J)J

    move-result-wide v0

    .line 1357
    .local v0, "overage":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_17

    .line 1361
    iget-boolean v2, p0, mInDischarge:Z

    if-eqz v2, :cond_13

    .line 1362
    iget-wide v2, p0, mTotalTime:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, mTotalTime:J

    .line 1364
    :cond_13
    if-eqz p3, :cond_18

    .line 1365
    iput-wide v4, p0, mLastAddedTime:J

    .line 1371
    :cond_17
    :goto_17
    return-void

    .line 1367
    :cond_18
    iput-wide p1, p0, mLastAddedTime:J

    .line 1368
    iget-wide v2, p0, mLastAddedDuration:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, mLastAddedDuration:J

    goto :goto_17
.end method


# virtual methods
.method public abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 8
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 1385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1386
    .local v0, "now":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, recomputeLastDuration(JZ)V

    .line 1387
    return-void
.end method

.method public addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .registers 10
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "durationMillis"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v0, v2, v4

    .line 1375
    .local v0, "now":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, recomputeLastDuration(JZ)V

    .line 1376
    iput-wide v0, p0, mLastAddedTime:J

    .line 1377
    mul-long v2, p2, v4

    iput-wide v2, p0, mLastAddedDuration:J

    .line 1378
    iget-boolean v2, p0, mInDischarge:Z

    if-eqz v2, :cond_23

    .line 1379
    iget-wide v2, p0, mTotalTime:J

    iget-wide v4, p0, mLastAddedDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, mTotalTime:J

    .line 1380
    iget v2, p0, mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mCount:I

    .line 1382
    :cond_23
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .registers 2

    .prologue
    .line 1391
    iget v0, p0, mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .registers 9
    .param p1, "curBatteryRealtime"    # J

    .prologue
    .line 1396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, computeOverage(J)J

    move-result-wide v0

    .line 1397
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 1398
    iput-wide v0, p0, mTotalTime:J

    .line 1400
    .end local v0    # "overage":J
    :goto_13
    return-wide v0

    .restart local v0    # "overage":J
    :cond_14
    iget-wide v0, p0, mTotalTime:J

    goto :goto_13
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1343
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastAddedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLastAddedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastAddedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLastAddedDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 12
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1332
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, recomputeLastDuration(JZ)V

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, mInDischarge:Z

    .line 1335
    iget-wide v0, p0, mLastAddedTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_14

    .line 1336
    iget-wide v0, p0, mTotalTime:J

    iget-wide v2, p0, mLastAddedDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mTotalTime:J

    .line 1338
    :cond_14
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 1339
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 12
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    const/4 v4, 0x0

    .line 1325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, recomputeLastDuration(JZ)V

    .line 1326
    iput-boolean v4, p0, mInDischarge:Z

    .line 1327
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 1328
    return-void
.end method

.method reset(Z)Z
    .registers 12
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 1406
    .local v0, "now":J
    invoke-direct {p0, v0, v1, v4}, recomputeLastDuration(JZ)V

    .line 1407
    iget-wide v6, p0, mLastAddedTime:J

    cmp-long v3, v6, v0

    if-nez v3, :cond_1f

    move v2, v4

    .line 1408
    .local v2, "stillActive":Z
    :goto_14
    if-nez v2, :cond_21

    if-eqz p1, :cond_21

    move v3, v4

    :goto_19
    invoke-super {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 1409
    if-nez v2, :cond_23

    :goto_1e
    return v4

    .end local v2    # "stillActive":Z
    :cond_1f
    move v2, v5

    .line 1407
    goto :goto_14

    .restart local v2    # "stillActive":Z
    :cond_21
    move v3, v5

    .line 1408
    goto :goto_19

    :cond_23
    move v4, v5

    .line 1409
    goto :goto_1e
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1318
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1319
    iget-wide v0, p0, mLastAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1320
    iget-wide v0, p0, mLastAddedDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1321
    return-void
.end method
