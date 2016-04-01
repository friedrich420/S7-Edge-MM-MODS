.class Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
.super Ljava/lang/Object;
.source "LogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;,
        Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;
    }
.end annotation


# static fields
.field public static final ALL_PRIORTIES_SUFFIX:Ljava/lang/String; = ":*"

.field public static final LOG_BUFFER_EVENTS:Ljava/lang/String; = "events"

.field public static final LOG_BUFFER_MAIN:Ljava/lang/String; = "main"

.field public static final LOG_BUFFER_RADIO:Ljava/lang/String; = "radio"

.field public static final LOG_FORMAT_BRIEF:Ljava/lang/String; = "brief"

.field public static final LOG_FORMAT_LONG:Ljava/lang/String; = "long"

.field public static final LOG_FORMAT_PROCESS:Ljava/lang/String; = "process"

.field public static final LOG_FORMAT_RAW:Ljava/lang/String; = "raw"

.field public static final LOG_FORMAT_TAG:Ljava/lang/String; = "tag"

.field public static final LOG_FORMAT_THREAD:Ljava/lang/String; = "thread"

.field public static final LOG_FORMAT_THREADTIME:Ljava/lang/String; = "threadtime"

.field public static final LOG_FORMAT_TIME:Ljava/lang/String; = "time"

.field public static final SILENT_SPEC:Ljava/lang/String; = "*:S"

.field private static final TAG:Ljava/lang/String; = "LogcatReader"

.field public static final THREADTIME_FORMAT_PARSER:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;


# instance fields
.field private final mBuffer:Ljava/lang/String;

.field private final mClearBuffer:Z

.field private final mFilterSpecs:[Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private mProcess:Ljava/lang/Process;

.field private final mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 175
    new-instance v0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;

    invoke-direct {v0}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;-><init>()V

    sput-object v0, THREADTIME_FORMAT_PARSER:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;)V
    .registers 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;
    .param p3, "filterSpecs"    # [Ljava/lang/String;
    .param p4, "clearBuffer"    # Z
    .param p5, "processor"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, mFormat:Ljava/lang/String;

    .line 242
    iput-object p2, p0, mBuffer:Ljava/lang/String;

    .line 243
    iput-object p3, p0, mFilterSpecs:[Ljava/lang/String;

    .line 244
    iput-boolean p4, p0, mClearBuffer:Z

    .line 245
    if-nez p5, :cond_15

    .line 246
    new-instance v0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$2;

    invoke-direct {v0, p0}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$2;-><init>(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)V

    iput-object v0, p0, mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    .line 261
    :goto_14
    return-void

    .line 260
    :cond_15
    iput-object p5, p0, mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    goto :goto_14
.end method

.method static synthetic access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .prologue
    .line 89
    iget-object v0, p0, mFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .prologue
    .line 89
    iget-object v0, p0, mBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .prologue
    .line 89
    iget-object v0, p0, mFilterSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/Process;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .prologue
    .line 89
    iget-object v0, p0, mProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;Ljava/lang/Process;)Ljava/lang/Process;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
    .param p1, "x1"    # Ljava/lang/Process;

    .prologue
    .line 89
    iput-object p1, p0, mProcess:Ljava/lang/Process;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .prologue
    .line 89
    iget-object v0, p0, mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    return-object v0
.end method

.method private clearBuffer()V
    .registers 8

    .prologue
    .line 267
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logcat -b "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 269
    .local v3, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_4c

    .line 271
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    if-eqz v0, :cond_3f

    .line 273
    :cond_34
    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_40

    move-result-object v4

    if-nez v4, :cond_34

    .line 276
    if-eqz v0, :cond_3f

    .line 277
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 285
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "process":Ljava/lang/Process;
    :cond_3f
    :goto_3f
    return-void

    .line 276
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "process":Ljava/lang/Process;
    :catchall_40
    move-exception v4

    if-eqz v0, :cond_46

    .line 277
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_46
    throw v4
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_47} :catch_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_4c

    .line 280
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "process":Ljava/lang/Process;
    :catch_47
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v2

    .line 283
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method


# virtual methods
.method public startReadingLogs()V
    .registers 3

    .prologue
    .line 291
    const-string v0, "LogcatReader"

    const-string/jumbo v1, "startReadingLogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v0, p0, mClearBuffer:Z

    if-eqz v0, :cond_f

    .line 293
    invoke-direct {p0}, clearBuffer()V

    .line 297
    :cond_f
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;

    invoke-direct {v1, p0}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;-><init>(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 347
    return-void
.end method

.method public stopReadingLogs()V
    .registers 3

    .prologue
    .line 353
    const-string v0, "LogcatReader"

    const-string/jumbo v1, "stopReadingLogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 357
    return-void
.end method
