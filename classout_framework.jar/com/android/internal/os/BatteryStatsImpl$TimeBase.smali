.class Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeBase"
.end annotation


# instance fields
.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">;"
        }
    .end annotation
.end field

.field private mPastRealtime:J

.field private mPastUptime:J

.field private mRealtime:J

.field private mRealtimeStart:J

.field private mRunning:Z

.field private mUnpluggedRealtime:J

.field private mUnpluggedUptime:J

.field private mUptime:J

.field private mUptimeStart:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .prologue
    .line 557
    iget-object v0, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method public computeRealtime(JI)J
    .registers 9
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 602
    packed-switch p3, :pswitch_data_1c

    .line 610
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 604
    :pswitch_6
    iget-wide v0, p0, mRealtime:J

    invoke-virtual {p0, p1, p2}, getRealtime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 606
    :pswitch_e
    invoke-virtual {p0, p1, p2}, getRealtime(J)J

    move-result-wide v0

    goto :goto_5

    .line 608
    :pswitch_13
    invoke-virtual {p0, p1, p2}, getRealtime(J)J

    move-result-wide v0

    iget-wide v2, p0, mUnpluggedRealtime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 602
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .registers 9
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 590
    packed-switch p3, :pswitch_data_1c

    .line 598
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 592
    :pswitch_6
    iget-wide v0, p0, mUptime:J

    invoke-virtual {p0, p1, p2}, getUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 594
    :pswitch_e
    invoke-virtual {p0, p1, p2}, getUptime(J)J

    move-result-wide v0

    goto :goto_5

    .line 596
    :pswitch_13
    invoke-virtual {p0, p1, p2}, getUptime(J)J

    move-result-wide v0

    iget-wide v2, p0, mUnpluggedUptime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 590
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 529
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mRunning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 530
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 531
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v1, "mUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-wide v2, p0, mUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 536
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string/jumbo v1, "mRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-wide v2, p0, mRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 541
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v1, "mPastUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-wide v2, p0, mPastUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v1, "mUptimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-wide v2, p0, mUptimeStart:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 545
    const-string/jumbo v1, "mUnpluggedUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, mUnpluggedUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 548
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string/jumbo v1, "mPastRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-wide v2, p0, mPastRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v1, "mRealtimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-wide v2, p0, mRealtimeStart:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 552
    const-string/jumbo v1, "mUnpluggedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, mUnpluggedRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public getRealtime(J)J
    .registers 8
    .param p1, "curTime"    # J

    .prologue
    .line 622
    iget-wide v0, p0, mPastRealtime:J

    .line 623
    .local v0, "time":J
    iget-boolean v2, p0, mRunning:Z

    if-eqz v2, :cond_b

    .line 624
    iget-wide v2, p0, mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 626
    :cond_b
    return-wide v0
.end method

.method public getRealtimeStart()J
    .registers 3

    .prologue
    .line 634
    iget-wide v0, p0, mRealtimeStart:J

    return-wide v0
.end method

.method public getUptime(J)J
    .registers 8
    .param p1, "curTime"    # J

    .prologue
    .line 614
    iget-wide v0, p0, mPastUptime:J

    .line 615
    .local v0, "time":J
    iget-boolean v2, p0, mRunning:Z

    if-eqz v2, :cond_b

    .line 616
    iget-wide v2, p0, mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 618
    :cond_b
    return-wide v0
.end method

.method public getUptimeStart()J
    .registers 3

    .prologue
    .line 630
    iget-wide v0, p0, mUptimeStart:J

    return-wide v0
.end method

.method public init(JJ)V
    .registers 8
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 567
    iput-wide v0, p0, mRealtime:J

    .line 568
    iput-wide v0, p0, mUptime:J

    .line 569
    iput-wide v0, p0, mPastUptime:J

    .line 570
    iput-wide v0, p0, mPastRealtime:J

    .line 571
    iput-wide p1, p0, mUptimeStart:J

    .line 572
    iput-wide p3, p0, mRealtimeStart:J

    .line 573
    iget-wide v0, p0, mUptimeStart:J

    invoke-virtual {p0, v0, v1}, getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedUptime:J

    .line 574
    iget-wide v0, p0, mRealtimeStart:J

    invoke-virtual {p0, v0, v1}, getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedRealtime:J

    .line 575
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 638
    iget-boolean v0, p0, mRunning:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, mRunning:Z

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUptime:J

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mPastUptime:J

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUptimeStart:J

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mRealtime:J

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mPastRealtime:J

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mRealtimeStart:J

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedUptime:J

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedRealtime:J

    .line 689
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUptime:J

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mRealtime:J

    .line 672
    return-void
