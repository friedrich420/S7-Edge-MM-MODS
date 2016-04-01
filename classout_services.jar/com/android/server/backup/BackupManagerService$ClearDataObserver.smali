.class Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 2393
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 2395
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2396
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    .line 2397
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2398
    monitor-exit v1

    .line 2399
    return-void

    .line 2398
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method
