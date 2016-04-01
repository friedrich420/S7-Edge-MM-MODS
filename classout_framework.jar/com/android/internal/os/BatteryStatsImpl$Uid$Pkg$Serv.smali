.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Serv"
.end annotation


# instance fields
.field mLastLaunches:I

.field mLastStartTime:J

.field mLastStarts:I

.field mLaunched:Z

.field mLaunchedSince:J

.field mLaunchedTime:J

.field mLaunches:I

.field mLoadedLaunches:I

.field mLoadedStartTime:J

.field mLoadedStarts:I

.field mRunning:Z

.field mRunningSince:J

.field mStartTime:J

.field mStarts:I

.field mUnpluggedLaunches:I

.field mUnpluggedStartTime:J

.field mUnpluggedStarts:I

.field final synthetic this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V
    .registers 3

    .prologue
    .line 6462
    iput-object p1, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    invoke-direct {p0, p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>(Landroid/os/BatteryStats$Uid$Pkg;)V

    .line 6463
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 6464
    return-void
.end method


# virtual methods
.method detach()V
    .registers 2

    .prologue
    .line 6478
    iget-object v0, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 6479
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .prologue
    .line 6569
    iget-object v0, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method getLaunchTimeToNowLocked(J)J
    .registers 8
    .param p1, "batteryUptime"    # J

    .prologue
    .line 6519
    iget-boolean v0, p0, mLaunched:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, mLaunchedTime:J

    .line 6520
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, mLaunchedTime:J

    add-long/2addr v0, p1

    iget-wide v2, p0, mLaunchedSince:J

    sub-long/2addr v0, v2

    goto :goto_6
.end method

.method public getLaunches(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 6574
    iget v0, p0, mLaunches:I

    .line 6575
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 6576
    iget v1, p0, mLoadedLaunches:I

    sub-int/2addr v0, v1

    .line 6580
    :cond_8
    :goto_8
    return v0

    .line 6577
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 6578
    iget v1, p0, mUnpluggedLaunches:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public getStartTime(JI)J
    .registers 9
    .param p1, "now"    # J
    .param p3, "which"    # I

    .prologue
    .line 6585
    invoke-virtual {p0, p1, p2}, getStartTimeToNowLocked(J)J

    move-result-wide v0

    .line 6586
    .local v0, "val":J
    const/4 v2, 0x1

    if-ne p3, v2, :cond_b

    .line 6587
    iget-wide v2, p0, mLoadedStartTime:J

    sub-long/2addr v0, v2

    .line 6591
    :cond_a
    :goto_a
    return-wide v0

    .line 6588
    :cond_b
    const/4 v2, 0x2

    if-ne p3, v2, :cond_a

    .line 6589
    iget-wide v2, p0, mUnpluggedStartTime:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method getStartTimeToNowLocked(J)J
    .registers 8
    .param p1, "batteryUptime"    # J

    .prologue
    .line 6524
    iget-boolean v0, p0, mRunning:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, mStartTime:J

    .line 6525
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, mStartTime:J

    add-long/2addr v0, p1

    iget-wide v2, p0, mRunningSince:J

    sub-long/2addr v0, v2

    goto :goto_6
.end method

.method public getStarts(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 6596
    iget v0, p0, mStarts:I

    .line 6597
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 6598
    iget v1, p0, mLoadedStarts:I

    sub-int/2addr v0, v1

    .line 6603
    :cond_8
    :goto_8
    return v0

    .line 6599
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 6600
    iget v1, p0, mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public onTimeStarted(JJJ)V
    .registers 10
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 6468
    invoke-virtual {p0, p3, p4}, getStartTimeToNowLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedStartTime:J

    .line 6469
    iget v0, p0, mStarts:I

    iput v0, p0, mUnpluggedStarts:I

    .line 6470
    iget v0, p0, mLaunches:I

    iput v0, p0, mUnpluggedLaunches:I

    .line 6471
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 6475
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6482
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mStartTime:J

    .line 6483
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mRunningSince:J

    .line 6484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    move v0, v1

    :goto_15
    iput-boolean v0, p0, mRunning:Z

    .line 6485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mStarts:I

    .line 6486
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mLaunchedTime:J

    .line 6487
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mLaunchedSince:J

    .line 6488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    :goto_2f
    iput-boolean v1, p0, mLaunched:Z

    .line 6489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLaunches:I

    .line 6490
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedStartTime:J

    .line 6491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedStarts:I

    .line 6492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedLaunches:I

    .line 6493
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastStartTime:J

    .line 6494
    iput v2, p0, mLastStarts:I

    .line 6495
    iput v2, p0, mLastLaunches:I

    .line 6496
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedStartTime:J

    .line 6497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUnpluggedStarts:I

    .line 6498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUnpluggedLaunches:I

    .line 6499
    return-void

    :cond_64
    move v0, v2

    .line 6484
    goto :goto_15

    :cond_66
    move v1, v2

    .line 6488
    goto :goto_2f
.end method

.method public startLaunchedLocked()V
    .registers 3

    .prologue
    .line 6529
    iget-boolean v0, p0, mLaunched:Z

    if-nez v0, :cond_19

    .line 6530
    iget v0, p0, mLaunches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLaunches:I

    .line 6531
    iget-object v0, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    iput-wide v0, p0, mLaunchedSince:J

    .line 6532
    const/4 v0, 0x1

    iput-boolean v0, p0, mLaunched:Z

    .line 6534
    :cond_19
    return-void
.end method

.method public startRunningLocked()V
    .registers 3

    .prologue
    .line 6549
    iget-boolean v0, p0, mRunning:Z

    if-nez v0, :cond_19

    .line 6550
    iget v0, p0, mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mStarts:I

    .line 6551
    iget-object v0, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    iput-wide v0, p0, mRunningSince:J

    .line 6552
    const/4 v0, 0x1

    iput-boolean v0, p0, mRunning:Z

    .line 6554
    :cond_19
    return-void
.end method

.method public stopLaunchedLocked()V
    .registers 7

    .prologue
    .line 6537
    iget-boolean v2, p0, mLaunched:Z

    if-eqz v2, :cond_20

    .line 6538
    iget-object v2, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v2

    iget-wide v4, p0, mLaunchedSince:J

    sub-long v0, v2, v4

    .line 6539
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 6540
    iget-wide v2, p0, mLaunchedTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, mLaunchedTime:J

    .line 6544
    :goto_1d
    const/4 v2, 0x0

    iput-boolean v2, p0, mLaunched:Z

    .line 6546
    .end local v0    # "time":J
    :cond_20
    return-void

    .line 6542
    .restart local v0    # "time":J
    :cond_21
    iget v2, p0, mLaunches:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mLaunches:I

    goto :goto_1d
.end method

.method public stopRunningLocked()V
    .registers 7

    .prologue
    .line 6557
    iget-boolean v2, p0, mRunning:Z

    if-eqz v2, :cond_20

    .line 6558
    iget-object v2, p0, this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v2

    iget-wide v4, p0, mRunningSince:J

    sub-long v0, v2, v4

    .line 6559
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 6560
    iget-wide v2, p0, mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, mStartTime:J

    .line 6564
    :goto_1d
    const/4 v2, 0x0

    iput-boolean v2, p0, mRunning:Z

    .line 6566
    .end local v0    # "time":J
    :cond_20
    return-void

    .line 6562
    .restart local v0    # "time":J
    :cond_21
    iget v2, p0, mStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mStarts:I

    goto :goto_1d
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6502
    iget-wide v4, p0, mStartTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6503
    iget-wide v4, p0, mRunningSince:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6504
    iget-boolean v0, p0, mRunning:Z

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6505
    iget v0, p0, mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6506
    iget-wide v4, p0, mLaunchedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6507
    iget-wide v4, p0, mLaunchedSince:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6508
    iget-boolean v0, p0, mLaunched:Z

    if-eqz v0, :cond_50

    :goto_27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6509
    iget v0, p0, mLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6510
    iget-wide v0, p0, mLoadedStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6511
    iget v0, p0, mLoadedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6512
    iget v0, p0, mLoadedLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6513
    iget-wide v0, p0, mUnpluggedStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6514
    iget v0, p0, mUnpluggedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6515
    iget v0, p0, mUnpluggedLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6516
    return-void

    :cond_4e
    move v0, v2

    .line 6504
    goto :goto_11

    :cond_50
    move v1, v2

    .line 6508
    goto :goto_27
.end method
