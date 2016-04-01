.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field volatile mService:Lcom/android/server/backup/BackupManagerService;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 56
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    new-instance v1, Ljava/io/File;

    const-string v2, "backup-suppress"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, mSuppressFile:Ljava/io/File;

    .line 60
    const-string/jumbo v1, "ro.backup.disable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, mGlobalDisable:Z

    .line 61
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 12
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 305
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_c

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 309
    :cond_c
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 153
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 156
    :cond_7
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 161
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    .line 164
    :cond_7
    return-void
.end method

.method public backupNow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 219
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 220
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    .line 222
    :cond_7
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 4
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 401
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 402
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 357
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 145
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 146
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_7
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 136
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChanged(Ljava/lang/String;)V

    .line 139
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 388
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "BackupManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 391
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_11

    .line 392
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 396
    :goto_10
    return-void

    .line 394
    :cond_11
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method endFullBackup()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 407
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 408
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->endFullBackup()V

    .line 410
    :cond_7
    return-void
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "allApps"    # Z
    .param p7, "allIncludesSystem"    # Z
    .param p8, "doCompress"    # Z
    .param p9, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 230
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_14

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 231
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/backup/BackupManagerService;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 234
    :cond_14
    return-void
.end method

.method public fullBackupEx(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 258
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    .line 259
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->fullBackupEx(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 262
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 276
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 277
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 279
    :cond_7
    return-void
.end method

.method public fullRestoreEx(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 295
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 296
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullRestoreEx(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 298
    :cond_7
    return-void
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 268
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 269
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    .line 271
    :cond_7
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 383
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v2

    :goto_8
    return-wide v2

    :cond_9
    const-wide/16 v2, 0x0

    goto :goto_8
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 332
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 314
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 344
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 350
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 338
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public hasBackupPassword()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 213
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public initialize(I)V
    .registers 5
    .param p1, "whichUser"    # I

    .prologue
    .line 66
    if-nez p1, :cond_d

    .line 68
    iget-boolean v0, p0, mGlobalDisable:Z

    if-eqz v0, :cond_e

    .line 69
    const-string v0, "BackupManagerService"

    const-string v1, "Backup/restore not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_d
    :goto_d
    return-void

    .line 73
    :cond_e
    monitor-enter p0

    .line 74
    :try_start_f
    iget-object v0, p0, mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    .line 75
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    iput-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 79
    :goto_20
    monitor-exit p0

    goto :goto_d

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw v0

    .line 77
    :cond_25
    :try_start_25
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup inactive in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_22

    goto :goto_20
.end method

.method public isBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 201
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled()Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isBackupServiceActive(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p1, :cond_a

    .line 125
    monitor-enter p0

    .line 126
    :try_start_4
    iget-object v1, p0, mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit p0

    .line 129
    :cond_a
    return v0

    .line 127
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 320
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public opComplete(IJ)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 363
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opComplete(IJ)V

    .line 366
    :cond_7
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 169
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    .line 172
    :cond_7
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 326
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setAutoRestore(Z)V
    .registers 3
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 185
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(Z)V

    .line 188
    :cond_7
    return-void
.end method

.method public setBackupEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 177
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 178
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(Z)V

    .line 180
    :cond_7
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 207
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setBackupProvisioned(Z)V
    .registers 3
    .param p1, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 193
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_7

    .line 194
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupProvisioned(Z)V

    .line 196
    :cond_7
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "makeActive"    # Z

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 86
    .local v0, "caller":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_12

    if-eqz v0, :cond_12

    .line 88
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No permission to configure backup activity"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_12
    iget-boolean v2, p0, mGlobalDisable:Z

    if-eqz v2, :cond_1e

    .line 92
    const-string v2, "BackupManagerService"

    const-string v3, "Backup/restore not supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1d
    :goto_1d
    return-void

    .line 96
    :cond_1e
    if-nez p1, :cond_1d

    .line 97
    monitor-enter p0

    .line 98
    :try_start_21
    invoke-virtual {p0, p1}, isBackupServiceActive(I)Z

    move-result v2

    if-eq p2, v2, :cond_5d

    .line 99
    const-string v3, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Making backup "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_62

    const-string v2, ""

    :goto_38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "active in user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p2, :cond_66

    .line 102
    new-instance v2, Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    iput-object v2, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 103
    iget-object v2, p0, mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 113
    :cond_5d
    :goto_5d
    monitor-exit p0

    goto :goto_1d

    :catchall_5f
    move-exception v2

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_21 .. :try_end_61} :catchall_5f

    throw v2

    .line 99
    :cond_62
    :try_start_62
    const-string/jumbo v2, "in"

    goto :goto_38

    .line 105
    :cond_66
    const/4 v2, 0x0

    iput-object v2, p0, mService:Lcom/android/server/backup/BackupManagerService;
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_5f

    .line 107
    :try_start_69
    iget-object v2, p0, mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6e} :catch_6f
    .catchall {:try_start_69 .. :try_end_6e} :catchall_5f

    goto :goto_5d

    .line 108
    :catch_6f
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    :try_start_70
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_5f

    goto :goto_5d
.end method

.method public setupEdmBackupRestore(ZLjava/lang/String;I)Z
    .registers 6
    .param p1, "isBackup"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 375
    iget-object v0, p0, mService:Lcom/android/server/backup/BackupManagerService;

    .line 376
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->setupEdmBackupRestore(ZLjava/lang/String;I)Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method
