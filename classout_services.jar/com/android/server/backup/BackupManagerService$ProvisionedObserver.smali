.class Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 404
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    .line 405
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 406
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 409
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v1, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 410
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 412
    .local v0, "isProvisioned":Z
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    if-nez v1, :cond_10

    if-eqz v0, :cond_36

    :cond_10
    const/4 v2, 0x1

    :goto_11
    iput-boolean v2, v3, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 418
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 419
    :try_start_18
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_34

    if-nez v1, :cond_34

    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_34

    .line 422
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 423
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 425
    :cond_34
    monitor-exit v3

    .line 426
    return-void

    .line 412
    :cond_36
    const/4 v2, 0x0

    goto :goto_11

    .line 425
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_38

    throw v2
.end method
