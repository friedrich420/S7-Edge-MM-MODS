.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    const-wide/32 v0, 0x1b7740

    sput-wide v0, WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 5
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/IProcessStats$Stub;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, mLastMemOnlyState:I

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mPendingWriteLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    .line 83
    iput-object p2, p0, mBaseDir:Ljava/io/File;

    .line 84
    iget-object v0, p0, mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    new-instance v0, Lcom/android/internal/app/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v0, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    .line 86
    invoke-direct {p0}, updateFile()V

    .line 87
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    .prologue
    .line 621
    const-wide/16 v4, 0x3c

    mul-long/2addr v4, p2

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 623
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_1b

    .line 624
    const-string v4, "Unable to build stats!"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    :goto_1a
    return-void

    .line 627
    :cond_1b
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 628
    .local v3, "stats":Lcom/android/internal/app/ProcessStats;
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v11, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 629
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 630
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v4, :cond_38

    .line 631
    const-string v4, "Failure reading: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 634
    :cond_38
    if-eqz p7, :cond_40

    .line 635
    move-object/from16 v0, p6

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1a

    .line 637
    :cond_40
    if-nez p8, :cond_44

    if-eqz p9, :cond_56

    .line 638
    :cond_44
    if-nez p9, :cond_54

    const/4 v8, 0x1

    :goto_47
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_1a

    :cond_54
    const/4 v8, 0x0

    goto :goto_47

    :cond_56
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v8, p11

    .line 640
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1a
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 646
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string v0, "    [--start-testing] [--stop-testing] [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 58
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 698
    .local v12, "now":J
    const/16 v46, 0x0

    .line 699
    .local v46, "isCheckin":Z
    const/16 v23, 0x0

    .line 700
    .local v23, "isCompact":Z
    const/16 v47, 0x0

    .line 701
    .local v47, "isCsv":Z
    const/16 v38, 0x0

    .line 702
    .local v38, "currentOnly":Z
    const/16 v24, 0x0

    .line 703
    .local v24, "dumpDetails":Z
    const/16 v25, 0x0

    .line 704
    .local v25, "dumpFullDetails":Z
    const/16 v26, 0x0

    .line 705
    .local v26, "dumpAll":Z
    const/16 v50, 0x0

    .line 706
    .local v50, "quit":Z
    const/4 v2, 0x0

    .line 707
    .local v2, "aggregateHours":I
    const/16 v48, 0x0

    .line 708
    .local v48, "lastIndex":I
    const/16 v49, 0x2

    .line 709
    .local v49, "maxNum":I
    const/16 v27, 0x0

    .line 710
    .local v27, "activeOnly":Z
    const/4 v14, 0x0

    .line 711
    .local v14, "reqPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 712
    .local v6, "csvSepScreenStats":Z
    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_7cc

    .line 713
    .local v7, "csvScreenStats":[I
    const/4 v8, 0x0

    .line 714
    .local v8, "csvSepMemStats":Z
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v9, v3

    .line 715
    .local v9, "csvMemStats":[I
    const/4 v10, 0x1

    .line 716
    .local v10, "csvSepProcStats":Z
    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 717
    .local v11, "csvProcStats":[I
    if-eqz p3, :cond_43e

    .line 718
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_32
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-ge v0, v3, :cond_43e

    .line 719
    aget-object v28, p3, v45

    .line 720
    .local v28, "arg":Ljava/lang/String;
    const-string v3, "--checkin"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 721
    const/16 v46, 0x1

    .line 718
    :goto_47
    add-int/lit8 v45, v45, 0x1

    goto :goto_32

    .line 722
    :cond_4a
    const-string v3, "-c"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 723
    const/16 v23, 0x1

    goto :goto_47

    .line 724
    :cond_57
    const-string v3, "--csv"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 725
    const/16 v47, 0x1

    goto :goto_47

    .line 726
    :cond_64
    const-string v3, "--csv-screen"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 727
    add-int/lit8 v45, v45, 0x1

    .line 728
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_82

    .line 729
    const-string v3, "Error: argument required for --csv-screen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    .line 1087
    .end local v28    # "arg":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_81
    :goto_81
    return-void

    .line 733
    .restart local v28    # "arg":Ljava/lang/String;
    .restart local v45    # "i":I
    :cond_82
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v51, v0

    .line 734
    .local v51, "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 735
    .local v40, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, p3, v45

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    .line 737
    if-nez v7, :cond_c6

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_81

    .line 742
    :cond_c6
    const/4 v3, 0x0

    aget-boolean v6, v51, v3

    .line 743
    goto/16 :goto_47

    .end local v40    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_cb
    const-string v3, "--csv-mem"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 744
    add-int/lit8 v45, v45, 0x1

    .line 745
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_e9

    .line 746
    const-string v3, "Error: argument required for --csv-mem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_81

    .line 750
    :cond_e9
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v51, v0

    .line 751
    .restart local v51    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 752
    .restart local v40    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v45

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v9

    .line 753
    if-nez v9, :cond_12e

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 758
    :cond_12e
    const/4 v3, 0x0

    aget-boolean v8, v51, v3

    .line 759
    goto/16 :goto_47

    .end local v40    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_133
    const-string v3, "--csv-proc"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 760
    add-int/lit8 v45, v45, 0x1

    .line 761
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_152

    .line 762
    const-string v3, "Error: argument required for --csv-proc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 766
    :cond_152
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v51, v0

    .line 767
    .restart local v51    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 768
    .restart local v40    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v45

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    .line 769
    if-nez v11, :cond_197

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 774
    :cond_197
    const/4 v3, 0x0

    aget-boolean v10, v51, v3

    .line 775
    goto/16 :goto_47

    .end local v40    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_19c
    const-string v3, "--details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 776
    const/16 v24, 0x1

    goto/16 :goto_47

    .line 777
    :cond_1aa
    const-string v3, "--full-details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 778
    const/16 v25, 0x1

    goto/16 :goto_47

    .line 779
    :cond_1b8
    const-string v3, "--hours"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    .line 780
    add-int/lit8 v45, v45, 0x1

    .line 781
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_1d7

    .line 782
    const-string v3, "Error: argument required for --hours"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 787
    :cond_1d7
    :try_start_1d7
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1d7 .. :try_end_1dc} :catch_1df

    move-result v2

    goto/16 :goto_47

    .line 788
    :catch_1df
    move-exception v39

    .line 789
    .local v39, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --hours argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 793
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_1ff
    const-string v3, "--last"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_246

    .line 794
    add-int/lit8 v45, v45, 0x1

    .line 795
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_21e

    .line 796
    const-string v3, "Error: argument required for --last"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 801
    :cond_21e
    :try_start_21e
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_223
    .catch Ljava/lang/NumberFormatException; {:try_start_21e .. :try_end_223} :catch_226

    move-result v48

    goto/16 :goto_47

    .line 802
    :catch_226
    move-exception v39

    .line 803
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --last argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 807
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_246
    const-string v3, "--max"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28d

    .line 808
    add-int/lit8 v45, v45, 0x1

    .line 809
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_265

    .line 810
    const-string v3, "Error: argument required for --max"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 815
    :cond_265
    :try_start_265
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26a
    .catch Ljava/lang/NumberFormatException; {:try_start_265 .. :try_end_26a} :catch_26d

    move-result v49

    goto/16 :goto_47

    .line 816
    :catch_26d
    move-exception v39

    .line 817
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --max argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 821
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_28d
    const-string v3, "--active"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29d

    .line 822
    const/16 v27, 0x1

    .line 823
    const/16 v38, 0x1

    goto/16 :goto_47

    .line 824
    :cond_29d
    const-string v3, "--current"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ab

    .line 825
    const/16 v38, 0x1

    goto/16 :goto_47

    .line 826
    :cond_2ab
    const-string v3, "--commit"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2da

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 828
    :try_start_2ba
    move-object/from16 v0, p0

    iget-object v3, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 829
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, writeStateLocked(ZZ)V

    .line 830
    const-string v3, "Process stats committed."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    const/16 v50, 0x1

    .line 832
    monitor-exit v4

    goto/16 :goto_47

    :catchall_2d7
    move-exception v3

    monitor-exit v4
    :try_end_2d9
    .catchall {:try_start_2ba .. :try_end_2d9} :catchall_2d7

    throw v3

    .line 833
    :cond_2da
    const-string v3, "--reset"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ff

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 835
    :try_start_2e9
    move-object/from16 v0, p0

    iget-object v3, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 836
    const-string v3, "Process stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const/16 v50, 0x1

    .line 838
    monitor-exit v4

    goto/16 :goto_47

    :catchall_2fc
    move-exception v3

    monitor-exit v4
    :try_end_2fe
    .catchall {:try_start_2e9 .. :try_end_2fe} :catchall_2fc

    throw v3

    .line 839
    :cond_2ff
    const-string v3, "--clear"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_351

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 841
    :try_start_30e
    move-object/from16 v0, p0

    iget-object v3, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 842
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v5, v1}, getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 843
    .local v44, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v44, :cond_342

    .line 844
    const/16 v41, 0x0

    .local v41, "fi":I
    :goto_325
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v41

    if-ge v0, v3, :cond_342

    .line 845
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 844
    add-int/lit8 v41, v41, 0x1

    goto :goto_325

    .line 848
    .end local v41    # "fi":I
    :cond_342
    const-string v3, "All process stats cleared."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    const/16 v50, 0x1

    .line 850
    monitor-exit v4

    goto/16 :goto_47

    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_34e
    move-exception v3

    monitor-exit v4
    :try_end_350
    .catchall {:try_start_30e .. :try_end_350} :catchall_34e

    throw v3

    .line 851
    :cond_351
    const-string v3, "--write"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_372

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 853
    :try_start_360
    invoke-virtual/range {p0 .. p0}, writeStateSyncLocked()V

    .line 854
    const-string v3, "Process stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    const/16 v50, 0x1

    .line 856
    monitor-exit v4

    goto/16 :goto_47

    :catchall_36f
    move-exception v3

    monitor-exit v4
    :try_end_371
    .catchall {:try_start_360 .. :try_end_371} :catchall_36f

    throw v3

    .line 857
    :cond_372
    const-string v3, "--read"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39d

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 859
    :try_start_381
    move-object/from16 v0, p0

    iget-object v3, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget-object v5, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 860
    const-string v3, "Process stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    const/16 v50, 0x1

    .line 862
    monitor-exit v4

    goto/16 :goto_47

    :catchall_39a
    move-exception v3

    monitor-exit v4
    :try_end_39c
    .catchall {:try_start_381 .. :try_end_39c} :catchall_39a

    throw v3

    .line 863
    :cond_39d
    const-string v3, "--start-testing"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c3

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 865
    :try_start_3ac
    move-object/from16 v0, p0

    iget-object v3, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 866
    const-string v3, "Started high frequency sampling."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const/16 v50, 0x1

    .line 868
    monitor-exit v4

    goto/16 :goto_47

    :catchall_3c0
    move-exception v3

    monitor-exit v4
    :try_end_3c2
    .catchall {:try_start_3ac .. :try_end_3c2} :catchall_3c0

    throw v3

    .line 869
    :cond_3c3
    const-string v3, "--stop-testing"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e9

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 871
    :try_start_3d2
    move-object/from16 v0, p0

    iget-object v3, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 872
    const-string v3, "Stopped high frequency sampling."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const/16 v50, 0x1

    .line 874
    monitor-exit v4

    goto/16 :goto_47

    :catchall_3e6
    move-exception v3

    monitor-exit v4
    :try_end_3e8
    .catchall {:try_start_3d2 .. :try_end_3e8} :catchall_3e6

    throw v3

    .line 875
    :cond_3e9
    const-string v3, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f8

    .line 876
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 878
    :cond_3f8
    const-string v3, "-a"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_408

    .line 879
    const/16 v24, 0x1

    .line 880
    const/16 v26, 0x1

    goto/16 :goto_47

    .line 881
    :cond_408
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_438

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_438

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    invoke-static/range {p2 .. p2}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 887
    :cond_438
    move-object/from16 v14, v28

    .line 892
    const/16 v24, 0x1

    goto/16 :goto_47

    .line 897
    .end local v28    # "arg":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_43e
    if-nez v50, :cond_81

    .line 901
    if-eqz v47, :cond_4b3

    .line 902
    const-string v3, "Processes running summed over"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    if-nez v6, :cond_463

    .line 904
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_44d
    array-length v3, v7

    move/from16 v0, v45

    if-ge v0, v3, :cond_463

    .line 905
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    aget v3, v7, v45

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 904
    add-int/lit8 v45, v45, 0x1

    goto :goto_44d

    .line 909
    .end local v45    # "i":I
    :cond_463
    if-nez v8, :cond_47d

    .line 910
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_467
    array-length v3, v9

    move/from16 v0, v45

    if-ge v0, v3, :cond_47d

    .line 911
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    aget v3, v9, v45

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 910
    add-int/lit8 v45, v45, 0x1

    goto :goto_467

    .line 915
    .end local v45    # "i":I
    :cond_47d
    if-nez v10, :cond_49b

    .line 916
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_481
    array-length v3, v11

    move/from16 v0, v45

    if-ge v0, v3, :cond_49b

    .line 917
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 918
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v4, v11, v45

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    add-int/lit8 v45, v45, 0x1

    goto :goto_481

    .line 921
    .end local v45    # "i":I
    :cond_49b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 923
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    :try_start_4aa
    invoke-virtual/range {v3 .. v14}, dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 943
    monitor-exit v16

    goto/16 :goto_81

    :catchall_4b0
    move-exception v3

    monitor-exit v16
    :try_end_4b2
    .catchall {:try_start_4aa .. :try_end_4b2} :catchall_4b0

    throw v3

    .line 945
    :cond_4b3
    if-eqz v2, :cond_4d8

    .line 946
    const-string v3, "AGGREGATED OVER LAST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto/16 :goto_81

    .line 950
    :cond_4d8
    if-lez v48, :cond_5e8

    .line 951
    const-string v3, "LAST STATS AT INDEX "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 953
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v48

    if-lt v0, v3, :cond_519

    .line 954
    const-string v3, "Only have "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " data sets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 957
    :cond_519
    new-instance v42, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 958
    .local v42, "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 959
    .local v15, "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 960
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_572

    .line 961
    if-nez v46, :cond_544

    if-eqz v23, :cond_54c

    :cond_544
    const-string/jumbo v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    :cond_54c
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 966
    :cond_572
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 967
    .local v43, "fileStr":Ljava/lang/String;
    const-string v3, ".ci"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 968
    .local v37, "checkedIn":Z
    if-nez v46, :cond_586

    if-eqz v23, :cond_58d

    .line 970
    :cond_586
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 972
    :cond_58d
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    if-eqz v37, :cond_5a4

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    :cond_5a4
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    if-nez v24, :cond_5af

    if-eqz v25, :cond_5db

    .line 977
    :cond_5af
    if-nez v25, :cond_5d8

    const/16 v20, 0x1

    :goto_5b3
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 979
    if-eqz v26, :cond_81

    .line 980
    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_81

    .line 977
    :cond_5d8
    const/16 v20, 0x0

    goto :goto_5b3

    :cond_5db
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 983
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto/16 :goto_81

    .line 989
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5e8
    const/16 v52, 0x0

    .line 990
    .local v52, "sepNeeded":Z
    if-nez v26, :cond_5ee

    if-eqz v46, :cond_72c

    .line 991
    :cond_5ee
    move-object/from16 v0, p0

    iget-object v3, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 993
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v46, :cond_674

    const/4 v3, 0x1

    :goto_5fa
    :try_start_5fa
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 994
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v44, :cond_725

    .line 995
    if-eqz v46, :cond_676

    const/16 v53, 0x0

    .line 996
    .local v53, "start":I
    :goto_606
    if-gez v53, :cond_60a

    .line 997
    const/16 v53, 0x0

    .line 999
    :cond_60a
    move/from16 v45, v53

    .restart local v45    # "i":I
    :goto_60c
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I
    :try_end_60f
    .catchall {:try_start_5fa .. :try_end_60f} :catchall_6d7

    move-result v3

    move/from16 v0, v45

    if-ge v0, v3, :cond_725

    .line 1002
    :try_start_614
    new-instance v42, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1003
    .restart local v42    # "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 1004
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1005
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_67d

    .line 1006
    if-nez v46, :cond_63b

    if-eqz v23, :cond_643

    :cond_63b
    const-string/jumbo v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    :cond_643
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_671
    .catch Ljava/lang/Throwable; {:try_start_614 .. :try_end_671} :catch_6bc
    .catchall {:try_start_614 .. :try_end_671} :catchall_6d7

    .line 999
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v42    # "file":Landroid/util/AtomicFile;
    :cond_671
    :goto_671
    add-int/lit8 v45, v45, 0x1

    goto :goto_60c

    .line 993
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "i":I
    .end local v53    # "start":I
    :cond_674
    const/4 v3, 0x0

    goto :goto_5fa

    .line 995
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_676
    :try_start_676
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I
    :try_end_679
    .catchall {:try_start_676 .. :try_end_679} :catchall_6d7

    move-result v3

    sub-int v53, v3, v49

    goto :goto_606

    .line 1013
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v42    # "file":Landroid/util/AtomicFile;
    .restart local v45    # "i":I
    .restart local v53    # "start":I
    :cond_67d
    :try_start_67d
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 1014
    .restart local v43    # "fileStr":Ljava/lang/String;
    const-string v3, ".ci"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 1015
    .restart local v37    # "checkedIn":Z
    if-nez v46, :cond_691

    if-eqz v23, :cond_6e0

    .line 1017
    :cond_691
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1038
    :goto_696
    if-eqz v46, :cond_671

    .line 1040
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, ".ci"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6bb
    .catch Ljava/lang/Throwable; {:try_start_67d .. :try_end_6bb} :catch_6bc
    .catchall {:try_start_67d .. :try_end_6bb} :catchall_6d7

    goto :goto_671

    .line 1043
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    :catch_6bc
    move-exception v39

    .line 1044
    .local v39, "e":Ljava/lang/Throwable;
    :try_start_6bd
    const-string v3, "**** FAILURE DUMPING STATE: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_6d6
    .catchall {:try_start_6bd .. :try_end_6d6} :catchall_6d7

    goto :goto_671

    .line 1050
    .end local v39    # "e":Ljava/lang/Throwable;
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "i":I
    .end local v53    # "start":I
    :catchall_6d7
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1019
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v37    # "checkedIn":Z
    .restart local v42    # "file":Landroid/util/AtomicFile;
    .restart local v43    # "fileStr":Ljava/lang/String;
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v45    # "i":I
    .restart local v53    # "start":I
    :cond_6e0
    if-eqz v52, :cond_715

    .line 1020
    :try_start_6e2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1024
    :goto_6e5
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    if-eqz v37, :cond_6fc

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    :cond_6fc
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    if-eqz v25, :cond_718

    .line 1032
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_696

    .line 1022
    :cond_715
    const/16 v52, 0x1

    goto :goto_6e5

    :cond_718
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 1035
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_723
    .catch Ljava/lang/Throwable; {:try_start_6e2 .. :try_end_723} :catch_6bc
    .catchall {:try_start_6e2 .. :try_end_723} :catchall_6d7

    goto/16 :goto_696

    .line 1050
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    .end local v45    # "i":I
    .end local v53    # "start":I
    :cond_725
    move-object/from16 v0, p0

    iget-object v3, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1053
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_72c
    if-nez v46, :cond_81

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1055
    if-eqz v23, :cond_773

    .line 1056
    :try_start_735
    move-object/from16 v0, p0

    iget-object v3, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1073
    :goto_73e
    monitor-exit v4
    :try_end_73f
    .catchall {:try_start_735 .. :try_end_73f} :catchall_7c8

    .line 1074
    if-nez v38, :cond_81

    .line 1075
    if-eqz v52, :cond_746

    .line 1076
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1078
    :cond_746
    const-string v3, "AGGREGATED OVER LAST 24 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    const-wide/16 v18, 0x18

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1082
    const-string v3, "AGGREGATED OVER LAST 3 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    const-wide/16 v18, 0x3

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto/16 :goto_81

    .line 1058
    :cond_773
    if-eqz v52, :cond_778

    .line 1059
    :try_start_775
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1061
    :cond_778
    const-string v3, "CURRENT STATS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    if-nez v24, :cond_783

    if-eqz v25, :cond_7b6

    .line 1063
    :cond_783
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v29, v0

    if-nez v25, :cond_7b3

    const/16 v34, 0x1

    :goto_78d
    move-object/from16 v30, p2

    move-object/from16 v31, v14

    move-wide/from16 v32, v12

    move/from16 v35, v26

    move/from16 v36, v27

    invoke-virtual/range {v29 .. v36}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 1065
    if-eqz v26, :cond_7b0

    .line 1066
    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1071
    :cond_7b0
    :goto_7b0
    const/16 v52, 0x1

    goto :goto_73e

    .line 1063
    :cond_7b3
    const/16 v34, 0x0

    goto :goto_78d

    .line 1069
    :cond_7b6
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v18, p2

    move-object/from16 v19, v14

    move-wide/from16 v20, v12

    move/from16 v22, v27

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_7b0

    .line 1073
    :catchall_7c8
    move-exception v3

    monitor-exit v4
    :try_end_7ca
    .catchall {:try_start_775 .. :try_end_7ca} :catchall_7c8

    throw v3

    .line 712
    nop

    :array_7cc
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v6, p0, mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 354
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_b

    array-length v6, v3

    if-gt v6, p1, :cond_d

    .line 355
    :cond_b
    const/4 v4, 0x0

    .line 375
    :goto_c
    return-object v4

    .line 357
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .local v4, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    array-length v6, v3

    if-ge v5, v6, :cond_40

    .line 361
    aget-object v1, v3, v5

    .line 362
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_34

    const-string v6, ".ci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 360
    :cond_31
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 368
    :cond_34
    if-nez p2, :cond_3c

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 372
    :cond_3c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 374
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_40
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_c
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .registers 16
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x2c

    const/4 v8, 0x0

    .line 408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 410
    .local v5, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v2, v9, :cond_82

    .line 411
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_2a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 412
    .local v0, "c":C
    :goto_1b
    if-eq v0, v10, :cond_2c

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_2c

    const/16 v9, 0x20

    if-eq v0, v9, :cond_2c

    if-eqz v0, :cond_2c

    .line 410
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v0    # "c":C
    :cond_2a
    move v0, v8

    .line 411
    goto :goto_1b

    .line 415
    .restart local v0    # "c":C
    :cond_2c
    if-ne v0, v10, :cond_6e

    const/4 v3, 0x1

    .line 416
    .local v3, "isSep":Z
    :goto_2f
    if-nez v5, :cond_70

    .line 418
    aput-boolean v3, p3, v8

    .line 423
    :cond_33
    add-int/lit8 v9, v2, -0x1

    if-ge v5, v9, :cond_7f

    .line 424
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    array-length v9, p0

    if-ge v4, v9, :cond_4f

    .line 426
    aget-object v9, p0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 427
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const/4 v7, 0x0

    .line 432
    :cond_4f
    if-eqz v7, :cond_7f

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid word \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p4, v8

    .line 444
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_6d
    :goto_6d
    return-object v1

    .restart local v0    # "c":C
    :cond_6e
    move v3, v8

    .line 415
    goto :goto_2f

    .line 419
    .restart local v3    # "isSep":Z
    :cond_70
    if-eqz v0, :cond_33

    aget-boolean v9, p3, v8

    if-eq v9, v3, :cond_33

    .line 420
    const-string/jumbo v9, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v9, p4, v8

    goto :goto_6d

    .line 425
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 437
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_7f
    add-int/lit8 v5, v2, 0x1

    goto :goto_27

    .line 440
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    :cond_82
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 441
    .local v1, "finalRes":[I
    const/4 v2, 0x0

    :goto_89
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6d

    .line 442
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    aput v8, v1, v2

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_89
.end method

.method private updateFile()V
    .registers 6

    .prologue
    .line 254
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mFile:Landroid/util/AtomicFile;

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLastWriteTime:J

    .line 257
    return-void
.end method

.method private writeStateLocked(Z)V
    .registers 4
    .param p1, "sync"    # Z

    .prologue
    .line 212
    iget-boolean v1, p0, mShuttingDown:Z

    if-eqz v1, :cond_5

    .line 218
    :goto_4
    return-void

    .line 215
    :cond_5
    iget-boolean v0, p0, mCommitPending:Z

    .line 216
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, mCommitPending:Z

    .line 217
    invoke-virtual {p0, p1, v0}, writeStateLocked(ZZ)V

    goto :goto_4
.end method


# virtual methods
.method public DataCollection(J)Ljava/util/List;
    .registers 18
    .param p1, "aggregateHours"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ProcStatsCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 559
    .local v2, "now":J
    const-wide/16 v8, 0x3c

    mul-long v8, v8, p1

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sget-wide v10, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 562
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    const-string v8, "ProcessStatsService"

    const-string v9, "DataCollection"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-nez v4, :cond_23

    .line 565
    const/4 v1, 0x0

    .line 602
    :goto_22
    return-object v1

    .line 567
    :cond_23
    new-instance v6, Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 568
    .local v6, "stats":Lcom/android/internal/app/ProcessStats;
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 569
    .local v7, "stream":Ljava/io/InputStream;
    invoke-virtual {v6, v7}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 570
    iget-object v8, v6, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v8, :cond_37

    .line 572
    const/4 v1, 0x0

    goto :goto_22

    .line 575
    :cond_37
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v2, v3, v9}, Lcom/android/internal/app/ProcessStats;->summaryLocked(Ljava/lang/String;JZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 577
    .local v1, "pData":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ProcStatsCollection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 578
    .local v0, "lastindex":I
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcStatsCollection;

    .line 580
    .local v5, "procExtra":Lcom/android/internal/app/ProcStatsCollection;
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/internal/app/ProcStatsCollection;->hasExtra:Z

    .line 581
    invoke-virtual {p0}, InstallApps()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/app/ProcStatsCollection;->SetInstalledAppCount(I)V

    .line 582
    invoke-interface {v1, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method public InstallApps()I
    .registers 7

    .prologue
    .line 606
    const/4 v3, 0x0

    .line 607
    .local v3, "res":I
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 608
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_28

    .line 609
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 610
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_25

    .line 611
    add-int/lit8 v3, v3, 0x1

    .line 608
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 615
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_28
    return v3
.end method

.method public addSysMemUsageLocked(JJJJJ)V
    .registers 24
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 180
    iget-object v1, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 181
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 679
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3f

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump procstats from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    :goto_3e
    return-void

    .line 687
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 689
    .local v0, "ident":J
    :try_start_43
    invoke-direct {p0, p1, p2, p3}, dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v1, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    move-object v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 395
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 396
    if-eqz p2, :cond_1d

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    move-object v0, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    .line 399
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 401
    const/4 v0, 0x1

    .line 403
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public getCurrentMemoryState()I
    .registers 3

    .prologue
    .line 552
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 553
    :try_start_3
    iget v0, p0, mLastMemOnlyState:I

    monitor-exit v1

    return v0

    .line 554
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v7, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 451
    .local v0, "current":Landroid/os/Parcel;
    iget-object v8, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 452
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 453
    .local v4, "now":J
    iget-object v7, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 454
    iget-object v7, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iput-wide v4, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 455
    iget-object v7, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v4, v5, v9}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 456
    monitor-exit v8
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_57

    .line 457
    iget-object v7, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 459
    if-eqz p1, :cond_81

    .line 460
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_32
    invoke-direct {p0, v7, v8, v9}, getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 461
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_81

    .line 462
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_7a

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_3e
    if-ltz v3, :cond_81

    .line 464
    :try_start_40
    new-instance v8, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v8, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 466
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_54} :catch_5a
    .catchall {:try_start_40 .. :try_end_54} :catchall_7a

    .line 462
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_3e

    .line 456
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_57
    move-exception v7

    :try_start_58
    monitor-exit v8
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v7

    .line 467
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    :catch_5a
    move-exception v1

    .line 468
    .local v1, "e":Ljava/io/IOException;
    :try_start_5b
    const-string v8, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure opening procstat file "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_5b .. :try_end_79} :catchall_7a

    goto :goto_54

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_7a
    move-exception v7

    iget-object v8, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    :cond_81
    iget-object v7, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    return-object v7
.end method

.method public getMemFactorLocked()I
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .registers 30
    .param p1, "minTime"    # J

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 484
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 485
    :try_start_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 486
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v24, v0

    sub-long v4, v22, v24

    .line 491
    .local v4, "curTime":J
    monitor-exit v20
    :try_end_66
    .catchall {:try_start_1e .. :try_end_66} :catchall_142

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    cmp-long v19, v4, p1

    if-gez v19, :cond_1a3

    .line 496
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    :try_start_79
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 497
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1a3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1a3

    .line 498
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 499
    sget-object v19, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats;

    .line 500
    .local v17, "stats":Lcom/android/internal/app/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    .line 502
    .local v11, "i":I
    :goto_a7
    if-ltz v11, :cond_196

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    cmp-long v19, v20, p1

    if-gez v19, :cond_196

    .line 504
    new-instance v9, Landroid/util/AtomicFile;

    new-instance v20, Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 505
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    .line 506
    new-instance v12, Lcom/android/internal/app/ProcessStats;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 507
    .local v12, "moreStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 508
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_145

    .line 509
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ProcessStats;->add(Lcom/android/internal/app/ProcessStats;)V

    .line 510
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v19, "Added stats: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v19, ", over "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 516
    const-string v19, "ProcessStatsService"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_128} :catch_12a
    .catchall {:try_start_79 .. :try_end_128} :catchall_18b

    goto/16 :goto_a7

    .line 543
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :catch_12a
    move-exception v7

    .line 544
    .local v7, "e":Ljava/io/IOException;
    :try_start_12b
    const-string v19, "ProcessStatsService"

    const-string v20, "Failed building output pipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_12b .. :try_end_136} :catchall_18b

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 548
    const/16 v19, 0x0

    .end local v7    # "e":Ljava/io/IOException;
    :goto_141
    return-object v19

    .line 491
    .end local v4    # "curTime":J
    .end local v14    # "now":J
    :catchall_142
    move-exception v19

    :try_start_143
    monitor-exit v20
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    throw v19

    .line 518
    .restart local v4    # "curTime":J
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .restart local v14    # "now":J
    .restart local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_145
    :try_start_145
    const-string v20, "ProcessStatsService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure reading "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_189} :catch_12a
    .catchall {:try_start_145 .. :try_end_189} :catchall_18b

    goto/16 :goto_a7

    .line 546
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :catchall_18b
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v19

    .line 523
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_196
    :try_start_196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 524
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_1a3
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .line 528
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 530
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v18, Lcom/android/server/am/ProcessStatsService$3;

    const-string v19, "ProcessStats pipe output"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 541
    .local v18, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 542
    const/16 v19, 0x0

    aget-object v19, v8, v19
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1c2} :catch_12a
    .catchall {:try_start_196 .. :try_end_1c2} :catchall_18b

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_141
.end method

