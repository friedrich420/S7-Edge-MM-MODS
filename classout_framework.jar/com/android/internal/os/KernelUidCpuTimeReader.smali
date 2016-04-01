.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastPowerMaUs:Landroid/util/SparseLongArray;

.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, mLastPowerMaUs:Landroid/util/SparseLongArray;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastTimeReadUs:J

    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .registers 39
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v16, v30, v32

    .line 71
    .local v16, "nowUs":J
    :try_start_8
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v30, "/proc/uid_cputime/show_uid_stat"

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_215

    .local v15, "reader":Ljava/io/BufferedReader;
    const/16 v30, 0x0

    .line 72
    :try_start_18
    new-instance v21, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 74
    .local v21, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_21
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_23f

    .line 75
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v26

    .line 77
    .local v26, "uidStr":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, "uid":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    .line 79
    .local v28, "userTimeUs":J
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    .line 81
    .local v22, "systemTimeUs":J
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23b

    .line 82
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v18, v32, v34

    .line 87
    .local v18, "powerMaUs":J
    :goto_75
    if-eqz p1, :cond_1e7

    .line 88
    move-wide/from16 v6, v28

    .line 89
    .local v6, "userTimeDeltaUs":J
    move-wide/from16 v8, v22

    .line 90
    .local v8, "systemTimeDeltaUs":J
    move-wide/from16 v10, v18

    .line 91
    .local v10, "powerDeltaMaUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v13

    .line 92
    .local v13, "index":I
    if-ltz v13, :cond_1d0

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v6, v6, v32

    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v8, v8, v32

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, mLastPowerMaUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v10, v10, v32

    .line 97
    move-object/from16 v0, p0

    iget-wide v0, v0, mLastTimeReadUs:J

    move-wide/from16 v32, v0

    sub-long v24, v16, v32

    .line 98
    .local v24, "timeDiffUs":J
    const-wide/16 v32, 0x0

    cmp-long v4, v6, v32

    if-ltz v4, :cond_bf

    const-wide/16 v32, 0x0

    cmp-long v4, v8, v32

    if-ltz v4, :cond_bf

    const-wide/16 v32, 0x0

    cmp-long v4, v10, v32

    if-gez v4, :cond_1d0

    .line 99
    :cond_bf
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v4, "Malformed cpu data for UID="

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v20, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v31, "!\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v4, "Time between reads: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-wide/16 v32, 0x3e8

    div-long v32, v24, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 103
    const-string v4, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v4, "Previous times: u="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 106
    const-string v4, " s="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 108
    const-string v4, " p="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, mLastPowerMaUs:Landroid/util/SparseLongArray;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, "mAms\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v4, "Current times: u="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-wide/16 v32, 0x3e8

    div-long v32, v28, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 113
    const-string v4, " s="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-wide/16 v32, 0x3e8

    div-long v32, v22, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 115
    const-string v4, " p="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v32, 0x3e8

    div-long v32, v18, v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string v4, "mAms\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v4, "Delta: u="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-wide/16 v32, 0x3e8

    div-long v32, v6, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 119
    const-string v4, " s="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 121
    const-string v4, " p="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v31, "mAms"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v4, "KernelUidCpuTimeReader"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-wide/16 v6, 0x0

    .line 125
    const-wide/16 v8, 0x0

    .line 126
    const-wide/16 v10, 0x0

    .line 130
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "timeDiffUs":J
    :cond_1d0
    const-wide/16 v32, 0x0

    cmp-long v4, v6, v32

    if-nez v4, :cond_1e2

    const-wide/16 v32, 0x0

    cmp-long v4, v8, v32

    if-nez v4, :cond_1e2

    const-wide/16 v32, 0x0

    cmp-long v4, v10, v32

    if-eqz v4, :cond_1e7

    :cond_1e2
    move-object/from16 v4, p1

    .line 131
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJJ)V

    .line 135
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v4, v0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, mLastPowerMaUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_202
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_202} :catch_204
    .catchall {:try_start_18 .. :try_end_202} :catchall_261

    goto/16 :goto_21

    .line 71
    .end local v5    # "uid":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "powerMaUs":J
    .end local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v22    # "systemTimeUs":J
    .end local v26    # "uidStr":Ljava/lang/String;
    .end local v28    # "userTimeUs":J
    :catch_204
    move-exception v4

    :try_start_205
    throw v4
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_206

    .line 139
    :catchall_206
    move-exception v30

    move-object/from16 v36, v30

    move-object/from16 v30, v4

    move-object/from16 v4, v36

    :goto_20d
    if-eqz v15, :cond_214

    if-eqz v30, :cond_25d

    :try_start_211
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_214
    .catch Ljava/lang/Throwable; {:try_start_211 .. :try_end_214} :catch_254
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_214} :catch_215

    :cond_214
    :goto_214
    :try_start_214
    throw v4
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_215} :catch_215

    .end local v15    # "reader":Ljava/io/BufferedReader;
    :catch_215
    move-exception v12

    .line 140
    .local v12, "e":Ljava/io/IOException;
    const-string v4, "KernelUidCpuTimeReader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to read uid_cputime: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v12    # "e":Ljava/io/IOException;
    :cond_234
    :goto_234
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastTimeReadUs:J

    .line 143
    return-void

    .line 84
    .restart local v5    # "uid":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v22    # "systemTimeUs":J
    .restart local v26    # "uidStr":Ljava/lang/String;
    .restart local v28    # "userTimeUs":J
    :cond_23b
    const-wide/16 v18, 0x0

    .restart local v18    # "powerMaUs":J
    goto/16 :goto_75

    .line 139
    .end local v5    # "uid":I
    .end local v18    # "powerMaUs":J
    .end local v22    # "systemTimeUs":J
    .end local v26    # "uidStr":Ljava/lang/String;
    .end local v28    # "userTimeUs":J
    :cond_23f
    if-eqz v15, :cond_234

    if-eqz v30, :cond_250

    :try_start_243
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_246
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_246} :catch_247
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_246} :catch_215

    goto :goto_234

    :catch_247
    move-exception v27

    .local v27, "x2":Ljava/lang/Throwable;
    :try_start_248
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_234

    .end local v27    # "x2":Ljava/lang/Throwable;
    :cond_250
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    goto :goto_234

    .end local v14    # "line":Ljava/lang/String;
    .end local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_254
    move-exception v27

    .restart local v27    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_214

    .end local v27    # "x2":Ljava/lang/Throwable;
    :cond_25d
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_260
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_260} :catch_215

    goto :goto_214

    :catchall_261
    move-exception v4

    goto :goto_20d
