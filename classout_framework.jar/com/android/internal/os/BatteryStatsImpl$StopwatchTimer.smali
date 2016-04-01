.class public final Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StopwatchTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field mInList:Z

.field mNesting:I

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field mUpdateTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 5
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1453
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1454
    iput-object p1, p0, mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1455
    iput-object p3, p0, mTimerPool:Ljava/util/ArrayList;

    .line 1456
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 8
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1445
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1446
    iput-object p1, p0, mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1447
    iput-object p3, p0, mTimerPool:Ljava/util/ArrayList;

    .line 1448
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUpdateTime:J

    .line 1449
    return-void
.end method

.method private static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J
    .registers 16
    .param p0, "batteryRealtime"    # J
    .param p3, "self"    # Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ")J"
        }
    .end annotation

    .prologue
    .line 1556
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    const-wide/16 v6, 0x0

    .line 1557
    .local v6, "selfTime":J
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1558
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2a

    .line 1559
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1560
    .local v8, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-wide v10, v8, mUpdateTime:J

    sub-long v2, p0, v10

    .line 1561
    .local v2, "heldTime":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_25

    .line 1562
    int-to-long v10, v0

    div-long v4, v2, v10

    .line 1563
    .local v4, "myTime":J
    if-ne v8, p3, :cond_20

    .line 1564
    move-wide v6, v4

    .line 1566
    :cond_20
    iget-wide v10, v8, mTotalTime:J

    add-long/2addr v10, v4

    iput-wide v10, v8, mTotalTime:J

    .line 1568
    .end local v4    # "myTime":J
    :cond_25
    iput-wide p0, v8, mUpdateTime:J

    .line 1558
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1570
    .end local v2    # "heldTime":J
    .end local v8    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2a
    return-wide v6
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .registers 2

    .prologue
    .line 1603
    iget v0, p0, mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .registers 14
    .param p1, "curBatteryRealtime"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    .line 1575
    iget-wide v6, p0, mTimeout:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_18

    iget-wide v6, p0, mUpdateTime:J

    iget-wide v8, p0, mTimeout:J

    add-long/2addr v6, v8

    cmp-long v3, p1, v6

    if-lez v3, :cond_18

    .line 1576
    iget-wide v6, p0, mUpdateTime:J

    iget-wide v8, p0, mTimeout:J

    add-long p1, v6, v8

    .line 1578
    :cond_18
    iget-object v3, p0, mTimerPool:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a

    iget-object v3, p0, mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2a
    int-to-long v0, v2

    .line 1581
    .local v0, "poolsize":J
    iget v2, p0, mType:I

    const/16 v3, -0x190

    if-ne v2, v3, :cond_84

    .line 1582
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "poolsize= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", curBatteryRealtime= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mUpdateTime= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, mUpdateTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mTimeout= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, mTimeout:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mNesting= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, mNesting:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mTotalTime= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, mTotalTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_84
    iget-wide v2, p0, mUpdateTime:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_9b

    .line 1591
    iget-wide v6, p0, mTotalTime:J

    iget v2, p0, mNesting:I

    if-lez v2, :cond_99

    iget-wide v2, p0, mUpdateTime:J

    sub-long v2, p1, v2

    div-long/2addr v2, v0

    :goto_97
    add-long/2addr v2, v6

    .line 1596
    :goto_98
    return-wide v2

    :cond_99
    move-wide v2, v4

    .line 1591
    goto :goto_97

    .line 1596
    :cond_9b
    iget-wide v2, p0, mTotalTime:J

    goto :goto_98
.end method

.method detach()V
    .registers 2

    .prologue
    .line 1619
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1620
    iget-object v0, p0, mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 1621
    iget-object v0, p0, mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1623
    :cond_c
    return-void
.end method

.method isRunningLocked()Z
    .registers 2

    .prologue
    .line 1509
    iget v0, p0, mNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1481
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mAcquireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 8
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1468
    iget v0, p0, mNesting:I

    if-lez v0, :cond_9

    .line 1472
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 1473
    iput-wide p5, p0, mUpdateTime:J

    .line 1478
    :cond_9
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1627
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1628
    const/4 v0, 0x0

    iput v0, p0, mNesting:I

    .line 1629
    return-void
