.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V
    .registers 16
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 4267
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4268
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4269
    iput-boolean p4, p0, mUpdateSchedule:Z

    .line 4270
    iput-object p6, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4271
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4272
    iput-object p5, p0, mJob:Lcom/android/server/backup/FullBackupJob;

    .line 4273
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, p3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, mPackages:Ljava/util/ArrayList;

    .line 4275
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1e
    if-ge v2, v4, :cond_7e

    aget-object v5, v0, v2

    .line 4277
    .local v5, "pkg":Ljava/lang/String;
    :try_start_22
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 4279
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3e

    const-string v6, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 4275
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 4288
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_41
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_4f

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_3e

    .line 4296
    :cond_4f
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-nez v6, :cond_3e

    .line 4305
    iget-object v6, p0, mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_5d} :catch_5e

    goto :goto_3e

    .line 4306
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_5e
    move-exception v1

    .line 4307
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 4310
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_7e
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4499
    if-eqz p1, :cond_1b

    .line 4500
    aget-object v2, p1, v3

    if-eqz v2, :cond_10

    .line 4501
    aget-object v1, p1, v3

    .line 4502
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v5, p1, v3

    .line 4504
    :try_start_d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c

    .line 4509
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_10
    :goto_10
    aget-object v2, p1, v4

    if-eqz v2, :cond_1b

    .line 4510
    aget-object v1, p1, v4

    .line 4511
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v5, p1, v4

    .line 4513
    :try_start_18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_25

    .line 4519
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    :goto_1b
    return-void

    .line 4505
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1c
    move-exception v0

    .line 4506
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PFTBT"

    const-string v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4514
    .end local v0    # "e":Ljava/io/IOException;
    :catch_25
    move-exception v0

    .line 4515
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "PFTBT"

    const-string v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public run()V
    .registers 25

    .prologue
    .line 4319
    const/4 v13, 0x0

    .line 4322
    .local v13, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v20, 0x0

    .line 4325
    .local v20, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v10, 0x0

    .line 4328
    .local v10, "backoff":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v3, :cond_a8

    .line 4331
    :cond_15
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "full backup requested but e="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, " p="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, "; ignoring"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mUpdateSchedule:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_65} :catch_31e
    .catchall {:try_start_5 .. :try_end_65} :catchall_3b5

    .line 4477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4478
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_7e

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4484
    :cond_7e
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4485
    :try_start_85
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4486
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_a5

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4492
    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateSchedule:Z

    if-eqz v3, :cond_a4

    .line 4493
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4496
    :cond_a4
    :goto_a4
    return-void

    .line 4486
    :catchall_a5
    move-exception v3

    :try_start_a6
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v3

    .line 4338
    :cond_a8
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    .line 4339
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v6, :cond_102

    .line 4340
    const-string v3, "PFTBT"

    const-string v4, "Transport not present; full data backup not performed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bf} :catch_31e
    .catchall {:try_start_a8 .. :try_end_bf} :catchall_3b5

    .line 4477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4478
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_d8

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4484
    :cond_d8
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4485
    :try_start_df
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4486
    monitor-exit v4
    :try_end_ea
    .catchall {:try_start_df .. :try_end_ea} :catchall_ff

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4492
    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateSchedule:Z

    if-eqz v3, :cond_a4

    .line 4493
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_a4

    .line 4486
    :catchall_ff
    move-exception v3

    :try_start_100
    monitor-exit v4
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v3

    .line 4345
    :cond_102
    :try_start_102
    move-object/from16 v0, p0

    iget-object v3, v0, mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4346
    .local v8, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_10b
    if-ge v15, v8, :cond_367

    .line 4347
    move-object/from16 v0, p0

    iget-object v3, v0, mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 4349
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Initiating full-data transport backup of "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    const/16 v3, 0xb18

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4355
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v20

    .line 4358
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-interface {v6, v5, v3}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v19

    .line 4360
    .local v19, "result":I
    if-nez v19, :cond_211

    .line 4363
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4364
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v20, v3

    .line 4367
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 4368
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4369
    .local v7, "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/4 v3, 0x1

    aget-object v4, v13, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;Ljava/util/concurrent/CountDownLatch;)V

    .line 4373
    .local v2, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4374
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v13, v3

    .line 4378
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "package-backup-bridge"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 4382
    new-instance v16, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4384
    .local v16, "in":Ljava/io/FileInputStream;
    new-instance v18, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4386
    .local v18, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x2000

    new-array v9, v3, [B

    .line 4387
    .local v9, "buffer":[B
    const/16 v17, 0x0

    .line 4389
    .local v17, "nRead":I
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v3, v0, mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_27c

    .line 4391
    const-string v3, "PFTBT"

    const-string v4, "Full backup task told to stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :cond_1b1
    :goto_1b1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 4408
    move-object/from16 v0, p0

    iget-object v3, v0, mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_298

    .line 4409
    const/16 v19, -0x3e8

    .line 4410
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 4426
    :cond_1c3
    :goto_1c3
    if-eqz v19, :cond_1f3

    .line 4427
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, " backing up "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    :cond_1f3
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v10

    .line 4435
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Transport suggested backoff="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    .end local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "buffer":[B
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v17    # "nRead":I
    .end local v18    # "out":Ljava/io/FileOutputStream;
    :cond_211
    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateSchedule:Z

    if-eqz v3, :cond_226

    .line 4443
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 4447
    :cond_226
    const/16 v3, -0x3ea

    move/from16 v0, v19

    if-ne v0, v3, :cond_2a2

    .line 4449
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Transport rejected backup of "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, ", skipping"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    const/16 v3, 0xb19

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v21, 0x0

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v4, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "transport rejected"

    aput-object v22, v4, v21

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4466
    :goto_26b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4467
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4468
    const/4 v5, 0x0

    .line 4346
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_10b

    .line 4395
    .restart local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v9    # "buffer":[B
    .restart local v16    # "in":Ljava/io/FileInputStream;
    .restart local v17    # "nRead":I
    .restart local v18    # "out":Ljava/io/FileOutputStream;
    :cond_27c
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .line 4399
    if-lez v17, :cond_292

    .line 4400
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v9, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4401
    move/from16 v0, v17

    invoke-interface {v6, v0}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v19

    .line 4403
    :cond_292
    if-lez v17, :cond_1b1

    if-eqz v19, :cond_1a0

    goto/16 :goto_1b1

    .line 4416
    :cond_298
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v14

    .line 4417
    .local v14, "finishResult":I
    if-nez v19, :cond_1c3

    .line 4418
    move/from16 v19, v14

    goto/16 :goto_1c3

    .line 4456
    .end local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "buffer":[B
    .end local v14    # "finishResult":I
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v17    # "nRead":I
    .end local v18    # "out":Ljava/io/FileOutputStream;
    :cond_2a2
    if-eqz v19, :cond_30c

    .line 4457
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Transport failed; aborting backup: "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    const/16 v3, 0xb1a

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_2c8} :catch_31e
    .catchall {:try_start_102 .. :try_end_2c8} :catchall_3b5

    .line 4477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4478
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_2e1

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4484
    :cond_2e1
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4485
    :try_start_2e8
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4486
    monitor-exit v4
    :try_end_2f3
    .catchall {:try_start_2e8 .. :try_end_2f3} :catchall_309

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4492
    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateSchedule:Z

    if-eqz v3, :cond_a4

    .line 4493
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_a4

    .line 4486
    :catchall_309
    move-exception v3

    :try_start_30a
    monitor-exit v4
    :try_end_30b
    .catchall {:try_start_30a .. :try_end_30b} :catchall_309

    throw v3

    .line 4462
    :cond_30c
    const/16 v3, 0xb1b

    :try_start_30e
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4464
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_31c} :catch_31e
    .catchall {:try_start_30e .. :try_end_31c} :catchall_3b5

    goto/16 :goto_26b

    .line 4474
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "N":I
    .end local v15    # "i":I
    .end local v19    # "result":I
    :catch_31e
    move-exception v12

    .line 4475
    .local v12, "e":Ljava/lang/Exception;
    :try_start_31f
    const-string v3, "PFTBT"

    const-string v4, "Exception trying full transport backup"

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_326
    .catchall {:try_start_31f .. :try_end_326} :catchall_3b5

    .line 4477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4478
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_33f

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4484
    :cond_33f
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4485
    :try_start_346
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4486
    monitor-exit v4
    :try_end_351
    .catchall {:try_start_346 .. :try_end_351} :catchall_3b2

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4492
    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateSchedule:Z

    if-eqz v3, :cond_a4

    .line 4493
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_a4

    .line 4472
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "N":I
    .restart local v15    # "i":I
    :cond_367
    :try_start_367
    const-string v3, "PFTBT"

    const-string v4, "Full backup completed."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36e
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_36e} :catch_31e
    .catchall {:try_start_367 .. :try_end_36e} :catchall_3b5

    .line 4477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4478
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_387

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4484
    :cond_387
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4485
    :try_start_38e
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4486
    monitor-exit v4
    :try_end_399
    .catchall {:try_start_38e .. :try_end_399} :catchall_3af

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4492
    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateSchedule:Z

    if-eqz v3, :cond_a4

    .line 4493
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_a4

    .line 4486
    :catchall_3af
    move-exception v3

    :try_start_3b0
    monitor-exit v4
    :try_end_3b1
    .catchall {:try_start_3b0 .. :try_end_3b1} :catchall_3af

    throw v3

    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "N":I
    .end local v15    # "i":I
    .restart local v12    # "e":Ljava/lang/Exception;
    :catchall_3b2
    move-exception v3

    :try_start_3b3
    monitor-exit v4
    :try_end_3b4
    .catchall {:try_start_3b3 .. :try_end_3b4} :catchall_3b2

    throw v3

    .line 4477
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_3b5
    move-exception v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4478
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v4, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v4, :cond_3cf

    .line 4481
    move-object/from16 v0, p0

    iget-object v4, v0, mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v4}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4484
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4485
    :try_start_3d6
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4486
    monitor-exit v4
    :try_end_3e5
    .catchall {:try_start_3d6 .. :try_end_3e5} :catchall_3fa

    .line 4488
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4492
    move-object/from16 v0, p0

    iget-boolean v4, v0, mUpdateSchedule:Z

    if-eqz v4, :cond_3f9

    .line 4493
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_3f9
    throw v3

    .line 4486
    :catchall_3fa
    move-exception v3

    :try_start_3fb
    monitor-exit v4
    :try_end_3fc
    .catchall {:try_start_3fb .. :try_end_3fc} :catchall_3fa

    throw v3
.end method

.method public setRunning(Z)V
    .registers 3
    .param p1, "running"    # Z

    .prologue
    .line 4313
    iget-object v0, p0, mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4314
    return-void
.end method
