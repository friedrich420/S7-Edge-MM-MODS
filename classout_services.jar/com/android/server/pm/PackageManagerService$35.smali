.class Lcom/android/server/pm/PackageManagerService$35;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$measurePath:Ljava/io/File;

.field final synthetic val$moveId:I

.field final synthetic val$sizeBytes:J

.field final synthetic val$startFreeBytes:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 9

    .prologue
    .line 23632
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, val$startFreeBytes:J

    iput-object p5, p0, val$measurePath:Ljava/io/File;

    iput-wide p6, p0, val$sizeBytes:J

    iput p8, p0, val$moveId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-wide/16 v4, 0x50

    .line 23637
    :goto_2
    :try_start_2
    iget-object v0, p0, val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_f

    move-result v0

    if-eqz v0, :cond_10

    .line 23648
    return-void

    .line 23640
    :catch_f
    move-exception v0

    .line 23643
    :cond_10
    iget-wide v0, p0, val$startFreeBytes:J

    iget-object v2, p0, val$measurePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 23644
    .local v6, "deltaFreeBytes":J
    mul-long v0, v6, v4

    iget-wide v2, p0, val$sizeBytes:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v8, v0, 0xa

    .line 23646
    .local v8, "progress":I
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v0

    iget v1, p0, val$moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v0, v1, v8}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_2
.end method