.end method

.method public remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .prologue
    .line 561
    iget-object v0, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 562
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed unknown observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_20
    return-void
.end method

.method public reset(JJ)V
    .registers 10
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 578
    iget-boolean v0, p0, mRunning:Z

    if-nez v0, :cond_b

    .line 579
    iput-wide v2, p0, mPastUptime:J

    .line 580
    iput-wide v2, p0, mPastRealtime:J

    .line 587
    :goto_a
    return-void

    .line 582
    :cond_b
    iput-wide p1, p0, mUptimeStart:J

    .line 583
    iput-wide p3, p0, mRealtimeStart:J

    .line 584
    invoke-virtual {p0, p1, p2}, getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedUptime:J

    .line 585
    invoke-virtual {p0, p3, p4}, getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedRealtime:J

    goto :goto_a
.end method

.method public setRunning(ZJJ)Z
    .registers 16
    .param p1, "running"    # Z
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    .line 642
    iget-boolean v1, p0, mRunning:Z

    if-eq v1, p1, :cond_66

    .line 643
    iput-boolean p1, p0, mRunning:Z

    .line 644
    if-eqz p1, :cond_31

    .line 645
    iput-wide p2, p0, mUptimeStart:J

    .line 646
    iput-wide p4, p0, mRealtimeStart:J

    .line 647
    invoke-virtual {p0, p2, p3}, getUptime(J)J

    move-result-wide v4

    iput-wide v4, p0, mUnpluggedUptime:J

    .line 648
    .local v4, "batteryUptime":J
    invoke-virtual {p0, p4, p5}, getRealtime(J)J

    move-result-wide v6

    iput-wide v6, p0, mUnpluggedRealtime:J

    .line 650
    .local v6, "batteryRealtime":J
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_64

    .line 651
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    .line 650
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 654
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :cond_31
    iget-wide v2, p0, mPastUptime:J

    iget-wide v8, p0, mUptimeStart:J

    sub-long v8, p2, v8

    add-long/2addr v2, v8

    iput-wide v2, p0, mPastUptime:J

    .line 655
    iget-wide v2, p0, mPastRealtime:J

    iget-wide v8, p0, mRealtimeStart:J

    sub-long v8, p4, v8

    add-long/2addr v2, v8

    iput-wide v2, p0, mPastRealtime:J

    .line 657
    invoke-virtual {p0, p2, p3}, getUptime(J)J

    move-result-wide v4

    .line 658
    .restart local v4    # "batteryUptime":J
    invoke-virtual {p0, p4, p5}, getRealtime(J)J

    move-result-wide v6

    .line 660
    .restart local v6    # "batteryRealtime":J
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_53
    if-ltz v0, :cond_64

    .line 661
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    .line 660
    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 664
    :cond_64
    const/4 v1, 0x1

    .line 666
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :goto_65
    return v1

    :cond_66
    const/4 v1, 0x0

    goto :goto_65
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .registers 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    const/4 v2, 0x0

    .line 675
    invoke-virtual {p0, p2, p3, v2}, computeUptime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 676
    invoke-virtual {p0, p4, p5, v2}, computeRealtime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 677
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JJ)V
    .registers 12
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    .line 692
    invoke-virtual {p0, p2, p3}, getUptime(J)J

    move-result-wide v2

    .line 693
    .local v2, "runningUptime":J
    invoke-virtual {p0, p4, p5}, getRealtime(J)J

    move-result-wide v0

    .line 694
    .local v0, "runningRealtime":J
    iget-wide v4, p0, mUptime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 695
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 696
    iget-wide v4, p0, mUptimeStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 697
    iget-wide v4, p0, mRealtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 698
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 699
    iget-wide v4, p0, mRealtimeStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 700
    iget-wide v4, p0, mUnpluggedUptime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 701
    iget-wide v4, p0, mUnpluggedRealtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 702
    return-void
.end method
