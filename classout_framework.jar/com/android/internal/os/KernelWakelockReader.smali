.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, sKernelWakelockUpdateVersion:I

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, PROC_WAKELOCKS_FORMAT:[I

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, WAKEUP_SOURCES_FORMAT:[I

    return-void

    .line 33
    :array_14
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    .line 43
    :array_24
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, mProcWakelocksName:[Ljava/lang/String;

    .line 56
    new-array v0, v1, [J

    iput-object v0, p0, mProcWakelocksData:[J

    return-void
.end method

.method private parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 29
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    .line 116
    const/16 v16, 0x0

    .line 120
    .local v16, "numUpdatedWlNames":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move/from16 v0, p2

    if-ge v11, v0, :cond_14

    aget-byte v2, p1, v11

    const/16 v5, 0xa

    if-eq v2, v5, :cond_14

    aget-byte v2, p1, v11

    if-eqz v2, :cond_14

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 121
    :cond_14
    add-int/lit8 v4, v11, 0x1

    .local v4, "endIndex":I
    move v3, v4

    .line 123
    .local v3, "startIndex":I
    monitor-enter p0

    .line 124
    :try_start_18
    sget v2, sKernelWakelockUpdateVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, sKernelWakelockUpdateVersion:I

    .line 125
    :goto_1e
    move/from16 v0, p2

    if-ge v4, v0, :cond_ff

    .line 126
    move v4, v3

    .line 127
    :goto_23
    move/from16 v0, p2

    if-ge v4, v0, :cond_34

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_34

    aget-byte v2, p1, v4

    if-eqz v2, :cond_34

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 129
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 132
    add-int/lit8 v2, p2, -0x1

    if-lt v4, v2, :cond_3c

    .line 133
    monitor-exit p0

    .line 199
    :goto_3b
    return-object p4

    .line 136
    :cond_3c
    move-object/from16 v0, p0

    iget-object v6, v0, mProcWakelocksName:[Ljava/lang/String;

    .line 137
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, mProcWakelocksData:[J

    .line 141
    .local v7, "wlData":[J
    move v13, v3

    .local v13, "j":I
    :goto_45
    if-ge v13, v4, :cond_54

    .line 142
    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_51

    const/16 v2, 0x3f

    aput-byte v2, p1, v13

    .line 141
    :cond_51
    add-int/lit8 v13, v13, 0x1

    goto :goto_45

    .line 144
    :cond_54
    if-eqz p3, :cond_93

    sget-object v5, WAKEUP_SOURCES_FORMAT:[I

    :goto_58
    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v17

    .line 149
    .local v17, "parsed":Z
    const/4 v2, 0x0

    aget-object v15, v6, v2

    .line 150
    .local v15, "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-wide v20, v7, v2

    move-wide/from16 v0, v20

    long-to-int v9, v0

    .line 152
    .local v9, "count":I
    if-eqz p3, :cond_96

    .line 154
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x3e8

    mul-long v18, v20, v22

    .line 160
    .local v18, "totalTime":J
    :goto_71
    if-eqz v17, :cond_d0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d0

    .line 161
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 162
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, sKernelWakelockUpdateVersion:I

    move-wide/from16 v0, v18

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v16, v16, 0x1

    .line 185
    :cond_91
    :goto_91
    move v3, v4

    .line 186
    goto :goto_1e

    .line 144
    .end local v9    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_93
    sget-object v5, PROC_WAKELOCKS_FORMAT:[I

    goto :goto_58

    .line 157
    .restart local v9    # "count":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parsed":Z
    :cond_96
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x1f4

    add-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    .restart local v18    # "totalTime":J
    goto :goto_71

    .line 166
    :cond_a2
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 167
    .local v14, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, sKernelWakelockUpdateVersion:I

    if-ne v2, v5, :cond_c3

    .line 168
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v2, v9

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 169
    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_91

    .line 200
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v13    # "j":I
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :catchall_c0
    move-exception v2

    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_18 .. :try_end_c2} :catchall_c0

    throw v2

    .line 171
    .restart local v6    # "nameStringArray":[Ljava/lang/String;
    .restart local v7    # "wlData":[J
    .restart local v9    # "count":I
    .restart local v13    # "j":I
    .restart local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parsed":Z
    .restart local v18    # "totalTime":J
    :cond_c3
    :try_start_c3
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 172
    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 173
    sget v2, sKernelWakelockUpdateVersion:I

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_c0

    .line 174
    add-int/lit8 v16, v16, 0x1

    goto :goto_91

    .line 177
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :cond_d0
    if-nez v17, :cond_91

    .line 179
    :try_start_d2
    const-string v2, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse proc line: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    sub-int v20, v4, v3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f5} :catch_f6
    .catchall {:try_start_d2 .. :try_end_f5} :catchall_c0

    goto :goto_91

    .line 181
    :catch_f6
    move-exception v10

    .line 182
    .local v10, "e":Ljava/lang/Exception;
    :try_start_f7
    const-string v2, "KernelWakelockReader"

    const-string v5, "Failed to parse proc line!"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 188
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "j":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_ff
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    move-result v2

    move/from16 v0, v16

    if-eq v2, v0, :cond_125

    .line 190
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 191
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_10f
    :goto_10f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    .line 192
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, sKernelWakelockUpdateVersion:I

    if-eq v2, v5, :cond_10f

    .line 193
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_10f

    .line 198
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_125
    sget v2, sKernelWakelockUpdateVersion:I

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 199
    monitor-exit p0
    :try_end_12c
    .catchall {:try_start_f7 .. :try_end_12c} :catchall_c0

    goto/16 :goto_3b
.end method


# virtual methods
.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 12
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    const/4 v7, 0x0

    .line 64
    const v8, 0x8000

    new-array v0, v8, [B

    .line 71
    .local v0, "buffer":[B
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/proc/wakelocks"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_40
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_54

    .line 72
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 84
    .local v6, "wakeup_sources":Z
    :goto_e
    :try_start_e
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 85
    .local v5, "len":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_54

    .line 91
    if-lez v5, :cond_3b

    .line 92
    array-length v7, v0

    if-lt v5, v7, :cond_33

    .line 93
    const-string v7, "KernelWakelockReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_33
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v5, :cond_3b

    .line 97
    aget-byte v7, v0, v3

    if-nez v7, :cond_5d

    .line 98
    move v5, v3

    .line 103
    .end local v3    # "i":I
    :cond_3b
    invoke-direct {p0, v0, v5, v6, p1}, parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v7

    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "wakeup_sources":Z
    :goto_3f
    return-object v7

    .line 73
    :catch_40
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_41
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/d/wakeup_sources"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_48} :catch_4a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_54

    .line 76
    .restart local v4    # "is":Ljava/io/FileInputStream;
    const/4 v6, 0x1

    .restart local v6    # "wakeup_sources":Z
    goto :goto_e

    .line 77
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "wakeup_sources":Z
    :catch_4a
    move-exception v2

    .line 78
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_4b
    const-string v8, "KernelWakelockReader"

    const-string/jumbo v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_54

    goto :goto_3f

    .line 86
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e2":Ljava/io/FileNotFoundException;
    :catch_54
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "KernelWakelockReader"

    const-string v9, "failed to read kernel wakelocks"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "wakeup_sources":Z
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34
.end method