.method public isMemFactorLowered()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 105
    :catch_5
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 107
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_11
    throw v0
.end method

.method performWriteState()V
    .registers 7

    .prologue
    .line 263
    iget-object v5, p0, mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 264
    :try_start_3
    iget-object v0, p0, mPendingWrite:Landroid/os/Parcel;

    .line 265
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, mPendingWriteFile:Landroid/util/AtomicFile;

    .line 266
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    iput-boolean v4, p0, mPendingWriteCommitted:Z

    .line 267
    if-nez v0, :cond_e

    .line 268
    monitor-exit v5

    .line 290
    :goto_d
    return-void

    .line 270
    :cond_e
    const/4 v4, 0x0

    iput-object v4, p0, mPendingWrite:Landroid/os/Parcel;

    .line 271
    const/4 v4, 0x0

    iput-object v4, p0, mPendingWriteFile:Landroid/util/AtomicFile;

    .line 272
    iget-object v4, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 273
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_38

    .line 275
    const/4 v3, 0x0

    .line 277
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 279
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 280
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2c} :catch_3b
    .catchall {:try_start_1b .. :try_end_2c} :catchall_52

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {p0}, trimHistoricStatesWriteLocked()V

    .line 288
    iget-object v4, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    .line 273
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4

    .line 282
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_3b
    move-exception v1

    .line 283
    .local v1, "e":Ljava/io/IOException;
    :try_start_3c
    const-string v4, "ProcessStatsService"

    const-string v5, "Error writing process statistics"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_52

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {p0}, trimHistoricStatesWriteLocked()V

    .line 288
    iget-object v4, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {p0}, trimHistoricStatesWriteLocked()V

    .line 288
    iget-object v5, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z
    .registers 9
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .prologue
    const/4 v2, 0x0

    .line 294
    :try_start_1
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 295
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 296
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 297
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_48

    .line 298
    const-string v3, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2a

    .line 348
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_29
    return v2

    .line 343
    :catch_2a
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 345
    const-string v3, "ProcessStatsService"

    const-string v4, "Error reading process statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 348
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_48
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public setMemFactorLocked(IZJ)Z
    .registers 26
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget v14, v0, mLastMemOnlyState:I

    move/from16 v0, p1

    if-ge v0, v14, :cond_af

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, mMemFactorLowered:Z

    .line 130
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mLastMemOnlyState:I

    .line 131
    if-eqz p2, :cond_17

    .line 132
    add-int/lit8 p1, p1, 0x4

    .line 134
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_eb

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4a

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v15, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v15, v15, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    aget-wide v16, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, p3, v18

    add-long v16, v16, v18

    aput-wide v16, v14, v15

    .line 139
    :cond_4a
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move/from16 v0, p1

    iput v0, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 143
    .local v9, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, "ipkg":I
    :goto_6a
    if-ltz v4, :cond_e9

    .line 144
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 145
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "iuid":I
    :goto_78
    if-ltz v6, :cond_e6

    .line 146
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 147
    .local v13, "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "iver":I
    :goto_86
    if-ltz v7, :cond_e3

    .line 148
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 149
    .local v8, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v11, v8, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 150
    .local v11, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "isvc":I
    :goto_96
    if-ltz v5, :cond_e0

    .line 151
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 152
    .local v10, "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isRestarting()Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 153
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    .line 150
    :cond_ac
    :goto_ac
    add-int/lit8 v5, v5, -0x1

    goto :goto_96

    .line 129
    .end local v4    # "ipkg":I
    .end local v5    # "isvc":I
    .end local v6    # "iuid":I
    .end local v7    # "iver":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_af
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 154
    .restart local v4    # "ipkg":I
    .restart local v5    # "isvc":I
    .restart local v6    # "iuid":I
    .restart local v7    # "iver":I
    .restart local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .restart local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .restart local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_b2
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v14

    if-eqz v14, :cond_ac

    .line 155
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c5

    .line 156
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 158
    :cond_c5
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d2

    .line 159
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 161
    :cond_d2
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_ac

    .line 162
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_ac

    .line 147
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_e0
    add-int/lit8 v7, v7, -0x1

    goto :goto_86

    .line 145
    .end local v5    # "isvc":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    :cond_e3
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 143
    .end local v7    # "iver":I
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_e6
    add-int/lit8 v4, v4, -0x1

    goto :goto_6a

    .line 169
    .end local v6    # "iuid":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_e9
    const/4 v14, 0x1

    .line 171
    .end local v4    # "ipkg":I
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    :goto_ea
    return v14

    :cond_eb
    const/4 v14, 0x0

    goto :goto_ea
