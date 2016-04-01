.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounter"
.end annotation


# instance fields
.field mCount:J

.field mLastCount:J

.field mLoadedCount:J

.field mPluggedCount:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mUnpluggedCount:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 831
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 832
    iput-object p1, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 833
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 834
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 821
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 822
    iput-object p1, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mPluggedCount:J

    .line 824
    iget-wide v0, p0, mPluggedCount:J

    iput-wide v0, p0, mCount:J

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedCount:J

    .line 826
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastCount:J

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedCount:J

    .line 828
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 829
    return-void
.end method


# virtual methods
.method addCountLocked(J)V
    .registers 6
    .param p1, "count"    # J

    .prologue
    .line 873
    iget-wide v0, p0, mCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mCount:J

    .line 874
    return-void
.end method

.method detach()V
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 889
    return-void
.end method

.method public getCountLocked(I)J
    .registers 6
    .param p1, "which"    # I

    .prologue
    .line 854
    iget-wide v0, p0, mCount:J

    .line 855
    .local v0, "val":J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    .line 856
    iget-wide v2, p0, mUnpluggedCount:J

    sub-long/2addr v0, v2

    .line 861
    :cond_8
    :goto_8
    return-wide v0

    .line 857
    :cond_9
    if-eqz p1, :cond_8

    .line 858
    iget-wide v2, p0, mLoadedCount:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLoadedCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLastCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mUnpluggedCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mPluggedCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 844
    iget-wide v0, p0, mPluggedCount:J

    iput-wide v0, p0, mUnpluggedCount:J

    .line 845
    iget-wide v0, p0, mPluggedCount:J

    iput-wide v0, p0, mCount:J

    .line 846
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 850
    iget-wide v0, p0, mCount:J

    iput-wide v0, p0, mPluggedCount:J

    .line 851
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedCount:J

    .line 897
    iget-wide v0, p0, mLoadedCount:J

    iput-wide v0, p0, mCount:J

    .line 898
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastCount:J

    .line 899
    iget-wide v0, p0, mLoadedCount:J

    iput-wide v0, p0, mPluggedCount:J

    iput-wide v0, p0, mUnpluggedCount:J

    .line 900
    return-void
.end method

.method reset(Z)V
    .registers 4
    .param p1, "detachIfReset"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 880
    iput-wide v0, p0, mCount:J

    .line 881
    iput-wide v0, p0, mUnpluggedCount:J

    iput-wide v0, p0, mPluggedCount:J

    iput-wide v0, p0, mLastCount:J

    iput-wide v0, p0, mLoadedCount:J

    .line 882
    if-eqz p1, :cond_11

    .line 883
    invoke-virtual {p0}, detach()V

    .line 885
    :cond_11
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 892
    iget-wide v0, p0, mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 893
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 837
    iget-wide v0, p0, mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 838
    iget-wide v0, p0, mLoadedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 839
    iget-wide v0, p0, mUnpluggedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 840
    return-void
.end method
