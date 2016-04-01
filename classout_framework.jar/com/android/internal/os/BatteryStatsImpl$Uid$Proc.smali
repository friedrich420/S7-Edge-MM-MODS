.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proc"
.end annotation


# instance fields
.field mActive:Z

.field mExcessivePower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundTime:J

.field mLoadedForegroundTime:J

.field mLoadedNumAnrs:I

.field mLoadedNumCrashes:I

.field mLoadedStarts:I

.field mLoadedSystemTime:J

.field mLoadedUserTime:J

.field final mName:Ljava/lang/String;

.field mNumAnrs:I

.field mNumCrashes:I

.field mProcessState:I

.field mStarts:I

.field mSystemTime:J

.field mUnpluggedForegroundTime:J

.field mUnpluggedNumAnrs:I

.field mUnpluggedNumCrashes:I

.field mUnpluggedStarts:I

.field mUnpluggedSystemTime:J

.field mUnpluggedUserTime:J

.field mUserTime:J

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 6045
    iput-object p1, p0, this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 5946
    const/4 v0, 0x1

    iput-boolean v0, p0, mActive:Z

    .line 6041
    const/4 v0, 0x3

    iput v0, p0, mProcessState:I

    .line 6046
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 6047
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 6048
    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .registers 7
    .param p1, "utime"    # I
    .param p2, "stime"    # I

    .prologue
    .line 6193
    iget-wide v0, p0, mUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, mUserTime:J

    .line 6194
    iget-wide v0, p0, mSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, mSystemTime:J

    .line 6195
    return-void
.end method

.method public addExcessiveCpu(JJ)V
    .registers 8
    .param p1, "overTime"    # J
    .param p3, "usedTime"    # J

    .prologue
    .line 6100
    iget-object v1, p0, mExcessivePower:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 6101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mExcessivePower:Ljava/util/ArrayList;

    .line 6103
    :cond_b
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 6104
    .local v0, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 6105
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 6106
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 6107
    iget-object v1, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6108
    return-void
.end method

.method public addExcessiveWake(JJ)V
    .registers 8
    .param p1, "overTime"    # J
    .param p3, "usedTime"    # J

    .prologue
    .line 6089
    iget-object v1, p0, mExcessivePower:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 6090
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mExcessivePower:Ljava/util/ArrayList;

    .line 6092
    :cond_b
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 6093
    .local v0, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 6094
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 6095
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 6096
    iget-object v1, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6097
    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .registers 6
    .param p1, "ttime"    # J

    .prologue
    .line 6198
    iget-wide v0, p0, mForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mForegroundTime:J

    .line 6199
    return-void
.end method