.end method

.method public removeUid(I)V
    .registers 10
    .param p1, "uid"    # I

    .prologue
    .line 150
    iget-object v4, p0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 151
    .local v1, "index":I
    if-ltz v1, :cond_17

    .line 152
    iget-object v4, p0, mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 153
    iget-object v4, p0, mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 154
    iget-object v4, p0, mLastPowerMaUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 157
    :cond_17
    :try_start_17
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_51

    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .line 158
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_44} :catch_5e
    .catchall {:try_start_1f .. :try_end_44} :catchall_75

    .line 160
    if-eqz v2, :cond_4b

    if-eqz v5, :cond_5a

    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_51

    .line 163
    .end local v2    # "writer":Ljava/io/FileWriter;
    :cond_4b
    :goto_4b
    return-void

    .line 160
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_4c
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_4d
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_4b

    .end local v2    # "writer":Ljava/io/FileWriter;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_51
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "KernelUidCpuTimeReader"

    const-string v5, "failed to remove uid from uid_cputime module"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_51

    goto :goto_4b

    .line 157
    :catch_5e
    move-exception v4

    :try_start_5f
    throw v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 160
    :catchall_60
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_64
    if-eqz v2, :cond_6b

    if-eqz v5, :cond_71

    :try_start_68
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_51

    :cond_6b
    :goto_6b
    :try_start_6b
    throw v4

    :catch_6c
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6b

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_71
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_51

    goto :goto_6b

    :catchall_75
    move-exception v4

    goto :goto_64
.end method
