.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .registers 11
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, mPersistThresholdBytes:J

    .line 91
    const-string/jumbo v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, mRotator:Lcom/android/internal/util/FileRotator;

    .line 92
    const-string/jumbo v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 93
    const-string/jumbo v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, mDropBox:Landroid/os/DropBoxManager;

    .line 94
    iput-object p4, p0, mCookie:Ljava/lang/String;

    .line 96
    iput-wide p5, p0, mBucketDuration:J

    .line 97
    iput-boolean p7, p0, mOnlyTags:Z

    .line 99
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 100
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 102
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object v1, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object v0, p0, mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 103
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .registers 12
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 147
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 149
    .local v1, "res":Lcom/android/server/net/NetworkStatsCollection;
    :try_start_7
    iget-object v0, p0, mRotator:Lcom/android/internal/util/FileRotator;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 150
    iget-object v0, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_13} :catch_21

    .line 158
    :goto_13
    return-object v1

    .line 151
    :catch_14
    move-exception v6

    .line 152
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem completely reading network stats"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    invoke-direct {p0}, recoverFromWtf()V

    goto :goto_13

    .line 154
    .end local v6    # "e":Ljava/io/IOException;
    :catch_21
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    const-string v0, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem completely reading network stats"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-direct {p0}, recoverFromWtf()V

    goto :goto_13
.end method

.method private recoverFromWtf()V
    .registers 7

    .prologue
    .line 420
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 422
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    iget-object v2, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_20
    .catchall {:try_start_5 .. :try_end_a} :catchall_28

    .line 427
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 429
    :goto_d
    iget-object v2, p0, mDropBox:Landroid/os/DropBoxManager;

    const-string/jumbo v3, "netstats_dump"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 432
    iget-object v2, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 433
    return-void

    .line 423
    :catch_20
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    :try_start_21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 427
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_28
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 411
    invoke-virtual {p0, p2, p3, p4, p5}, getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 412
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .prologue
    .line 399
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 400
    if-eqz p2, :cond_1d

    .line 401
    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 407
    :goto_1c
    return-void

    .line 404
    :cond_1d
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1c
.end method

.method public forcePersistLocked(J)V
    .registers 6
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 245
    iget-object v1, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 248
    :try_start_8
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 249
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 250
    iget-object v1, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_19} :catch_27

    .line 259
    :cond_19
    :goto_19
    return-void

    .line 251
    :catch_1a
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-direct {p0}, recoverFromWtf()V

    goto :goto_19

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    invoke-direct {p0}, recoverFromWtf()V

    goto :goto_19
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .registers 7

    .prologue
    .line 129
    iget-object v1, p0, mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_22

    iget-object v1, p0, mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection;

    move-object v0, v1

    .line 130
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_d
    if-nez v0, :cond_21

    .line 131
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3, v4, v5}, loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, mComplete:Ljava/lang/ref/WeakReference;

    .line 134
    :cond_21
    return-object v0

    .line 129
    .end local v0    # "res":Lcom/android/server/net/NetworkStatsCollection;
    :cond_22
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .registers 8
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 138
    iget-object v1, p0, mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_14

    iget-object v1, p0, mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection;

    move-object v0, v1

    .line 139
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_d
    if-nez v0, :cond_13

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 142
    :cond_13
    return-object v0

    .line 138
    .end local v0    # "res":Lcom/android/server/net/NetworkStatsCollection;
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .registers 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 119
    iget-object v0, p0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 366
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v6, p0, mBucketDuration:J

    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 367
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    .line 369
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v4

    .line 370
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v2

    .line 372
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 375
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 376
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 378
    :cond_2c
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 384
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v6, p0, mBucketDuration:J

    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 385
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    iget-boolean v1, p0, mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    .line 387
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v4

    .line 388
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v2

    .line 390
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 393
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 394
    iget-object v1, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 396
    :cond_2e
    return-void
.end method

