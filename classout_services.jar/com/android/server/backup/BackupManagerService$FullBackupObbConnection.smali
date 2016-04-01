.class Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupObbConnection"
.end annotation


# instance fields
.field volatile mService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 3

    .prologue
    .line 3338
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3339
    const/4 v0, 0x0

    iput-object v0, p0, mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3340
    return-void
.end method

.method private waitForConnection()V
    .registers 2

    .prologue
    .line 3397
    monitor-enter p0

    .line 3398
    :goto_1
    :try_start_1
    iget-object v0, p0, mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 3401
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    .line 3402
    :catch_9
    move-exception v0

    goto :goto_1

    .line 3405
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 3406
    return-void

    .line 3405
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3356
    const/4 v2, 0x0

    .line 3357
    .local v2, "success":Z
    invoke-direct {p0}, waitForConnection()V

    .line 3359
    const/4 v1, 0x0

    .line 3361
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3362
    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v3

    .line 3363
    .local v3, "token":I
    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v6, 0x493e0

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v6, v7, v5}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 3364
    iget-object v4, p0, mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    iget-object v7, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, v5, v6, v3, v7}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 3365
    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    # invokes: Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J
    invoke-static {v4, v5, p2}, Lcom/android/server/backup/BackupManagerService;->access$1400(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J

    .line 3366
    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_59
    .catchall {:try_start_5 .. :try_end_33} :catchall_97

    move-result v2

    .line 3371
    :try_start_34
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3372
    if-eqz v1, :cond_4f

    .line 3373
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_44

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3374
    :cond_44
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4f} :catch_50

    .line 3380
    .end local v3    # "token":I
    :cond_4f
    :goto_4f
    return v2

    .line 3376
    .restart local v3    # "token":I
    :catch_50
    move-exception v0

    .line 3377
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 3367
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "token":I
    :catch_59
    move-exception v0

    .line 3368
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to back up OBBs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_97

    .line 3371
    :try_start_72
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3372
    if-eqz v1, :cond_4f

    .line 3373
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_82

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3374
    :cond_82
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8d} :catch_8e

    goto :goto_4f

    .line 3376
    :catch_8e
    move-exception v0

    .line 3377
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 3370
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_97
    move-exception v4

    .line 3371
    :try_start_98
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3372
    if-eqz v1, :cond_b3

    .line 3373
    const/4 v5, 0x0

    aget-object v5, v1, v5

    if-eqz v5, :cond_a8

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3374
    :cond_a8
    const/4 v5, 0x1

    aget-object v5, v1, v5

    if-eqz v5, :cond_b3

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_b3} :catch_b4

    .line 3378
    :cond_b3
    :goto_b3
    throw v4

    .line 3376
    :catch_b4
    move-exception v0

    .line 3377
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b3
.end method

.method public establish()V
    .registers 6

    .prologue
    .line 3344
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.sharedstoragebackup"

    const-string v4, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3347
    .local v0, "obbIntent":Landroid/content/Intent;
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3349
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3410
    monitor-enter p0

    .line 3411
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3414
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3415
    monitor-exit p0

    .line 3416
    return-void

    .line 3415
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3420
    monitor-enter p0

    .line 3421
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3423
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3424
    monitor-exit p0

    .line 3425
    return-void

    .line 3424
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 30
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 3386
    invoke-direct/range {p0 .. p0}, waitForConnection()V

    .line 3389
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    .line 3394
    :goto_1c
    return-void

    .line 3391
    :catch_1d
    move-exception v2

    .line 3392
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to restore OBBs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public tearDown()V
    .registers 2

    .prologue
    .line 3352
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3353
    return-void
.end method
