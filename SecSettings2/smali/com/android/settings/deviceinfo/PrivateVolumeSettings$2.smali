.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$100(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$300(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$200(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    # setter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$102(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 730
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 732
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$100(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    # setter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$102(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 722
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 724
    :cond_0
    return-void
.end method
