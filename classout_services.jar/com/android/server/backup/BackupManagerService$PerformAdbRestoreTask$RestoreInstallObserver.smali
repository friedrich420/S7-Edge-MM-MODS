.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreInstallObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPackageName:Ljava/lang/String;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V
    .registers 3

    .prologue
    .line 6736
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 6737
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method getResult()I
    .registers 2

    .prologue
    .line 6758
    iget v0, p0, mResult:I

    return v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6764
    iget-object v1, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 6765
    :try_start_3
    iput p2, p0, mResult:I

    .line 6766
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 6767
    iget-object v0, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6768
    iget-object v0, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6769
    monitor-exit v1

    .line 6770
    return-void

    .line 6769
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 6742
    iget-object v1, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 6743
    :try_start_3
    iget-object v0, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6744
    monitor-exit v1

    .line 6745
    return-void

    .line 6744
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public waitForCompletion()V
    .registers 3

    .prologue
    .line 6748
    iget-object v1, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 6749
    :goto_3
    :try_start_3
    iget-object v0, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 6751
    :try_start_b
    iget-object v0, p0, mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 6752
    :catch_11
    move-exception v0

    goto :goto_3

    .line 6754
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 6755
    return-void

    .line 6754
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method
