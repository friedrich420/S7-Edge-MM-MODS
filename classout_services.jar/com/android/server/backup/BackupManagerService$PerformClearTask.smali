.class Lcom/android/server/backup/BackupManagerService$PerformClearTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 8649
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8650
    iput-object p2, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 8651
    iput-object p3, p0, mPackage:Landroid/content/pm/PackageInfo;

    .line 8652
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 8657
    :try_start_0
    new-instance v9, Ljava/io/File;

    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v1, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8658
    .local v9, "stateDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8659
    .local v10, "stateFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 8663
    iget-object v0, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    .line 8665
    const-string/jumbo v8, "unknown"

    .line 8666
    .local v8, "pack":Ljava/lang/String;
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_5c

    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 8667
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8669
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data wipeout of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5c} :catch_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_b1
    .catchall {:try_start_0 .. :try_end_5c} :catchall_114

    .line 8701
    :cond_5c
    :try_start_5c
    iget-object v0, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_128

    .line 8707
    :goto_61
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8709
    .end local v9    # "stateDir":Ljava/io/File;
    .end local v10    # "stateFile":Ljava/io/File;
    :goto_68
    return-void

    .line 8674
    .end local v8    # "pack":Ljava/lang/String;
    :catch_69
    move-exception v7

    .line 8677
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_6a
    const-string/jumbo v8, "unknown"

    .line 8678
    .restart local v8    # "pack":Ljava/lang/String;
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_a4

    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_a4

    .line 8679
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8681
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data wipeout of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a4
    .catchall {:try_start_6a .. :try_end_a4} :catchall_114

    .line 8701
    :cond_a4
    :try_start_a4
    iget-object v0, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_126

    .line 8707
    :goto_a9
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_68

    .line 8686
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "pack":Ljava/lang/String;
    :catch_b1
    move-exception v7

    .line 8687
    .local v7, "e":Ljava/lang/Exception;
    :try_start_b2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport threw attempting to clear data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8689
    const-string/jumbo v8, "unknown"

    .line 8690
    .restart local v8    # "pack":Ljava/lang/String;
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_106

    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_106

    .line 8691
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8693
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data wipeout of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_106
    .catchall {:try_start_b2 .. :try_end_106} :catchall_114

    .line 8701
    :cond_106
    :try_start_106
    iget-object v0, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10b} :catch_124

    .line 8707
    :goto_10b
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_68

    .line 8699
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "pack":Ljava/lang/String;
    :catchall_114
    move-exception v0

    .line 8701
    :try_start_115
    iget-object v1, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_115 .. :try_end_11a} :catch_122

    .line 8707
    :goto_11a
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 8702
    :catch_122
    move-exception v1

    goto :goto_11a

    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "pack":Ljava/lang/String;
    :catch_124
    move-exception v0

    goto :goto_10b

    .local v7, "e":Landroid/os/RemoteException;
    :catch_126
    move-exception v0

    goto :goto_a9

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v9    # "stateDir":Ljava/io/File;
    .restart local v10    # "stateFile":Ljava/io/File;
    :catch_128
    move-exception v0

    goto/16 :goto_61
.end method
