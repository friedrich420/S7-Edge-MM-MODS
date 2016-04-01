.class Lcom/android/server/backup/BackupManagerService$EdmFullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFullObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 10350
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/backup/BackupManagerService$1;

    .prologue
    .line 10350
    invoke-direct {p0, p1}, <init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10359
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onBackupPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10360
    return-void
.end method

.method public onEndBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10364
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onEndBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10365
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 10366
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3500(Lcom/android/server/backup/BackupManagerService;I)V

    .line 10369
    :goto_16
    return-void

    .line 10368
    :cond_17
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3500(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_16
.end method

.method public onEndRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10383
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onEndRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10384
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreFail:Z
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$2700(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 10385
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3600(Lcom/android/server/backup/BackupManagerService;I)V

    .line 10388
    :goto_16
    return-void

    .line 10387
    :cond_17
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3600(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_16
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10378
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onRestorePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10379
    return-void
.end method

.method public onStartBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10354
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10355
    return-void
.end method

.method public onStartRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10373
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onStartRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10374
    return-void
.end method

.method public onTimeout()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 10392
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10393
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 10394
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->access$3500(Lcom/android/server/backup/BackupManagerService;I)V

    .line 10398
    :goto_16
    return-void

    .line 10396
    :cond_17
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->access$3600(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_16
.end method
