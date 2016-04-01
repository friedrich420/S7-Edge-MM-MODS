.class final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeupReasonThread"
.end annotation


# static fields
.field private static final MAX_REASON_SIZE:I = 0x200


# instance fields
.field private mDecoder:Ljava/nio/charset/CharsetDecoder;

.field private mUtf16Buffer:Ljava/nio/CharBuffer;

.field private mUtf8Buffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 3

    .prologue
    .line 918
    iput-object p1, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    .line 919
    const-string v0, "BatteryStats_wakeupReason"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method private waitWakeup()Ljava/lang/String;
    .registers 6

    .prologue
    .line 947
    iget-object v1, p0, mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 948
    iget-object v1, p0, mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 949
    iget-object v1, p0, mDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 951
    iget-object v1, p0, mUtf8Buffer:Ljava/nio/ByteBuffer;

    # invokes: Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->access$000(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 952
    .local v0, "bytesWritten":I
    if-gez v0, :cond_19

    .line 953
    const/4 v1, 0x0

    .line 967
    :goto_18
    return-object v1

    .line 954
    :cond_19
    if-nez v0, :cond_1f

    .line 955
    const-string/jumbo v1, "unknown"

    goto :goto_18

    .line 959
    :cond_1f
    iget-object v1, p0, mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 963
    iget-object v1, p0, mDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, mUtf8Buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, mUtf16Buffer:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 964
    iget-object v1, p0, mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 967
    iget-object v1, p0, mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x200

    .line 923
    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 925
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iput-object v2, p0, mDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 931
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, mUtf8Buffer:Ljava/nio/ByteBuffer;

    .line 932
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, mUtf16Buffer:Ljava/nio/CharBuffer;

    .line 936
    :goto_2c
    :try_start_2c
    invoke-direct {p0}, waitWakeup()Ljava/lang/String;

    move-result-object v1

    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_4b

    .line 937
    iget-object v2, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_37} :catch_43

    .line 938
    :try_start_37
    iget-object v2, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V

    .line 939
    monitor-exit v3

    goto :goto_2c

    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_40

    :try_start_42
    throw v2
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_43} :catch_43

    .line 941
    .end local v1    # "reason":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "BatteryStatsService"

    const-string v3, "Failure reading wakeup reasons"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4b
    return-void
.end method
