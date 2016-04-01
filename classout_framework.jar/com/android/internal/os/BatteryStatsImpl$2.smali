.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$clusterSpeeds:[[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I[[J)V
    .registers 4

    .prologue
    .line 8125
    iput-object p1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, val$numWakelocksF:I

    iput-object p3, p0, val$clusterSpeeds:[[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJJ)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "userTimeUs"    # J
    .param p4, "systemTimeUs"    # J
    .param p6, "powerMaUs"    # J

    .prologue
    .line 8129
    iget-object v9, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v10, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v8

    .line 8132
    .local v8, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v9, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long v10, v10, p2

    iput-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8133
    iget-object v9, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long v10, v10, p4

    iput-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8135
    const/4 v5, 0x0

    .line 8145
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v9, p0, val$numWakelocksF:I

    if-lez v9, :cond_31

    .line 8149
    const-wide/16 v10, 0x32

    mul-long v10, v10, p2

    const-wide/16 v12, 0x64

    div-long p2, v10, v12

    .line 8150
    const-wide/16 v10, 0x32

    mul-long v10, v10, p4

    const-wide/16 v12, 0x64

    div-long p4, v10, v12

    .line 8153
    :cond_31
    if-eqz v5, :cond_73

    .line 8154
    const-string v9, "  adding to uid="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": u="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8155
    const-wide/16 v10, 0x3e8

    div-long v10, p2, v10

    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 8156
    const-string v9, " s="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8157
    const-wide/16 v10, 0x3e8

    div-long v10, p4, v10

    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 8158
    const-string v9, " p="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    div-long v10, p6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mAms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8159
    const-string v9, "BatteryStatsImpl"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8162
    :cond_73
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8163
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8164
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p6

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8168
    iget-object v9, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    .line 8169
    .local v4, "numClusters":I
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v9, :cond_9b

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v9, v9

    if-eq v9, v4, :cond_9f

    .line 8171
    :cond_9b
    new-array v9, v4, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8174
    :cond_9f
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_a0
    iget-object v9, p0, val$clusterSpeeds:[[J

    array-length v9, v9

    if-ge v2, v9, :cond_ee

    .line 8175
    iget-object v9, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    .line 8177
    .local v7, "speedsInCluster":I
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v2

    if-eqz v9, :cond_bc

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v2

    array-length v9, v9

    if-eq v7, v9, :cond_c2

    .line 8179
    :cond_bc
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v10, v7, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v10, v9, v2

    .line 8183
    :cond_c2
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v9, v2

    .line 8184
    .local v3, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    const/4 v6, 0x0

    .local v6, "speed":I
    :goto_c7
    iget-object v9, p0, val$clusterSpeeds:[[J

    aget-object v9, v9, v2

    array-length v9, v9

    if-ge v6, v9, :cond_eb

    .line 8185
    aget-object v9, v3, v6

    if-nez v9, :cond_dd

    .line 8186
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v10, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v10, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v9, v3, v6

    .line 8188
    :cond_dd
    aget-object v9, v3, v6

    iget-object v10, p0, val$clusterSpeeds:[[J

    aget-object v10, v10, v2

    aget-wide v10, v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8184
    add-int/lit8 v6, v6, 0x1

    goto :goto_c7

    .line 8174
    :cond_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 8191
    .end local v3    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v6    # "speed":I
    .end local v7    # "speedsInCluster":I
    :cond_ee
    return-void
.end method
