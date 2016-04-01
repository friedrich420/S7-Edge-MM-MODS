.class Lcom/android/server/pm/PackageManagerService$22;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 5

    .prologue
    .line 19957
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$packageName:Ljava/lang/String;

    iput p3, p0, val$userId:I

    iput-object p4, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 19959
    const-string v8, "PackageManager"

    const-string v9, "MSG"

    const-string v10, "CLEAR_APPLICATION_USER_DATA"

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19960
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v8, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19962
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 19963
    :try_start_19
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, val$packageName:Ljava/lang/String;

    iget v11, p0, val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;I)Z
    invoke-static {v8, v10, v11}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v7

    .line 19964
    .local v7, "succeeded":Z
    monitor-exit v9
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_c5

    .line 19965
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, val$packageName:Ljava/lang/String;

    iget v10, p0, val$userId:I

    const/4 v11, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 19968
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, val$packageName:Ljava/lang/String;

    const/16 v10, 0x80

    iget v11, p0, val$userId:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 19969
    .local v4, "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_79

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_79

    .line 19970
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 19971
    .local v2, "infoBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_79

    const-string/jumbo v8, "sdp"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_79

    .line 19972
    const-string/jumbo v8, "sdp"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19973
    .local v5, "sdpMetadata":Ljava/lang/String;
    const-string/jumbo v8, "enabled"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 19975
    :try_start_5d
    const-string/jumbo v8, "sdp"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v6

    .line 19977
    .local v6, "sdpService":Lcom/sec/sdp/ISdpManagerService;
    iget v8, p0, val$userId:I

    iget-object v9, p0, val$packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Lcom/sec/sdp/ISdpManagerService;->clearEncPkgData(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_79

    .line 19978
    const-string v8, "PackageManager"

    const-string v9, "Failed to clear data for enc pkg.."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_79} :catch_c8

    .line 19988
    .end local v2    # "infoBundle":Landroid/os/Bundle;
    .end local v5    # "sdpMetadata":Ljava/lang/String;
    .end local v6    # "sdpService":Lcom/sec/sdp/ISdpManagerService;
    :cond_79
    :goto_79
    if-eqz v7, :cond_88

    .line 19991
    const-class v8, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19992
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_88

    .line 19993
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 19996
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_88
    iget-object v8, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v8, :cond_c4

    .line 19998
    :try_start_8c
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "result of install: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20000
    iget-object v8, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v9, p0, val$packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_c4} :catch_d1

    .line 20005
    :cond_c4
    :goto_c4
    return-void

    .line 19964
    .end local v4    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "succeeded":Z
    :catchall_c5
    move-exception v8

    :try_start_c6
    monitor-exit v9
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v8

    .line 19980
    .restart local v2    # "infoBundle":Landroid/os/Bundle;
    .restart local v4    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "sdpMetadata":Ljava/lang/String;
    .restart local v7    # "succeeded":Z
    :catch_c8
    move-exception v3

    .line 19981
    .local v3, "re":Landroid/os/RemoteException;
    const-string v8, "PackageManager"

    const-string v9, "RemoteException from call unregisterListener"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 20001
    .end local v2    # "infoBundle":Landroid/os/Bundle;
    .end local v3    # "re":Landroid/os/RemoteException;
    .end local v5    # "sdpMetadata":Ljava/lang/String;
    :catch_d1
    move-exception v1

    .line 20002
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "PackageManager"

    const-string v9, "Observer no longer exists."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4
.end method
