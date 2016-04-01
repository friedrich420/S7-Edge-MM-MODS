.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, PROCESS_STATS_FORMAT:[I

    .line 77
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, PROCESS_FULL_STATS_FORMAT:[I

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, SYSTEM_CPU_FORMAT:[I

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_94

    sput-object v0, LOAD_AVERAGE_FORMAT:[I

    .line 265
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 47
    nop

    :array_2c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 77
    :array_4e
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 112
    :array_80
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 125
    :array_94
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 8
    .param p1, "includeThreads"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array v2, v4, [J

    iput-object v2, p0, mProcessStatsData:[J

    .line 75
    new-array v2, v4, [J

    iput-object v2, p0, mSinglePidStatsData:[J

    .line 109
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, mProcessFullStatsStringData:[Ljava/lang/String;

    .line 110
    new-array v2, v5, [J

    iput-object v2, p0, mProcessFullStatsData:[J

    .line 123
    const/4 v2, 0x7

    new-array v2, v2, [J

    iput-object v2, p0, mSystemCpuData:[J

    .line 131
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, mLoadAverageData:[F

    .line 138
    iput v3, p0, mLoad1:F

    .line 139
    iput v3, p0, mLoad5:F

    .line 140
    iput v3, p0, mLoad15:F

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mProcStats:Ljava/util/ArrayList;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mWorkingProcs:Ljava/util/ArrayList;

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, mFirst:Z

    .line 173
    const/16 v2, 0x1000

    new-array v2, v2, [B

    iput-object v2, p0, mBuffer:[B

    .line 285
    iput-boolean p1, p0, mIncludeThreads:Z

    .line 286
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    .line 287
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, mJiffyMillis:J

    .line 288
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 36
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 402
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 403
    .local v19, "pids":[I
    if-nez v19, :cond_48

    const/4 v10, 0x0

    .line 404
    .local v10, "NP":I
    :goto_b
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 405
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 406
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_11
    if-ge v13, v10, :cond_18

    .line 407
    aget v6, v19, v13

    .line 408
    .local v6, "pid":I
    if-gez v6, :cond_4c

    .line 409
    move v10, v6

    .line 567
    .end local v6    # "pid":I
    :cond_18
    :goto_18
    if-ge v12, v11, :cond_2bd

    .line 569
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 570
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 571
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 572
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 573
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 574
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 575
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 576
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    add-int/lit8 v11, v11, -0x1

    .line 579
    goto :goto_18

    .line 403
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_48
    move-object/from16 v0, v19

    array-length v10, v0

    goto :goto_b

    .line 412
    .restart local v6    # "pid":I
    .restart local v10    # "NP":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_4c
    if-ge v12, v11, :cond_94

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v22, v4

    .line 414
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_58
    if-eqz v22, :cond_16d

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v4, v6, :cond_16d

    .line 416
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 417
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 418
    add-int/lit8 v12, v12, 0x1

    .line 423
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_90

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 426
    .local v26, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStatsData:[J

    move-object/from16 v20, v0

    .line 427
    .local v20, "procStats":[J
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, PROCESS_STATS_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_97

    .line 406
    .end local v20    # "procStats":[J
    .end local v26    # "uptime":J
    :cond_90
    :goto_90
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_11

    .line 412
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_94
    const/16 v22, 0x0

    goto :goto_58

    .line 432
    .restart local v20    # "procStats":[J
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v26    # "uptime":J
    :cond_97
    const/4 v4, 0x0

    aget-wide v16, v20, v4

    .line 433
    .local v16, "minfaults":J
    const/4 v4, 0x1

    aget-wide v14, v20, v4

    .line 434
    .local v14, "majfaults":J
    const/4 v4, 0x2

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, mJiffyMillis:J

    mul-long v28, v4, v8

    .line 435
    .local v28, "utime":J
    const/4 v4, 0x3

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, mJiffyMillis:J

    mul-long v24, v4, v8

    .line 437
    .local v24, "stime":J
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v4, v28, v4

    if-nez v4, :cond_df

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v4, v24, v4

    if-nez v4, :cond_df

    .line 438
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 439
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 440
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 441
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 442
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v4, :cond_90

    .line 443
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_90

    .line 448
    :cond_df
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v4, :cond_ea

    .line 449
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 452
    :cond_ea
    if-gez p2, :cond_114

    .line 453
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_114

    .line 455
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mCurThreadPids:[I

    .line 466
    :cond_114
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v4, v26, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 467
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 468
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v4, v28, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 469
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 470
    move-wide/from16 v0, v28

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 471
    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 472
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 473
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 474
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 475
    move-object/from16 v0, v22

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 476
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_90

    .line 482
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v20    # "procStats":[J
    .end local v24    # "stime":J
    .end local v26    # "uptime":J
    .end local v28    # "utime":J
    :cond_16d
    if-eqz v22, :cond_175

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v4, v6, :cond_294

    .line 484
    :cond_175
    new-instance v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIncludeThreads:Z

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 485
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 486
    add-int/lit8 v12, v12, 0x1

    .line 487
    add-int/lit8 v11, v11, 0x1

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v21, v0

    .line 493
    .local v21, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessFullStatsData:[J

    move-object/from16 v20, v0

    .line 494
    .restart local v20    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 495
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 497
    .local v18, "path":Ljava/lang/String;
    sget-object v4, PROCESS_FULL_STATS_FORMAT:[I

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_243

    .line 503
    const/4 v4, 0x5

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 505
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 506
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 507
    const/4 v4, 0x1

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 508
    const/4 v4, 0x2

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 509
    const/4 v4, 0x3

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, mJiffyMillis:J

    mul-long/2addr v4, v8

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 510
    const/4 v4, 0x4

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, mJiffyMillis:J

    mul-long/2addr v4, v8

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 523
    :goto_1f1
    if-gez p2, :cond_277

    .line 524
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_21b

    .line 526
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mCurThreadPids:[I

    .line 538
    :cond_21b
    :goto_21b
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 539
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 540
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 541
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 542
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 543
    if-nez p3, :cond_90

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_90

    .line 544
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_90

    .line 517
    :cond_243
    const-string v4, "ProcessCpuTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown process pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v4, "<unknown>"

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 519
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 520
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    goto/16 :goto_1f1

    .line 529
    :cond_277
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_21b

    .line 530
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 531
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, onMeasureProcessName(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    goto :goto_21b

    .line 550
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "procStats":[J
    .end local v21    # "procStatsString":[Ljava/lang/String;
    :cond_294
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 551
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 552
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 553
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 554
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 555
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 556
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 557
    add-int/lit8 v11, v11, -0x1

    .line 563
    add-int/lit8 v13, v13, -0x1

    .line 564
    goto/16 :goto_90

    .line 581
    .end local v6    # "pid":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2bd
    return-object v19
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 963
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 964
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 966
    :cond_1a
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    .line 968
    move-object v2, v0

    .line 969
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 970
    .local v1, "i":I
    if-lez v1, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3f

    .line 971
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 974
    .end local v1    # "i":I
    :cond_3f
    if-nez v2, :cond_43

    .line 975
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 978
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_43
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_4f

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 979
    :cond_4f
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 980
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 982
    :cond_59
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .prologue
    .line 788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    if-nez p5, :cond_6

    const/4 p5, 0x1

    .line 790
    :cond_6
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, printRatio(Ljava/io/PrintWriter;JJ)V

    .line 791
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    if-ltz p3, :cond_24

    .line 793
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 794
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    :cond_24
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, printRatio(Ljava/io/PrintWriter;JJ)V

    .line 799
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, printRatio(Ljava/io/PrintWriter;JJ)V

    .line 801
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    if-lez p8, :cond_59

    .line 803
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    move/from16 v0, p8

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, printRatio(Ljava/io/PrintWriter;JJ)V

    .line 805
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    :cond_59
    if-lez p9, :cond_6e

    .line 808
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    move/from16 v0, p9

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, printRatio(Ljava/io/PrintWriter;JJ)V

    .line 810
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    :cond_6e
    if-lez p10, :cond_83

    .line 813
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    move/from16 v0, p10

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, printRatio(Ljava/io/PrintWriter;JJ)V

    .line 815
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    :cond_83
    if-gtz p11, :cond_87

    if-lez p12, :cond_ae

    .line 818
    :cond_87
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    if-lez p11, :cond_9d

    .line 820
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 822
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    :cond_9d
    if-lez p12, :cond_ae

    .line 825
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 827
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    :cond_ae
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 831
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 773
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 774
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 775
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 776
    cmp-long v6, v0, v8

    if-gez v6, :cond_22

    .line 777
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 778
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_22

    .line 779
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 780
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 783
    .end local v2    # "remainder":J
    :cond_22
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 937
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 938
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 940
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_42
    .catchall {:try_start_5 .. :try_end_a} :catchall_4a

    .line 941
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_a
    iget-object v5, p0, mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 942
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 944
    if-lez v3, :cond_31

    .line 946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_1e

    .line 947
    iget-object v5, p0, mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_2e

    .line 951
    :cond_1e
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_26} :catch_58
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_26} :catch_55
    .catchall {:try_start_a .. :try_end_26} :catchall_52

    .line 956
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 959
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2d
    return-object v5

    .line 946
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 956
    .end local v0    # "i":I
    :cond_31
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 959
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_38
    const/4 v5, 0x0

    goto :goto_2d

    .line 953
    :catch_3a
    move-exception v5

    .line 956
    :goto_3b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_38

    .line 954
    :catch_42
    move-exception v5

    .line 956
    :goto_43
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_38

    .line 956
    :catchall_4a
    move-exception v5

    :goto_4b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 956
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_52
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_4b

    .line 954
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_55
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_43

    .line 953
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_58
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_3b
.end method


# virtual methods
.method final buildWorkingProcs()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 657
    iget-boolean v6, p0, mWorkingProcsSorted:Z

    if-nez v6, :cond_65

    .line 658
    iget-object v6, p0, mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 659
    iget-object v6, p0, mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 660
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_5c

    .line 661
    iget-object v6, p0, mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 662
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_59

    .line 663
    iget-object v6, p0, mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_59

    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_59

    .line 665
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 666
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 667
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3c
    if-ge v3, v0, :cond_52

    .line 668
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 669
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 670
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 673
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_52
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 660
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 677
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5c
    iget-object v6, p0, mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 678
    iput-boolean v8, p0, mWorkingProcsSorted:Z

    .line 680
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_65
    return-void
.end method

.method public final countStats()I
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .registers 2

    .prologue
    .line 691
    invoke-virtual {p0}, buildWorkingProcs()V

    .line 692
    iget-object v0, p0, mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 12
    .param p1, "pid"    # I

    .prologue
    .line 589
    iget-object v6, p0, mSinglePidStatsData:[J

    monitor-enter v6

    .line 590
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, mSinglePidStatsData:[J

    .line 592
    .local v1, "statsData":[J
    sget-object v4, PROCESS_STATS_FORMAT:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 594
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v7, 0x3

    aget-wide v8, v1, v7

    add-long v2, v4, v8

    .line 596
    .local v2, "time":J
    iget-wide v4, p0, mJiffyMillis:J

    mul-long/2addr v4, v2

    monitor-exit v6

    .line 598
    .end local v2    # "time":J
    :goto_34
    return-wide v4

    :cond_35
    const-wide/16 v4, 0x0

    monitor-exit v6

    goto :goto_34

    .line 599
    .end local v0    # "statFile":Ljava/lang/String;
    .end local v1    # "statsData":[J
    :catchall_39
    move-exception v4

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v4
.end method

.method public final getLastIdleTime()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .prologue
    .line 620
    iget v0, p0, mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .prologue
    .line 627
    iget v0, p0, mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .prologue
    .line 634
    iget v0, p0, mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .prologue
    .line 613
    iget v0, p0, mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 687
    iget-object v0, p0, mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .registers 4

    .prologue
    .line 649
    iget v1, p0, mRelUserTime:I

    iget v2, p0, mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, mRelIdleTime:I

    add-int v0, v1, v2

    .line 650
    .local v0, "denom":I
    if-gtz v0, :cond_10

    .line 651
    const/4 v1, 0x0

    .line 653
    :goto_f
    return v1

    :cond_10
    iget v1, p0, mRelUserTime:I

    iget v2, p0, mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_f
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 696
    iget-object v0, p0, mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .registers 2

    .prologue
    .line 645
    iget-boolean v0, p0, mRelStatsAreGood:Z

    return v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirst:Z

    .line 300
    invoke-virtual {p0}, update()V

    .line 301
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 291
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public printCpuCoreInfo()Ljava/lang/String;
    .registers 20

    .prologue
    .line 837
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    .line 838
    .local v10, "sw":Ljava/io/StringWriter;
    new-instance v9, Lcom/android/internal/util/FastPrintWriter;

    const/4 v13, 0x0

    const/16 v14, 0x80

    invoke-direct {v9, v10, v13, v14}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 840
    .local v9, "pw":Ljava/io/PrintWriter;
    const/4 v13, 0x1

    new-array v5, v13, [I

    const/4 v13, 0x0

    const/16 v14, 0x1020

    aput v14, v5, v13

    .line 844
    .local v5, "SINGLE_STRING_FORMAT":[I
    const/4 v13, 0x1

    new-array v4, v13, [I

    const/4 v13, 0x0

    const/16 v14, 0x2020

    aput v14, v4, v13

    .line 848
    .local v4, "SINGLE_LONG_FORMAT":[I
    const/4 v13, 0x4

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/sys/devices/system/cpu/offline"

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const-string v14, "/sys/devices/system/cpu/online"

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const-string v14, "/sys/devices/system/cpu/cpu0/rq-stats/cpu_normalized_load"

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const-string v14, "/sys/devices/system/cpu/cpu0/rq-stats/run_queue_avg"

    aput-object v14, v2, v13

    .line 855
    .local v2, "CPUINFO_PATH":[Ljava/lang/String;
    const-string v3, "/sys/devices/system/cpu/possible"

    .line 857
    .local v3, "POSSIBLE_PATH":Ljava/lang/String;
    const/4 v13, 0x3

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string v14, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"

    aput-object v14, v1, v13

    const/4 v13, 0x2

    const-string v14, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_max_freq"

    aput-object v14, v1, v13

    .line 863
    .local v1, "CPUINFO_EACH_PATH":[Ljava/lang/String;
    const/4 v13, 0x3

    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/sys/class/sec/sec-thermistor/temperature"

    aput-object v14, v0, v13

    const/4 v13, 0x1

    const-string v14, "/sys/devices/platform/sec-thermistor/temperature"

    aput-object v14, v0, v13

    const/4 v13, 0x2

    const-string v14, "/sys/class/sec/sec-ap-thermistor/temperature"

    aput-object v14, v0, v13

    .line 869
    .local v0, "AP_THERMISTOR_PATH":[Ljava/lang/String;
    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    .line 870
    .local v11, "temp":[Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [J

    .line 871
    .local v12, "temp_l":[J
    const/4 v6, 0x0

    .line 873
    .local v6, "core_num":I
    const-string v13, "------ Current CPU Core Info ------"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_67
    array-length v13, v2

    if-ge v7, v13, :cond_a0

    .line 876
    const-string v13, "- "

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    aget-object v13, v2, v7

    aget-object v14, v2, v7

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    const-string v13, " : "

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    aget-object v13, v2, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v5, v11, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_9a

    .line 881
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    :goto_97
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 883
    :cond_9a
    const-string v13, "-"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_97

    .line 887
    :cond_a0
    const/4 v7, 0x0

    :goto_a1
    array-length v13, v0

    if-ge v7, v13, :cond_d3

    .line 888
    aget-object v13, v0, v7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v4, v14, v12, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_115

    .line 889
    const-string v13, "- AP Temp = %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-wide v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    :cond_d3
    const-string v13, "/sys/devices/system/cpu/possible"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v5, v11, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_f5

    .line 896
    const/4 v13, 0x0

    aget-object v13, v11, v13

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 899
    :cond_f5
    if-lez v6, :cond_19c

    .line 900
    const-string v13, "                  "

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    const/4 v7, 0x0

    :goto_fd
    if-gt v7, v6, :cond_118

    .line 902
    const-string v13, "%12d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    add-int/lit8 v7, v7, 0x1

    goto :goto_fd

    .line 887
    :cond_115
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 904
    :cond_118
    const-string v13, "\n------------------"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    const/4 v7, 0x0

    :goto_11e
    if-gt v7, v6, :cond_128

    .line 906
    const-string v13, "------------"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    add-int/lit8 v7, v7, 0x1

    goto :goto_11e

    .line 909
    :cond_128
    const/4 v7, 0x0

    :goto_129
    array-length v13, v1

    if-ge v7, v13, :cond_189

    .line 910
    const-string v13, "\n%-18s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v1, v7

    aget-object v17, v1, v7

    const/16 v18, 0x2f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_14c
    if-gt v8, v6, :cond_186

    .line 913
    aget-object v13, v1, v7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v5, v11, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_180

    .line 914
    const-string v13, "%12s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    :goto_17d
    add-int/lit8 v8, v8, 0x1

    goto :goto_14c

    .line 916
    :cond_180
    const-string v13, "           -"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_17d

    .line 909
    :cond_186
    add-int/lit8 v7, v7, 0x1

    goto :goto_129

    .line 921
    .end local v8    # "j":I
    :cond_189
    const-string v13, "\n------------------"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    const/4 v7, 0x0

    :goto_18f
    if-gt v7, v6, :cond_199

    .line 923
    const-string v13, "------------"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    add-int/lit8 v7, v7, 0x1

    goto :goto_18f

    .line 925
    :cond_199
    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 928
    :cond_19c
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 929
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 5

    .prologue
    .line 700
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 701
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 702
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    iget v2, p0, mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 704
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    iget v2, p0, mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 706
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget v2, p0, mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 708
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 709
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 32
    .param p1, "now"    # J

    .prologue
    .line 713
    invoke-virtual/range {p0 .. p0}, buildWorkingProcs()V

    .line 715
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 716
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 718
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-wide v4, v0, mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_12e

    .line 720
    move-object/from16 v0, p0

    iget-wide v4, v0, mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 721
    const-string/jumbo v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 723
    const-string/jumbo v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    :goto_3d
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, mLastSampleTime:J

    sub-long v24, v4, v6

    .line 732
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, mLastSampleRealTime:J

    sub-long v22, v4, v6

    .line 733
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_14e

    const-wide/16 v4, 0x64

    mul-long v4, v4, v24

    div-long v20, v4, v22

    .line 734
    .local v20, "percAwake":J
    :goto_5d
    const-wide/16 v4, 0x64

    cmp-long v2, v20, v4

    if-eqz v2, :cond_72

    .line 735
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 737
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    :cond_72
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, mRelIdleTime:I

    add-int v27, v2, v4

    .line 747
    .local v27, "totalTime":I
    move-object/from16 v0, p0

    iget-object v2, v0, mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 748
    .local v16, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9f
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_170

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 750
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_152

    const-string v4, " +"

    :goto_b9
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v8

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 753
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v2, :cond_16c

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_16c

    .line 754
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 755
    .local v15, "M":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_f4
    move/from16 v0, v18

    if-ge v0, v15, :cond_16c

    .line 756
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 757
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_160

    const-string v4, "   +"

    :goto_10c
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v8

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 755
    add-int/lit8 v18, v18, 0x1

    goto :goto_f4

    .line 725
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_12e
    move-object/from16 v0, p0

    iget-wide v4, v0, mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 726
    const-string/jumbo v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 728
    const-string/jumbo v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 733
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_14e
    const-wide/16 v20, 0x0

    goto/16 :goto_5d

    .line 750
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "percAwake":J
    .restart local v27    # "totalTime":I
    :cond_152
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_15c

    const-string v4, " -"

    goto/16 :goto_b9

    :cond_15c
    const-string v4, "  "

    goto/16 :goto_b9

    .line 757
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_160
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_169

    const-string v4, "   -"

    goto :goto_10c

    :cond_169
    const-string v4, "    "

    goto :goto_10c

    .line 748
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_16c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9f

    .line 765
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_170
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 768
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .registers 33

    .prologue
    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 307
    .local v22, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 309
    .local v20, "nowRealtime":J
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemCpuData:[J

    move-object/from16 v25, v0

    .line 310
    .local v25, "sysCpu":[J
    const-string v4, "/proc/stat"

    sget-object v5, SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 313
    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, mJiffyMillis:J

    mul-long v30, v4, v6

    .line 315
    .local v30, "usertime":J
    const/4 v4, 0x2

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, mJiffyMillis:J

    mul-long v28, v4, v6

    .line 317
    .local v28, "systemtime":J
    const/4 v4, 0x3

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, mJiffyMillis:J

    mul-long v10, v4, v6

    .line 319
    .local v10, "idletime":J
    const/4 v4, 0x4

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, mJiffyMillis:J

    mul-long v12, v4, v6

    .line 320
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, mJiffyMillis:J

    mul-long v14, v4, v6

    .line 321
    .local v14, "irqtime":J
    const/4 v4, 0x6

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, mJiffyMillis:J

    mul-long v26, v4, v6

    .line 328
    .local v26, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, mBaseUserTime:J

    sub-long v4, v30, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, mRelUserTime:I

    .line 329
    move-object/from16 v0, p0

    iget-wide v4, v0, mBaseSystemTime:J

    sub-long v4, v28, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, mRelSystemTime:I

    .line 330
    move-object/from16 v0, p0

    iget-wide v4, v0, mBaseIoWaitTime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, mRelIoWaitTime:I

    .line 331
    move-object/from16 v0, p0

    iget-wide v4, v0, mBaseIrqTime:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, mRelIrqTime:I

    .line 332
    move-object/from16 v0, p0

    iget-wide v4, v0, mBaseSoftIrqTime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, mRelSoftIrqTime:I

    .line 333
    move-object/from16 v0, p0

    iget-wide v4, v0, mBaseIdleTime:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, mRelIdleTime:I

    .line 334
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mRelStatsAreGood:Z

    .line 346
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, mBaseUserTime:J

    .line 347
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mBaseSystemTime:J

    .line 348
    move-object/from16 v0, p0

    iput-wide v12, v0, mBaseIoWaitTime:J

    .line 349
    move-object/from16 v0, p0

    iput-wide v14, v0, mBaseIrqTime:J

    .line 350
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, mBaseSoftIrqTime:J

    .line 351
    move-object/from16 v0, p0

    iput-wide v10, v0, mBaseIdleTime:J

    .line 366
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v26    # "softirqtime":J
    .end local v28    # "systemtime":J
    .end local v30    # "usertime":J
    :cond_bb
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, mLastSampleTime:J

    .line 367
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentSampleTime:J

    .line 368
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, mLastSampleRealTime:J

    .line 369
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentSampleRealTime:J

    .line 371
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v24

    .line 373
    .local v24, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_db
    const-string v5, "/proc"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, mFirst:Z

    move-object/from16 v0, p0

    iget-object v8, v0, mCurPids:[I

    move-object/from16 v0, p0

    iget-object v9, v0, mProcStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mCurPids:[I
    :try_end_f4
    .catchall {:try_start_db .. :try_end_f4} :catchall_154

    .line 375
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, mLoadAverageData:[F

    move-object/from16 v19, v0

    .line 379
    .local v19, "loadAverages":[F
    const-string v4, "/proc/loadavg"

    sget-object v5, LOAD_AVERAGE_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 381
    const/4 v4, 0x0

    aget v16, v19, v4

    .line 382
    .local v16, "load1":F
    const/4 v4, 0x1

    aget v18, v19, v4

    .line 383
    .local v18, "load5":F
    const/4 v4, 0x2

    aget v17, v19, v4

    .line 384
    .local v17, "load15":F
    move-object/from16 v0, p0

    iget v4, v0, mLoad1:F

    cmpl-float v4, v16, v4

    if-nez v4, :cond_12c

    move-object/from16 v0, p0

    iget v4, v0, mLoad5:F

    cmpl-float v4, v18, v4

    if-nez v4, :cond_12c

    move-object/from16 v0, p0

    iget v4, v0, mLoad15:F

    cmpl-float v4, v17, v4

    if-eqz v4, :cond_149

    .line 385
    :cond_12c
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, mLoad1:F

    .line 386
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLoad5:F

    .line 387
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLoad15:F

    .line 388
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, onLoadChanged(FFF)V

    .line 395
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_149
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWorkingProcsSorted:Z

    .line 396
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mFirst:Z

    .line 397
    return-void

    .line 375
    .end local v19    # "loadAverages":[F
    :catchall_154
    move-exception v4

    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method
