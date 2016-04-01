.class Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Measurement"
.end annotation


# static fields
.field private static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final SUCCEEDED:Ljava/lang/String; = "SUCCEEDED"


# instance fields
.field public description:Ljava/lang/String;

.field public finishTime:J

.field public result:Ljava/lang/String;

.field public startTime:J

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

.field public thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V
    .registers 3

    .prologue
    .line 110
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, ""

    iput-object v0, p0, description:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, result:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkDiagnostics$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    return-void
.end method

.method private maybeFixupTimes()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 140
    iget-wide v0, p0, finishTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    # invokes: Lcom/android/server/connectivity/NetworkDiagnostics;->now()J
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, finishTime:J

    .line 144
    :cond_e
    iget-wide v0, p0, startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iget-wide v0, p0, finishTime:J

    iput-wide v0, p0, startTime:J

    .line 145
    :cond_18
    return-void
.end method


# virtual methods
.method public recordFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, maybeFixupTimes()V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, result:Ljava/lang/String;

    .line 132
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 133
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 135
    :cond_29
    return-void
.end method

.method public recordSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, maybeFixupTimes()V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUCCEEDED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, result:Ljava/lang/String;

    .line 124
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 125
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 127
    :cond_29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, finishTime:J

    iget-wide v4, p0, startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
