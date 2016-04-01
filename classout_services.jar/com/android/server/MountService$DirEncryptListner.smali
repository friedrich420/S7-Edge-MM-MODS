.class Lcom/android/server/MountService$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    .prologue
    .line 4063
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 13
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "operation"    # I
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "storage"    # I

    .prologue
    .line 4069
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEncryptionStatusChanged: volId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", operation = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    iget-object v2, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    invoke-static {v2, p1}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 4071
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_7c

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "done"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 4073
    :try_start_4a
    iget-object v2, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string/jumbo v3, "volume"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "moveMount"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4a .. :try_end_7c} :catch_9a

    .line 4079
    :cond_7c
    :goto_7c
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v2, "Mount"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 4080
    iget-object v2, p0, this$0:Lcom/android/server/MountService;

    iget-object v3, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->dirCryptoMntFinished(Ljava/lang/String;)V

    .line 4082
    :cond_99
    return-void

    .line 4074
    :catch_9a
    move-exception v0

    .line 4075
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Failed to excute moveMount"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c
.end method
