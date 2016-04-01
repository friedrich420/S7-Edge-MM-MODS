.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 6
    .param p2, "stats"    # Landroid/content/pm/PackageStats;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 15640
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15641
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15642
    iput-object p3, p0, mObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 15643
    iput-object p2, p0, mStats:Landroid/content/pm/PackageStats;

    .line 15644
    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/IPackageStatsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MeasureParams;

    .prologue
    .line 15634
    iget-object v0, p0, mObserver:Landroid/content/pm/IPackageStatsObserver;

    return-object v0
.end method


# virtual methods
.method handleReturnCode()V
    .registers 5

    .prologue
    .line 15719
    iget-object v1, p0, mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_d

    .line 15721
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 15726
    :cond_d
    :goto_d
    return-void

    .line 15722
    :catch_e
    move-exception v0

    .line 15723
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method handleServiceError()V
    .registers 4

    .prologue
    .line 15730
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15732
    return-void
.end method

.method handleStartCopy()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15655
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 15656
    :try_start_5
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v11, p0, mStats:Landroid/content/pm/PackageStats;

    iget v11, v11, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v12, p0, mStats:Landroid/content/pm/PackageStats;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    invoke-static {v8, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v8

    iput-boolean v8, p0, mSuccess:Z

    .line 15657
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_e8

    .line 15659
    iget-boolean v8, p0, mSuccess:Z

    if-eqz v8, :cond_e7

    .line 15661
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 15662
    const/4 v2, 0x1

    .line 15669
    .local v2, "mounted":Z
    :goto_23
    if-eqz v2, :cond_94

    .line 15670
    new-instance v7, Landroid/os/Environment$UserEnvironment;

    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget v8, v8, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v7, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 15672
    .local v7, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v9, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    iget-object v10, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 15675
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v9, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    iget-object v10, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 15679
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v9, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v12, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 15681
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v9, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    iget-object v10, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 15686
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v8, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v9, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    iget-object v12, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v12, v12, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v12

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v9, v12}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->codeSize:J

    .line 15692
    .end local v7    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_94
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const/16 v10, 0x80

    iget-object v11, p0, mStats:Landroid/content/pm/PackageStats;

    iget v11, v11, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 15693
    .local v3, "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_e7

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_e7

    .line 15694
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 15695
    .local v1, "infoBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_e7

    const-string/jumbo v8, "sdp"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e7

    .line 15696
    const-string/jumbo v8, "sdp"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15697
    .local v4, "sdpMetadata":Ljava/lang/String;
    const-string/jumbo v8, "enabled"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 15698
    const-string/jumbo v8, "sdp"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v5

    .line 15700
    .local v5, "sdpService":Lcom/sec/sdp/ISdpManagerService;
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget v8, v8, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v9, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v5, v8, v9}, Lcom/sec/sdp/ISdpManagerService;->getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v0

    .line 15701
    .local v0, "encPkgStats":Landroid/content/pm/PackageStats;
    if-nez v0, :cond_106

    .line 15702
    const-string v8, "PackageManager"

    const-string v9, "Failed to get enc pkg info.."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15715
    .end local v0    # "encPkgStats":Landroid/content/pm/PackageStats;
    .end local v1    # "infoBundle":Landroid/os/Bundle;
    .end local v2    # "mounted":Z
    .end local v3    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "sdpMetadata":Ljava/lang/String;
    .end local v5    # "sdpService":Lcom/sec/sdp/ISdpManagerService;
    :cond_e7
    :goto_e7
    return-void

    .line 15657
    :catchall_e8
    move-exception v8

    :try_start_e9
    monitor-exit v9
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v8

    .line 15664
    :cond_eb
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 15665
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_101

    const-string/jumbo v8, "mounted_ro"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_104

    :cond_101
    const/4 v2, 0x1

    .restart local v2    # "mounted":Z
    :goto_102
    goto/16 :goto_23

    .end local v2    # "mounted":Z
    :cond_104
    const/4 v2, 0x0

    goto :goto_102

    .line 15704
    .end local v6    # "status":Ljava/lang/String;
    .restart local v0    # "encPkgStats":Landroid/content/pm/PackageStats;
    .restart local v1    # "infoBundle":Landroid/os/Bundle;
    .restart local v2    # "mounted":Z
    .restart local v3    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "sdpMetadata":Ljava/lang/String;
    .restart local v5    # "sdpService":Lcom/sec/sdp/ISdpManagerService;
    :cond_106
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v8, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->dataSize:J

    .line 15705
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 15706
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 15707
    iget-object v8, p0, mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    goto :goto_e7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 15648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasureParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mStats:Landroid/content/pm/PackageStats;

    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
