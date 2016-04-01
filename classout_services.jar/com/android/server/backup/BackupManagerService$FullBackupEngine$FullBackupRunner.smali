.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mExtraFlag:I

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[BI)V
    .registers 11
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "sendApk"    # Z
    .param p7, "writeManifest"    # Z
    .param p8, "widgetData"    # [B
    .param p9, "extraFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3517
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3518
    iput-object p2, p0, mPackage:Landroid/content/pm/PackageInfo;

    .line 3519
    iput-object p8, p0, mWidgetData:[B

    .line 3520
    iput-object p3, p0, mAgent:Landroid/app/IBackupAgent;

    .line 3521
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    .line 3522
    iput p5, p0, mToken:I

    .line 3523
    iput-boolean p6, p0, mSendApk:Z

    .line 3524
    iput-boolean p7, p0, mWriteManifest:Z

    .line 3525
    iput p9, p0, mExtraFlag:I

    .line 3526
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 3531
    :try_start_0
    new-instance v5, Landroid/app/backup/FullBackupDataOutput;

    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v5, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3533
    .local v5, "output":Landroid/app/backup/FullBackupDataOutput;
    iget-boolean v0, p0, mWriteManifest:Z

    if-eqz v0, :cond_6c

    .line 3534
    iget-object v0, p0, mWidgetData:[B

    if-eqz v0, :cond_bb

    const/4 v7, 0x1

    .line 3536
    .local v7, "writeWidgetData":Z
    :goto_10
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    iget-boolean v3, p0, mSendApk:Z

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1500(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    .line 3537
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3541
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3544
    if-eqz v7, :cond_6c

    .line 3545
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iget-object v3, p0, mWidgetData:[B

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1600(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    .line 3546
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3550
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3554
    .end local v7    # "writeWidgetData":Z
    :cond_6c
    iget v0, p0, mExtraFlag:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_b5

    .line 3555
    iget-boolean v0, p0, mSendApk:Z

    if-eqz v0, :cond_7d

    .line 3556
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    invoke-static {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1700(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    .line 3559
    :cond_7d
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling doFullBackup() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, mToken:I

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 3561
    iget-object v0, p0, mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, mToken:I

    iget-object v3, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b5} :catch_be
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b5} :catch_e3
    .catchall {:try_start_0 .. :try_end_b5} :catchall_108

    .line 3570
    :cond_b5
    :try_start_b5
    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_ba} :catch_111

    .line 3573
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :goto_ba
    return-void

    .line 3534
    .restart local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :cond_bb
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 3563
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :catch_be
    move-exception v6

    .line 3564
    .local v6, "e":Ljava/io/IOException;
    :try_start_bf
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running full backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_bf .. :try_end_db} :catchall_108

    .line 3570
    :try_start_db
    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e0} :catch_e1

    goto :goto_ba

    .line 3571
    :catch_e1
    move-exception v0

    goto :goto_ba

    .line 3565
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e3
    move-exception v6

    .line 3566
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_e4
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote agent vanished during full backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_e4 .. :try_end_100} :catchall_108

    .line 3570
    :try_start_100
    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_105} :catch_106

    goto :goto_ba

    .line 3571
    :catch_106
    move-exception v0

    goto :goto_ba

    .line 3569
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_108
    move-exception v0

    .line 3570
    :try_start_109
    iget-object v1, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10e} :catch_10f

    .line 3571
    :goto_10e
    throw v0

    :catch_10f
    move-exception v1

    goto :goto_10e

    .restart local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :catch_111
    move-exception v0

    goto :goto_ba
.end method
