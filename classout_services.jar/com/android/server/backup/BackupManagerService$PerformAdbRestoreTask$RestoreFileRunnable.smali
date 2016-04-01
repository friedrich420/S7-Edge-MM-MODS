.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreFileRunnable"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

.field mSocket:Landroid/os/ParcelFileDescriptor;

.field mToken:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .registers 7
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p4, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6154
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6155
    iput-object p2, p0, mAgent:Landroid/app/IBackupAgent;

    .line 6156
    iput-object p3, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .line 6157
    iput p5, p0, mToken:I

    .line 6164
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mSocket:Landroid/os/ParcelFileDescriptor;

    .line 6165
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 6170
    :try_start_0
    iget-object v1, p0, mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v3, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    iget-object v0, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    iget-object v0, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v0, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-object v0, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    iget-object v0, p0, mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    iget v12, p0, mToken:I

    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 6176
    :goto_27
    return-void

    .line 6173
    :catch_28
    move-exception v0

    goto :goto_27
.end method