.end method

.method reset(Z)Z
    .registers 8
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1608
    iget v3, p0, mNesting:I

    if-gtz v3, :cond_26

    move v0, v1

    .line 1609
    .local v0, "canDetach":Z
    :goto_7
    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    :goto_b
    invoke-super {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 1610
    iget v1, p0, mNesting:I

    if-lez v1, :cond_21

    .line 1611
    iget-object v1, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, mUpdateTime:J

    .line 1613
    :cond_21
    iget-wide v2, p0, mTotalTime:J

    iput-wide v2, p0, mAcquireTime:J

    .line 1614
    return v0

    .end local v0    # "canDetach":Z
    :cond_26
    move v0, v2

    .line 1608
    goto :goto_7

    .restart local v0    # "canDetach":Z
    :cond_28
    move v1, v2

    .line 1609
    goto :goto_b
.end method

.method public setMark(J)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1638
    iget-object v2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1639
    .local v0, "batteryRealtime":J
    iget v2, p0, mNesting:I

    if-lez v2, :cond_16

    .line 1641
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 1642
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1648
    :cond_16
    :goto_16
    iget-wide v2, p0, mTotalTime:J

    iput-wide v2, p0, mTimeBeforeMark:J

    .line 1649
    return-void

    .line 1644
    :cond_1b
    iget-wide v2, p0, mTotalTime:J

    iget-wide v4, p0, mUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, mTotalTime:J

    .line 1645
    iput-wide v0, p0, mUpdateTime:J

    goto :goto_16
.end method

.method setTimeout(J)V
    .registers 4
    .param p1, "timeout"    # J

    .prologue
    .line 1459
    iput-wide p1, p0, mTimeout:J

    .line 1460
    return-void
.end method

.method startRunningLocked(J)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1487
    iget v2, p0, mNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mNesting:I

    if-nez v2, :cond_2c

    .line 1488
    iget-object v2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1489
    .local v0, "batteryRealtime":J
    iput-wide v0, p0, mUpdateTime:J

    .line 1490
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    .line 1493
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1495
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_22
    iget v2, p0, mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mCount:I

    .line 1499
    iget-wide v2, p0, mTotalTime:J

    iput-wide v2, p0, mAcquireTime:J

    .line 1506
    .end local v0    # "batteryRealtime":J
    :cond_2c
    return-void
.end method

.method stopAllRunningLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1546
    iget v0, p0, mNesting:I

    if-lez v0, :cond_a

    .line 1547
    const/4 v0, 0x1

    iput v0, p0, mNesting:I

    .line 1548
    invoke-virtual {p0, p1, p2}, stopRunningLocked(J)V

    .line 1550
    :cond_a
    return-void
.end method

.method stopRunningLocked(J)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1514
    iget v2, p0, mNesting:I

    if-nez v2, :cond_5

    .line 1543
    :cond_4
    :goto_4
    return-void

    .line 1517
    :cond_5
    iget v2, p0, mNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mNesting:I

    if-nez v2, :cond_4

    .line 1518
    iget-object v2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1519
    .local v0, "batteryRealtime":J
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_34

    .line 1522
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1524
    iget-object v2, p0, mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1537
    :goto_25
    iget-wide v2, p0, mTotalTime:J

    iget-wide v4, p0, mAcquireTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1540
    iget v2, p0, mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mCount:I

    goto :goto_4

    .line 1526
    :cond_34
    const/4 v2, 0x1

    iput v2, p0, mNesting:I

    .line 1527
    invoke-virtual {p0, v0, v1}, computeRunTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, p0, mTotalTime:J

    .line 1528
    const/4 v2, 0x0

    iput v2, p0, mNesting:I

    goto :goto_25
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1463
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1464
    iget-wide v0, p0, mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1465
    return-void
.end method
