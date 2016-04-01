.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/BackupManagerService;

.field mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .param p2, "manager"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 10161
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10162
    iput-object p2, p0, mBackupManager:Lcom/android/server/backup/BackupManagerService;

    .line 10163
    iput-object p3, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10164
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 10168
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v1

    .line 10169
    :try_start_3
    iget-object v0, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$3402(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 10170
    iget-object v0, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 10171
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    .line 10175
    iget-object v0, p0, mBackupManager:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    .line 10176
    return-void

    .line 10171
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