.end method

.method public shouldWriteNowLocked(J)Z
    .registers 12
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 184
    iget-wide v2, p0, mLastWriteTime:J

    sget-wide v4, WRITE_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-lez v1, :cond_2b

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2a

    .line 189
    iput-boolean v0, p0, mCommitPending:Z

    .line 193
    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public shutdownLocked()V
    .registers 3

    .prologue
    .line 197
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 199
    invoke-virtual {p0}, writeStateSyncLocked()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, mShuttingDown:Z

    .line 201
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 379
    const/4 v2, 0x1

    invoke-direct {p0, v6, v5, v2}, getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_b

    .line 388
    :cond_a
    return-void

    .line 383
    :cond_b
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_a

    .line 384
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "file":Ljava/lang/String;
    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method public writeStateAsyncLocked()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, writeStateLocked(Z)V

    .line 205
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .registers 11
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 221
    iget-object v3, p0, mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 222
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 223
    .local v0, "now":J
    iget-object v2, p0, mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_f

    iget-boolean v2, p0, mPendingWriteCommitted:Z

    if-nez v2, :cond_42

    .line 224
    :cond_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, mPendingWrite:Landroid/os/Parcel;

    .line 225
    iget-object v2, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 226
    iget-object v2, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 227
    if-eqz p2, :cond_2b

    .line 228
    iget-object v2, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 230
    :cond_2b
    iget-object v2, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mPendingWriteFile:Landroid/util/AtomicFile;

    .line 232
    iput-boolean p2, p0, mPendingWriteCommitted:Z

    .line 234
    :cond_42
    if-eqz p2, :cond_4c

    .line 235
    iget-object v2, p0, mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 236
    invoke-direct {p0}, updateFile()V

    .line 238
    :cond_4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, mLastWriteTime:J

    .line 239
    const-string v2, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared write state in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-nez p1, :cond_86

    .line 241
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    monitor-exit v3

    .line 251
    :goto_85
    return-void

    .line 248
    :cond_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_8b

    .line 250
    invoke-virtual {p0}, performWriteState()V

    goto :goto_85

    .line 248
    .end local v0    # "now":J
    :catchall_8b
    move-exception v2

    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v2
.end method

.method public writeStateSyncLocked()V
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, writeStateLocked(Z)V

    .line 209
    return-void
.end method
