.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final mDeltaSpeedTimes:[J

.field private final mLastSpeedTimes:[J

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 7
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mProcFile:Ljava/lang/String;

    .line 47
    new-array v0, p2, [J

    iput-object v0, p0, mLastSpeedTimes:[J

    .line 48
    new-array v0, p2, [J

    iput-object v0, p0, mDeltaSpeedTimes:[J

    .line 49
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .registers 16

    .prologue
    .line 57
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v9, p0, mProcFile:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_62

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 58
    :try_start_d
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v4, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 60
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v3, 0x0

    .line 61
    .local v3, "speedIndex":I
    :goto_15
    iget-object v8, p0, mLastSpeedTimes:[J

    array-length v8, v8

    if-ge v3, v8, :cond_89

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_89

    .line 62
    invoke-virtual {v4, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 66
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v6, v10, v12

    .line 67
    .local v6, "time":J
    iget-object v8, p0, mLastSpeedTimes:[J

    aget-wide v10, v8, v3

    cmp-long v8, v6, v10

    if-gez v8, :cond_49

    .line 70
    iget-object v8, p0, mDeltaSpeedTimes:[J

    aput-wide v6, v8, v3

    .line 74
    :goto_42
    iget-object v8, p0, mLastSpeedTimes:[J

    aput-wide v6, v8, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    goto :goto_15

    .line 72
    :cond_49
    iget-object v8, p0, mDeltaSpeedTimes:[J

    iget-object v10, p0, mLastSpeedTimes:[J

    aget-wide v10, v10, v3

    sub-long v10, v6, v10

    aput-wide v10, v8, v3
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_53} :catch_54
    .catchall {:try_start_d .. :try_end_53} :catchall_a3

    goto :goto_42

    .line 57
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "time":J
    :catch_54
    move-exception v8

    :try_start_55
    throw v8
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 77
    :catchall_56
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_5a
    if-eqz v2, :cond_61

    if-eqz v9, :cond_9f

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_9a
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    :try_start_61
    throw v8
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_62} :catch_62

    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_62
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "KernelCpuSpeedReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read cpu-freq: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v8, p0, mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :cond_86
    :goto_86
    iget-object v8, p0, mDeltaSpeedTimes:[J

    return-object v8

    .line 77
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "speedIndex":I
    .restart local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_89
    if-eqz v2, :cond_86

    if-eqz v9, :cond_96

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_91
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_62

    goto :goto_86

    :catch_91
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_92
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_86

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_96
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_86

    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_9a
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_61

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_9f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a2} :catch_62

    goto :goto_61

    :catchall_a3
    move-exception v8

    goto :goto_5a
.end method
