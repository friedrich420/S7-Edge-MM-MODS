.class Lcom/android/server/pm/PackageManagerService$2;
.super Landroid/os/storage/StorageEventListener;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .prologue
    .line 2936
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 11
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 2974
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2975
    const-string v3, "PackageManager"

    const-string v4, "Forgetting internal storage is probably a mistake; ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :goto_d
    return-void

    .line 2980
    :cond_e
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2981
    :try_start_11
    iget-object v3, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2982
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2983
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because volume was forgotten"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    iget-object v3, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    new-instance v6, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_1d

    .line 2990
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_5d
    move-exception v3

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_5d

    throw v3

    .line 2988
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    :cond_60
    :try_start_60
    iget-object v3, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 2989
    iget-object v3, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2990
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_5d

    goto :goto_d
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2939
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v1, v4, :cond_26

    .line 2940
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v1, v2, :cond_48

    .line 2941
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 2945
    .local v0, "volumeUuid":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->reconcileUsers(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 2946
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->reconcileApps(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 2950
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 2952
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 2959
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :cond_26
    :goto_26
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_47

    .line 2960
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_47

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2961
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v1, v2, :cond_52

    .line 2962
    const-string v1, "PackageManager"

    const-string/jumbo v2, "sd card is mounted, updateExteranlMediaStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2970
    :cond_47
    :goto_47
    return-void

    .line 2954
    :cond_48
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v1, v5, :cond_26

    .line 2955
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    goto :goto_26

    .line 2964
    :cond_52
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v1, v5, :cond_47

    .line 2965
    const-string v1, "PackageManager"

    const-string/jumbo v2, "sd card is unmounted, updateExteranlMediaStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_47
.end method
