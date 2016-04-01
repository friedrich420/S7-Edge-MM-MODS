.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3090
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3093
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_246

    .line 3201
    :cond_7
    :goto_7
    return-void

    .line 3095
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3096
    .local v34, "start":J
    const/16 v23, 0x0

    .line 3097
    .local v23, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3098
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v2, :cond_29

    .line 3099
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 3100
    new-instance v28, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .end local v23    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v28, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v23, v28

    .line 3102
    .end local v28    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v23    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_6d

    .line 3103
    if-eqz v23, :cond_df

    .line 3104
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 3105
    const-wide/16 v12, 0x0

    .line 3106
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 3107
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v14

    .line 3108
    .local v14, "N":I
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_48
    move/from16 v0, v22

    if-ge v0, v14, :cond_9c

    .line 3109
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v32

    .line 3110
    .local v32, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_6a

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_66
    .catchall {:try_start_3c .. :try_end_66} :catchall_8c

    const/16 v8, 0x2710

    if-lt v2, v8, :cond_70

    .line 3108
    :cond_6a
    :goto_6a
    add-int/lit8 v22, v22, 0x1

    goto :goto_48

    .line 3102
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v22    # "j":I
    .end local v32    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2

    .line 3114
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v22    # "j":I
    .restart local v32    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_8c

    .line 3115
    :try_start_77
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v32

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_8f

    .line 3117
    monitor-exit v8

    goto :goto_6a

    .line 3119
    :catchall_89
    move-exception v2

    monitor-exit v8
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v2

    .line 3122
    .end local v14    # "N":I
    .end local v22    # "j":I
    .end local v32    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_8c
    move-exception v2

    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8c

    throw v2

    .line 3119
    .restart local v14    # "N":I
    .restart local v22    # "j":I
    .restart local v32    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8f
    :try_start_8f
    monitor-exit v8
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_89

    .line 3120
    :try_start_90
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v8

    add-long/2addr v12, v8

    goto :goto_6a

    .line 3122
    .end local v32    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_90 .. :try_end_9d} :catchall_8c

    .line 3123
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 3127
    :try_start_a7
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v16

    .line 3128
    .local v16, "cachedKb":J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v18

    .line 3129
    .local v18, "freeKb":J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v40

    .line 3130
    .local v40, "zramKb":J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v24

    .line 3131
    .local v24, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v2, v2, v16

    const-wide/16 v8, 0x400

    mul-long v4, v18, v8

    const-wide/16 v8, 0x400

    mul-long v6, v40, v8

    const-wide/16 v8, 0x400

    mul-long v8, v8, v24

    const-wide/16 v10, 0x400

    mul-long/2addr v10, v12

    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 3133
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v40

    move-wide/from16 v10, v24

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 3135
    monitor-exit v39
    :try_end_df
    .catchall {:try_start_a7 .. :try_end_df} :catchall_10e

    .line 3138
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v16    # "cachedKb":J
    .end local v18    # "freeKb":J
    .end local v22    # "j":I
    .end local v24    # "kernelKb":J
    .end local v40    # "zramKb":J
    :cond_df
    const/16 v29, 0x0

    .line 3139
    .local v29, "num":I
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v36, v0

    .line 3145
    .local v36, "tmp":[J
    :cond_e6
    :goto_e6
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3146
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_143

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v2, :cond_111

    .line 3150
    :goto_ff
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3151
    monitor-exit v3

    goto/16 :goto_7

    .line 3164
    :catchall_10b
    move-exception v2

    monitor-exit v3
    :try_end_10d
    .catchall {:try_start_eb .. :try_end_10d} :catchall_10b

    throw v2

    .line 3135
    .end local v29    # "num":I
    .end local v36    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v22    # "j":I
    :catchall_10e
    move-exception v2

    :try_start_10f
    monitor-exit v39
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw v2

    .line 3147
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v22    # "j":I
    .restart local v29    # "num":I
    .restart local v36    # "tmp":[J
    :cond_111
    :try_start_111
    const-string v2, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collected PSS of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " processes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v34

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 3153
    :cond_143
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3154
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 3155
    .local v5, "procState":I
    iget-wide v0, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v26, v0

    .line 3156
    .local v26, "lastPssTime":J
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1b1

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v5, v2, :cond_1b1

    const-wide/16 v8, 0x3e8

    add-long v8, v8, v26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-gez v2, :cond_1b1

    .line 3159
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v30, v0

    .line 3164
    .local v30, "pid":I
    :goto_16e
    monitor-exit v3
    :try_end_16f
    .catchall {:try_start_111 .. :try_end_16f} :catchall_10b

    .line 3165
    if-eqz v4, :cond_e6

    .line 3166
    const/4 v2, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v6

    .line 3167
    .local v6, "pss":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 3168
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1ab

    :try_start_187
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1ab

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v5, :cond_1ab

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v30

    if-ne v2, v0, :cond_1ab

    iget-wide v2, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v2, v26

    if-nez v2, :cond_1ab

    .line 3170
    add-int/lit8 v29, v29, 0x1

    .line 3171
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    aget-wide v8, v36, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V

    .line 3174
    :cond_1ab
    monitor-exit v39

    goto/16 :goto_e6

    :catchall_1ae
    move-exception v2

    monitor-exit v39
    :try_end_1b0
    .catchall {:try_start_187 .. :try_end_1b0} :catchall_1ae

    throw v2

    .line 3161
    .end local v6    # "pss":J
    .end local v30    # "pid":I
    :cond_1b1
    const/4 v4, 0x0

    .line 3162
    const/16 v30, 0x0

    .restart local v30    # "pid":I
    goto :goto_16e

    .line 3180
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "procState":I
    .end local v23    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v26    # "lastPssTime":J
    .end local v29    # "num":I
    .end local v30    # "pid":I
    .end local v34    # "start":J
    .end local v36    # "tmp":[J
    :pswitch_1b5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v38

    .line 3181
    .local v38, "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v33

    .line 3182
    .local v33, "system":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v20

    .line 3183
    .local v20, "iowait":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v21

    .line 3184
    .local v21, "irq":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v31

    .line 3185
    .local v31, "softIrq":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v15

    .line 3187
    .local v15, "idle":I
    add-int v2, v38, v33

    add-int v2, v2, v20

    add-int v2, v2, v21

    add-int v2, v2, v31

    add-int v37, v2, v15

    .line 3188
    .local v37, "total":I
    if-nez v37, :cond_1ff

    const/16 v37, 0x1

    .line 3189
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    mul-int/lit8 v3, v20, 0x64

    div-int v3, v3, v37

    # setter for: Lcom/android/server/am/ActivityManagerService;->mIOWaitPercentage:I
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerService;->access$1802(Lcom/android/server/am/ActivityManagerService;I)I

    .line 3190
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->SNN_CPU_COLLECT_DATA_INTERVAL:J
    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 3194
    .end local v15    # "idle":I
    .end local v20    # "iowait":I
    .end local v21    # "irq":I
    .end local v31    # "softIrq":I
    .end local v33    # "system":I
    .end local v37    # "total":I
    .end local v38    # "user":I
    :pswitch_21e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->SNN_PRIORITY_ENABLED:Z

    if-eqz v2, :cond_7

    .line 3195
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPrioritiseProcess:Lcom/android/server/am/PrioritizeLRUProcess;

    invoke-virtual {v2}, Lcom/android/server/am/PrioritizeLRUProcess;->dumpDataToDisk()V

    .line 3196
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->SNN_CPU_COLLECT_DATA_INTERVAL:J
    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v8

    const-wide/16 v10, 0xc

    mul-long/2addr v8, v10

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 3093
    nop

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1b5
        :pswitch_21e
    .end packed-switch
.end method
