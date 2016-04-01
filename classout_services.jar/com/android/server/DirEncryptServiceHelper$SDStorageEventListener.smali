.class Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDStorageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DirEncryptServiceHelper;
    .param p2, "x1"    # Lcom/android/server/DirEncryptServiceHelper$1;

    .prologue
    .line 298
    invoke-direct {p0, p1}, <init>(Lcom/android/server/DirEncryptServiceHelper;)V

    return-void
.end method


# virtual methods
.method public onUsbMassStorageConnectionChanged(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "volOldState"    # I
    .param p3, "volNewState"    # I

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-nez v5, :cond_29

    .line 306
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not SD card:: vol.getType() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 343
    :cond_28
    :goto_28
    return-void

    .line 309
    :cond_29
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "oldState":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "newState":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newState is a same state with oldState:: newState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , oldState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 314
    :cond_5e
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/dirEncryption/DirEncryptionWrapper;->setExternalSDvolId(Ljava/lang/String;)V

    .line 315
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/dirEncryption/DirEncryptionWrapper;->setExternalSDvolFsUuid(Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->setExternalSDvolState(Ljava/lang/String;)V

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, "preventMetaCheckSDcard":Z
    const-string/jumbo v5, "vold.decrypt"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "voldProperty":Ljava/lang/String;
    const-string/jumbo v5, "trigger_default_encryption"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 321
    :cond_99
    const/4 v3, 0x1

    .line 324
    :cond_9a
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v5

    if-nez v5, :cond_111

    .line 325
    if-eqz v2, :cond_111

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_111

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onVolumeStateChanged:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , oldstate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 327
    if-nez v3, :cond_111

    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$500(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result v5

    if-nez v5, :cond_103

    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    const-string/jumbo v5, "removed"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_111

    .line 329
    :cond_103
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$100(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_111
    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 334
    const-string v5, "MEDIA_UNMOUNTED + mDew.getUserDiff = true"

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 338
    :try_start_135
    iget-object v5, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13e} :catch_140

    goto/16 :goto_28

    .line 339
    :catch_140
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_28
.end method