.method public maybePersistLocked(J)V
    .registers 8
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 233
    iget-object v2, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    .line 234
    .local v0, "pendingBytes":J
    iget-wide v2, p0, mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    .line 235
    invoke-virtual {p0, p1, p2}, forcePersistLocked(J)V

    .line 239
    :goto_f
    return-void

    .line 237
    :cond_10
    iget-object v2, p0, mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    goto :goto_f
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V
    .registers 26
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p4, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v19

    .line 172
    .local v19, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 226
    :goto_6
    return-void

    .line 175
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v3, :cond_14

    .line 176
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mLastSnapshot:Landroid/net/NetworkStats;

    goto :goto_6

    .line 180
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection;

    move-object v13, v3

    .line 182
    .local v13, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_25
    move-object/from16 v0, p0

    iget-object v3, v0, mLastSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v5, v0, mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    move-object/from16 v0, p0

    iget-object v6, v0, mCookie:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5, v6}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v14

    .line 184
    .local v14, "delta":Landroid/net/NetworkStats;
    move-wide/from16 v10, p4

    .line 185
    .local v10, "end":J
    invoke-virtual {v14}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    sub-long v8, v10, v6

    .line 187
    .local v8, "start":J
    if-eqz p3, :cond_64

    .line 188
    move-object/from16 v2, p3

    .local v2, "arr$":[Lcom/android/internal/net/VpnInfo;
    array-length v0, v2

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_48
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_64

    aget-object v17, v2, v16

    .line 189
    .local v17, "info":Lcom/android/internal/net/VpnInfo;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    invoke-virtual {v14, v3, v5, v6}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;Ljava/lang/String;)Z

    .line 188
    add-int/lit8 v16, v16, 0x1

    goto :goto_48

    .line 180
    .end local v2    # "arr$":[Lcom/android/internal/net/VpnInfo;
    .end local v8    # "start":J
    .end local v10    # "end":J
    .end local v13    # "complete":Lcom/android/server/net/NetworkStatsCollection;
    .end local v14    # "delta":Landroid/net/NetworkStats;
    .end local v16    # "i$":I
    .end local v17    # "info":Lcom/android/internal/net/VpnInfo;
    .end local v18    # "len$":I
    :cond_62
    const/4 v13, 0x0

    goto :goto_25

    .line 193
    .restart local v8    # "start":J
    .restart local v10    # "end":J
    .restart local v13    # "complete":Lcom/android/server/net/NetworkStatsCollection;
    .restart local v14    # "delta":Landroid/net/NetworkStats;
    :cond_64
    const/4 v12, 0x0

    .line 194
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_66
    invoke-virtual {v14}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v15, v3, :cond_c6

    .line 195
    invoke-virtual {v14, v15, v12}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 196
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkIdentitySet;

    .line 197
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v4, :cond_86

    .line 198
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_83
    :goto_83
    add-int/lit8 v15, v15, 0x1

    goto :goto_66

    .line 203
    :cond_86
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_83

    .line 206
    iget v3, v12, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v3, :cond_c4

    const/4 v3, 0x1

    :goto_91
    move-object/from16 v0, p0

    iget-boolean v5, v0, mOnlyTags:Z

    if-eq v3, v5, :cond_83

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v3, :cond_b7

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 215
    :cond_b7
    if-eqz v13, :cond_83

    .line 216
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v3, v13

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_83

    .line 206
    :cond_c4
    const/4 v3, 0x0

    goto :goto_91

    .line 221
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    :cond_c6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mLastSnapshot:Landroid/net/NetworkStats;

    goto/16 :goto_6
.end method

.method public removeUidsLocked([I)V
    .registers 8
    .param p1, "uids"    # [I

    .prologue
    .line 268
    :try_start_0
    iget-object v2, p0, mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v4, p0, mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_35
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_c} :catch_57

    .line 278
    :goto_c
    iget-object v2, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 279
    iget-object v2, p0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 282
    iget-object v2, p0, mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v2, :cond_22

    .line 283
    iget-object v2, p0, mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, mLastSnapshot:Landroid/net/NetworkStats;

    .line 286
    :cond_22
    iget-object v2, p0, mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_79

    iget-object v2, p0, mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection;

    move-object v0, v2

    .line 287
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_2f
    if-eqz v0, :cond_34

    .line 288
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 290
    :cond_34
    return-void

    .line 269
    .end local v0    # "complete":Lcom/android/server/net/NetworkStatsCollection;
    :catch_35
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "NetworkStatsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem removing UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    invoke-direct {p0}, recoverFromWtf()V

    goto :goto_c

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :catch_57
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "NetworkStatsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem removing UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    invoke-direct {p0}, recoverFromWtf()V

    goto :goto_c

    .line 286
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_79
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public resetLocked()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, mLastSnapshot:Landroid/net/NetworkStats;

    .line 113
    iget-object v0, p0, mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 114
    iget-object v0, p0, mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 115
    iget-object v0, p0, mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 116
    return-void
.end method

.method public setPersistThreshold(J)V
    .registers 10
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 107
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, mPersistThresholdBytes:J

    .line 109
    return-void
.end method
