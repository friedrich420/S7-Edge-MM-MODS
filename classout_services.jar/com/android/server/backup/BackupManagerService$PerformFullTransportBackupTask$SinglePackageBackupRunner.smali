.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupRunner"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final mOutput:Landroid/os/ParcelFileDescriptor;

.field final mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field final mTarget:Landroid/content/pm/PackageInfo;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "target"    # Landroid/content/pm/PackageInfo;
    .param p4, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p5, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4593
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4594
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mOutput:Landroid/os/ParcelFileDescriptor;

    .line 4595
    iput-object p3, p0, mTarget:Landroid/content/pm/PackageInfo;

    .line 4596
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    invoke-direct {v0, p1, p4}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;)V

    iput-object v0, p0, mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 4597
    iput-object p5, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4598
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 4603
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v1, p0, mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4604
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, mTarget:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;ZIZ)V

    .line 4606
    .local v0, "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    iget-object v1, p0, mTarget:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_36
    .catchall {:try_start_0 .. :try_end_22} :catchall_65

    .line 4610
    iget-object v1, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4612
    :try_start_27
    iget-object v1, p0, mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 4617
    .end local v0    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_2c
    return-void

    .line 4613
    .restart local v0    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v8

    .line 4614
    .local v8, "e":Ljava/io/IOException;
    const-string v1, "PFTBT"

    const-string v3, "Error closing transport pipe in runner"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 4607
    .end local v0    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v8

    .line 4608
    .local v8, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v1, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during full package backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mTarget:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_65

    .line 4610
    iget-object v1, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4612
    :try_start_56
    iget-object v1, p0, mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5b} :catch_5c

    goto :goto_2c

    .line 4613
    :catch_5c
    move-exception v8

    .line 4614
    .local v8, "e":Ljava/io/IOException;
    const-string v1, "PFTBT"

    const-string v3, "Error closing transport pipe in runner"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 4610
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_65
    move-exception v1

    iget-object v3, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4612
    :try_start_6b
    iget-object v3, p0, mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71

    .line 4615
    :goto_70
    throw v1

    .line 4613
    :catch_71
    move-exception v8

    .line 4614
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v3, "PFTBT"

    const-string v4, "Error closing transport pipe in runner"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method
