.class Lcom/android/server/pm/PackageManagerService$24;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
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
    .line 20251
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$packageName:Ljava/lang/String;

    iput p3, p0, val$userId:I

    iput-object p4, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 20253
    const-string v7, "PackageManager"

    const-string v8, "MSG"

    const-string v9, "DELETE_APPLICATION_CACHE_FILES"

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20254
    iget-object v7, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v7, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20256
    iget-object v7, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 20257
    :try_start_19
    iget-object v7, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, val$packageName:Ljava/lang/String;

    iget v10, p0, val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;I)Z
    invoke-static {v7, v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v6

    .line 20258
    .local v6, "succeded":Z
    monitor-exit v8
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_b6

    .line 20259
    iget-object v7, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, val$packageName:Ljava/lang/String;

    iget v9, p0, val$userId:I

    const/4 v10, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 20262
    iget-object v7, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, val$packageName:Ljava/lang/String;

    const/16 v9, 0x80

    iget v10, p0, val$userId:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 20263
    .local v3, "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_79

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_79

    .line 20264
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20265
    .local v1, "infoBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_79

    const-string/jumbo v7, "sdp"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_79

    .line 20266
    const-string/jumbo v7, "sdp"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20267
    .local v4, "sdpMetadata":Ljava/lang/String;
    const-string/jumbo v7, "enabled"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 20269
    :try_start_5d
    const-string/jumbo v7, "sdp"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v5

    .line 20271
    .local v5, "sdpService":Lcom/sec/sdp/ISdpManagerService;
    iget v7, p0, val$userId:I

    iget-object v8, p0, val$packageName:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lcom/sec/sdp/ISdpManagerService;->clearEncPkgCache(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 20272
    const-string v7, "PackageManager"

    const-string v8, "Failed to clear cache for enc pkg.."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_79} :catch_b9

    .line 20282
    .end local v1    # "infoBundle":Landroid/os/Bundle;
    .end local v4    # "sdpMetadata":Ljava/lang/String;
    .end local v5    # "sdpService":Lcom/sec/sdp/ISdpManagerService;
    :cond_79
    :goto_79
    iget-object v7, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v7, :cond_b5

    .line 20284
    :try_start_7d
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resultl of deleteCacheFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20286
    iget-object v7, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v8, p0, val$packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_b5} :catch_c2

    .line 20291
    :cond_b5
    :goto_b5
    return-void

    .line 20258
    .end local v3    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "succeded":Z
    :catchall_b6
    move-exception v7

    :try_start_b7
    monitor-exit v8
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v7

    .line 20274
    .restart local v1    # "infoBundle":Landroid/os/Bundle;
    .restart local v3    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "sdpMetadata":Ljava/lang/String;
    .restart local v6    # "succeded":Z
    :catch_b9
    move-exception v2

    .line 20275
    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "PackageManager"

    const-string v8, "RemoteException from call unregisterListener"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 20287
    .end local v1    # "infoBundle":Landroid/os/Bundle;
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local v4    # "sdpMetadata":Ljava/lang/String;
    :catch_c2
    move-exception v0

    .line 20288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "PackageManager"

    const-string v8, "Observer no longer exists."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5
.end method
