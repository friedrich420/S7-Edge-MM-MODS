.class final Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;
.super Landroid/app/ActivityManagerInternal$SleepToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SleepTokenImpl"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 5
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 28579
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal$SleepToken;-><init>()V

    .line 28580
    iput-object p2, p0, mTag:Ljava/lang/String;

    .line 28581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mAcquireTime:J

    .line 28582
    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .prologue
    .line 28586
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 28587
    :try_start_3
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 28600
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 28602
    :cond_12
    monitor-exit v1

    .line 28603
    return-void

    .line 28602
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mAcquireTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