.method public countExcessivePowers()I
    .registers 2

    .prologue
    .line 6078
    iget-object v0, p0, mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method detach()V
    .registers 2

    .prologue
    .line 6073
    const/4 v0, 0x0

    iput-boolean v0, p0, mActive:Z

    .line 6074
    iget-object v0, p0, this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 6075
    return-void
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 6082
    iget-object v0, p0, mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 6083
    iget-object v0, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 6085
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getForegroundTime(I)J
    .registers 6
    .param p1, "which"    # I

    .prologue
    .line 6242
    iget-wide v0, p0, mForegroundTime:J

    .line 6243
    .local v0, "val":J
    const/4 v2, 0x1

    if-ne p1, v2, :cond_9

    .line 6244
    iget-wide v2, p0, mLoadedForegroundTime:J

    sub-long/2addr v0, v2

    .line 6248
    :cond_8
    :goto_8
    return-wide v0

    .line 6245
    :cond_9
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 6246
    iget-wide v2, p0, mUnpluggedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public getNumAnrs(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 6275
    iget v0, p0, mNumAnrs:I

    .line 6276
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 6277
    iget v1, p0, mLoadedNumAnrs:I

    sub-int/2addr v0, v1

    .line 6281
    :cond_8
    :goto_8
    return v0

    .line 6278
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 6279
    iget v1, p0, mUnpluggedNumAnrs:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public getNumCrashes(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 6264
    iget v0, p0, mNumCrashes:I

    .line 6265
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 6266
    iget v1, p0, mLoadedNumCrashes:I

    sub-int/2addr v0, v1

    .line 6270
    :cond_8
    :goto_8
    return v0

    .line 6267
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 6268
    iget v1, p0, mUnpluggedNumCrashes:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public getStarts(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 6253
    iget v0, p0, mStarts:I

    .line 6254
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 6255
    iget v1, p0, mLoadedStarts:I

    sub-int/2addr v0, v1

    .line 6259
    :cond_8
    :goto_8
    return v0

    .line 6256
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 6257
    iget v1, p0, mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public getSystemTime(I)J
    .registers 6
    .param p1, "which"    # I

    .prologue
    .line 6231
    iget-wide v0, p0, mSystemTime:J

    .line 6232
    .local v0, "val":J
    const/4 v2, 0x1

    if-ne p1, v2, :cond_9

    .line 6233
    iget-wide v2, p0, mLoadedSystemTime:J

    sub-long/2addr v0, v2

    .line 6237
    :cond_8
    :goto_8
    return-wide v0

    .line 6234
    :cond_9
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 6235
    iget-wide v2, p0, mUnpluggedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public getUserTime(I)J
    .registers 6
    .param p1, "which"    # I

    .prologue
    .line 6220
    iget-wide v0, p0, mUserTime:J

    .line 6221
    .local v0, "val":J
    const/4 v2, 0x1

    if-ne p1, v2, :cond_9

    .line 6222
    iget-wide v2, p0, mLoadedUserTime:J

    sub-long/2addr v0, v2

    .line 6226
    :cond_8
    :goto_8
    return-wide v0

    .line 6223
    :cond_9
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 6224
    iget-wide v2, p0, mUnpluggedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public incNumAnrsLocked()V
    .registers 2

    .prologue
    .line 6210
    iget v0, p0, mNumAnrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumAnrs:I

    .line 6211
    return-void
.end method

.method public incNumCrashesLocked()V
    .registers 2

    .prologue
    .line 6206
    iget v0, p0, mNumCrashes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumCrashes:I

    .line 6207
    return-void
.end method

.method public incStartsLocked()V
    .registers 2

    .prologue
    .line 6202
    iget v0, p0, mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mStarts:I

    .line 6203
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 6215
    iget-boolean v0, p0, mActive:Z

    return v0
.end method

.method public onTimeStarted(JJJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 6051
    iget-wide v0, p0, mUserTime:J

    iput-wide v0, p0, mUnpluggedUserTime:J

    .line 6052
    iget-wide v0, p0, mSystemTime:J

    iput-wide v0, p0, mUnpluggedSystemTime:J

    .line 6053
    iget-wide v0, p0, mForegroundTime:J

    iput-wide v0, p0, mUnpluggedForegroundTime:J

    .line 6054
    iget v0, p0, mStarts:I

    iput v0, p0, mUnpluggedStarts:I

    .line 6055
    iget v0, p0, mNumCrashes:I

    iput v0, p0, mUnpluggedNumCrashes:I

    .line 6056
    iget v0, p0, mNumAnrs:I

    iput v0, p0, mUnpluggedNumAnrs:I

    .line 6057
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 6060
    return-void
.end method

.method readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6128
    .local v0, "N":I
    if-nez v0, :cond_a

    .line 6129
    const/4 v3, 0x0

    iput-object v3, p0, mExcessivePower:Ljava/util/ArrayList;

    .line 6146
    :cond_9
    return-void

    .line 6133
    :cond_a
    const/16 v3, 0x2710

    if-le v0, v3, :cond_27

    .line 6134
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: too many excessive power entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6138
    :cond_27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mExcessivePower:Ljava/util/ArrayList;

    .line 6139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v0, :cond_9

    .line 6140
    new-instance v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v1}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 6141
    .local v1, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 6142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 6143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 6144
    iget-object v3, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUserTime:J

    .line 6172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mSystemTime:J

    .line 6173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mForegroundTime:J

    .line 6174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mStarts:I

    .line 6175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mNumCrashes:I

    .line 6176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mNumAnrs:I

    .line 6177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedUserTime:J

    .line 6178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedSystemTime:J

    .line 6179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLoadedForegroundTime:J

    .line 6180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedStarts:I

    .line 6181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedNumCrashes:I

    .line 6182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLoadedNumAnrs:I

    .line 6183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedUserTime:J

    .line 6184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedSystemTime:J

    .line 6185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mUnpluggedForegroundTime:J

    .line 6186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUnpluggedStarts:I

    .line 6187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUnpluggedNumCrashes:I

    .line 6188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUnpluggedNumAnrs:I

    .line 6189
    invoke-virtual {p0, p1}, readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    .line 6190
    return-void
.end method

.method reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 6063
    iput-wide v2, p0, mForegroundTime:J

    iput-wide v2, p0, mSystemTime:J

    iput-wide v2, p0, mUserTime:J

    .line 6064
    iput v0, p0, mNumAnrs:I

    iput v0, p0, mNumCrashes:I

    iput v0, p0, mStarts:I

    .line 6065
    iput-wide v2, p0, mLoadedForegroundTime:J

    iput-wide v2, p0, mLoadedSystemTime:J

    iput-wide v2, p0, mLoadedUserTime:J

    .line 6066
    iput v0, p0, mLoadedNumAnrs:I

    iput v0, p0, mLoadedNumCrashes:I

    iput v0, p0, mLoadedStarts:I

    .line 6067
    iput-wide v2, p0, mUnpluggedForegroundTime:J

    iput-wide v2, p0, mUnpluggedSystemTime:J

    iput-wide v2, p0, mUnpluggedUserTime:J

    .line 6068
    iput v0, p0, mUnpluggedNumAnrs:I

    iput v0, p0, mUnpluggedNumCrashes:I

    iput v0, p0, mUnpluggedStarts:I

    .line 6069
    const/4 v0, 0x0

    iput-object v0, p0, mExcessivePower:Ljava/util/ArrayList;

    .line 6070
    return-void
.end method

.method writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 6111
    iget-object v3, p0, mExcessivePower:Ljava/util/ArrayList;

    if-nez v3, :cond_9

    .line 6112
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6124
    :cond_8
    return-void

    .line 6116
    :cond_9
    iget-object v3, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6117
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6118
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_8

    .line 6119
    iget-object v3, p0, mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 6120
    .local v1, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    iget v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6121
    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6122
    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6118
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 6149
    iget-wide v0, p0, mUserTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6150
    iget-wide v0, p0, mSystemTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6151
    iget-wide v0, p0, mForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6152
    iget v0, p0, mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6153
    iget v0, p0, mNumCrashes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6154
    iget v0, p0, mNumAnrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6155
    iget-wide v0, p0, mLoadedUserTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6156
    iget-wide v0, p0, mLoadedSystemTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6157
    iget-wide v0, p0, mLoadedForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6158
    iget v0, p0, mLoadedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6159
    iget v0, p0, mLoadedNumCrashes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6160
    iget v0, p0, mLoadedNumAnrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6161
    iget-wide v0, p0, mUnpluggedUserTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6162
    iget-wide v0, p0, mUnpluggedSystemTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6163
    iget-wide v0, p0, mUnpluggedForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6164
    iget v0, p0, mUnpluggedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6165
    iget v0, p0, mUnpluggedNumCrashes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6166
    iget v0, p0, mUnpluggedNumAnrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6167
    invoke-virtual {p0, p1}, writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 6168
    return-void
.end method
