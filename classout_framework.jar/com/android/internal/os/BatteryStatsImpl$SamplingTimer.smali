.class public final Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SamplingTimer"
.end annotation


# instance fields
.field mCurrentReportedCount:I

.field mCurrentReportedTotalTime:J

.field mTimeBaseRunning:Z

.field mTrackingReportedValues:Z

.field mUnpluggedReportedCount:I

.field mUnpluggedReportedTotalTime:J

.field mUpdateVersion:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1161
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, mCurrentReportedCount:I

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, mUnpluggedReportedCount:I

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, mCurrentReportedTotalTime:J

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, mUnpluggedReportedTotalTime:J

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2c

    :goto_23
    iput-boolean v0, p0, mTrackingReportedValues:Z

    .line 1167
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, mTimeBaseRunning:Z

    .line 1168
    return-void

    :cond_2c
    move v0, v1

    .line 1166
    goto :goto_23
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V
    .registers 4
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "trackReportedValues"    # Z

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1172
    iput-boolean p2, p0, mTrackingReportedValues:Z

    .line 1173
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, mTimeBaseRunning:Z

    .line 1174
    return-void
.end method


# virtual methods
.method public addCurrentReportedCount(I)V
    .registers 3
    .param p1, "delta"    # I

    .prologue
    .line 1201
    iget v0, p0, mCurrentReportedCount:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, updateCurrentReportedCount(I)V

    .line 1202
    return-void
.end method

.method public addCurrentReportedTotalTime(J)V
    .registers 6
    .param p1, "delta"    # J

    .prologue
    .line 1215
    iget-wide v0, p0, mCurrentReportedTotalTime:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, updateCurrentReportedTotalTime(J)V

    .line 1216
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .registers 4

    .prologue
    .line 1246
    iget v1, p0, mCount:I

    iget-boolean v0, p0, mTimeBaseRunning:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, mTrackingReportedValues:Z

    if-eqz v0, :cond_11

    iget v0, p0, mCurrentReportedCount:I

    iget v2, p0, mUnpluggedReportedCount:I

    sub-int/2addr v0, v2

    :goto_f
    add-int/2addr v0, v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected computeRunTimeLocked(J)J
    .registers 9
    .param p1, "curBatteryRealtime"    # J

    .prologue
    .line 1241
    iget-wide v2, p0, mTotalTime:J

    iget-boolean v0, p0, mTimeBaseRunning:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, mTrackingReportedValues:Z

    if-eqz v0, :cond_11

    iget-wide v0, p0, mCurrentReportedTotalTime:J

    iget-wide v4, p0, mUnpluggedReportedTotalTime:J

    sub-long/2addr v0, v4

    :goto_f
    add-long/2addr v0, v2

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public getUpdateVersion()I
    .registers 2

    .prologue
    .line 1187
    iget v0, p0, mUpdateVersion:I

    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1233
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCurrentReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mUnpluggedReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mCurrentReportedTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mUnpluggedReportedTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1238
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 10
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1219
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 1220
    iget-boolean v0, p0, mTrackingReportedValues:Z

    if-eqz v0, :cond_f

    .line 1221
    iget-wide v0, p0, mCurrentReportedTotalTime:J

    iput-wide v0, p0, mUnpluggedReportedTotalTime:J

    .line 1222
    iget v0, p0, mCurrentReportedCount:I

    iput v0, p0, mUnpluggedReportedCount:I

    .line 1224
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, mTimeBaseRunning:Z

    .line 1225
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 8
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1228
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, mTimeBaseRunning:Z

    .line 1230
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 1273
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, mCurrentReportedTotalTime:J

    iput-wide v2, p0, mUnpluggedReportedTotalTime:J

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mCurrentReportedCount:I

    iput v1, p0, mUnpluggedReportedCount:I

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1d

    :goto_1a
    iput-boolean v0, p0, mTrackingReportedValues:Z

    .line 1277
    return-void

    .line 1276
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method reset(Z)Z
    .registers 3
    .param p1, "detachIfReset"    # Z

    .prologue
    .line 1260
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 1261
    invoke-virtual {p0}, setStale()V

    .line 1262
    const/4 v0, 0x1

    return v0
.end method

.method public setStale()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1177
    iput-boolean v2, p0, mTrackingReportedValues:Z

    .line 1178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mUnpluggedReportedTotalTime:J

    .line 1179
    iput v2, p0, mUnpluggedReportedCount:I

    .line 1180
    return-void
.end method

.method public setUpdateVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 1183
    iput p1, p0, mUpdateVersion:I

    .line 1184
    return-void
.end method

.method public updateCurrentReportedCount(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 1191
    iget-boolean v0, p0, mTimeBaseRunning:Z

    if-eqz v0, :cond_d

    iget v0, p0, mUnpluggedReportedCount:I

    if-nez v0, :cond_d

    .line 1193
    iput p1, p0, mUnpluggedReportedCount:I

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, mTrackingReportedValues:Z

    .line 1197
    :cond_d
    iput p1, p0, mCurrentReportedCount:I

    .line 1198
    return-void
.end method

.method public updateCurrentReportedTotalTime(J)V
    .registers 8
    .param p1, "totalTime"    # J

    .prologue
    .line 1205
    iget-boolean v0, p0, mTimeBaseRunning:Z

    if-eqz v0, :cond_11

    iget-wide v0, p0, mUnpluggedReportedTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 1207
    iput-wide p1, p0, mUnpluggedReportedTotalTime:J

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, mTrackingReportedValues:Z

    .line 1211
    :cond_11
    iput-wide p1, p0, mCurrentReportedTotalTime:J

    .line 1212
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "batteryRealtime"    # J

    .prologue
    .line 1266
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1267
    iget-wide v0, p0, mCurrentReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1268
    iget v0, p0, mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    iget-boolean v0, p0, mTrackingReportedValues:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    return-void

    .line 1269
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1251
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1252
    iget v0, p0, mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    iget v0, p0, mUnpluggedReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget-wide v0, p0, mCurrentReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1255
    iget-wide v0, p0, mUnpluggedReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1256
    iget-boolean v0, p0, mTrackingReportedValues:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    return-void

    .line 1256
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method
