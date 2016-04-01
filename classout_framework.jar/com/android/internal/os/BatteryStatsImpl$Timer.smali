.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field mCount:I

.field mLastCount:I

.field mLastTime:J

.field mLoadedCount:I

.field mLoadedTime:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mTimeBeforeMark:J

.field mTotalTime:J

.field final mType:I

.field mUnpluggedCount:I

.field mUnpluggedTime:J


# direct methods
.method constructor <init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 973
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 974
    iput p1, p0, mType:I

    .line 975
    iput-object p2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 976
    invoke-virtual {p2, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 977
    return-void
.end method

.method constructor <init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 957
    iput p1, p0, mType:I

    .line 958
    iput-object p2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCount:I

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedCount:I

    .line 962
    const/4 v0, 0x0

    iput v0, p0, mLastCount:I

    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUnpluggedCount:I

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mTotalTime:J

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedTime:J

    .line 966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastTime:J

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedTime:J

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mTimeBeforeMark:J

    .line 969
    invoke-virtual {p2, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 971
    return-void
.end method

.method public static writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .registers 6
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1049
    if-nez p1, :cond_7

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    :goto_6
    return-void

    .line 1053
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    invoke-virtual {p1, p0, p2, p3}, writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_6
.end method


# virtual methods
.method protected abstract computeCurrentCountLocked()I
.end method

.method protected abstract computeRunTimeLocked(J)J
.end method

.method detach()V
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 998
    return-void
.end method

.method public getCountLocked(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 1072
    invoke-virtual {p0}, computeCurrentCountLocked()I

    move-result v0

    .line 1073
    .local v0, "val":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 1074
    iget v1, p0, mUnpluggedCount:I

    sub-int/2addr v0, v1

    .line 1079
    :cond_a
    :goto_a
    return v0

    .line 1075
    :cond_b
    if-eqz p1, :cond_a

    .line 1076
    iget v1, p0, mLoadedCount:I

    sub-int/2addr v0, v1

    goto :goto_a
.end method

.method public getTimeSinceMarkLocked(J)J
    .registers 8
    .param p1, "elapsedRealtimeUs"    # J

    .prologue
    .line 1084
    iget-object v2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1085
    .local v0, "val":J
    iget-wide v2, p0, mTimeBeforeMark:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public getTotalTimeLocked(JI)J
    .registers 9
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 1060
    iget-object v2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1061
    .local v0, "val":J
    const/4 v2, 0x2

    if-ne p3, v2, :cond_11

    .line 1062
    iget-wide v2, p0, mUnpluggedTime:J

    sub-long/2addr v0, v2

    .line 1067
    :cond_10
    :goto_10
    return-wide v0

    .line 1063
    :cond_11
    if-eqz p3, :cond_10

    .line 1064
    iget-wide v2, p0, mLoadedTime:J

    sub-long/2addr v0, v2

    goto :goto_10
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLoadedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLastCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mUnpluggedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLoadedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLoadedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLastTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mUnpluggedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 10
    .param p1, "elapsedRealtime"    # J
    .param p3, "timeBaseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1019
    invoke-virtual {p0, p5, p6}, computeRunTimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedTime:J

    .line 1020
    iget v0, p0, mCount:I

    iput v0, p0, mUnpluggedCount:I

    .line 1026
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 10
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1034
    invoke-virtual {p0, p5, p6}, computeRunTimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, mTotalTime:J

    .line 1035
    invoke-virtual {p0}, computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, mCount:I

    .line 1040
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedTime:J

    iput-wide v0, p0, mTotalTime:J

    .line 1109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastTime:J

    .line 1110
    iget-wide v0, p0, mTotalTime:J

    iput-wide v0, p0, mUnpluggedTime:J

    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedCount:I

    iput v0, p0, mCount:I

    .line 1112
    const/4 v0, 0x0

    iput v0, p0, mLastCount:I

    .line 1113
    iget v0, p0, mCount:I

    iput v0, p0, mUnpluggedCount:I

    .line 1116
    iget-wide v0, p0, mTotalTime:J

    iput-wide v0, p0, mTimeBeforeMark:J

    .line 1117
    return-void
.end method

.method reset(Z)Z
    .registers 4
    .param p1, "detachIfReset"    # Z

    .prologue
    .line 988
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTimeBeforeMark:J

    iput-wide v0, p0, mLastTime:J

    iput-wide v0, p0, mLoadedTime:J

    iput-wide v0, p0, mTotalTime:J

    .line 989
    const/4 v0, 0x0

    iput v0, p0, mLastCount:I

    iput v0, p0, mLoadedCount:I

    iput v0, p0, mCount:I

    .line 990
    if-eqz p1, :cond_16

    .line 991
    invoke-virtual {p0}, detach()V

    .line 993
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1101
    iget-object v2, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1102
    .local v0, "runTime":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1103
    iget v2, p0, mCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1003
    iget v0, p0, mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    iget v0, p0, mLoadedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    iget v0, p0, mUnpluggedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    iget-object v0, p0, mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, computeRunTimeLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1007
    iget-wide v0, p0, mLoadedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1008
    iget-wide v0, p0, mUnpluggedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1009
    iget-wide v0, p0, mTimeBeforeMark:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1010
    return-void
.end method
