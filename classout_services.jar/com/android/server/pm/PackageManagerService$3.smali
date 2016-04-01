.class Lcom/android/server/pm/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .registers 7

    .prologue
    .line 4796
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$volumeUuid:Ljava/lang/String;

    iput-wide p3, p0, val$freeStorageSize:J

    iput-object p5, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 4798
    iget-object v2, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4799
    const-string v2, "PackageManager"

    const-string v3, "MSG"

    const-string v4, "FREE_STORAGE_AND_NOTIFY"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    const/4 v1, -0x1

    .line 4801
    .local v1, "retCode":I
    iget-object v2, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4802
    :try_start_1a
    iget-object v2, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v4, p0, val$volumeUuid:Ljava/lang/String;

    iget-wide v6, p0, val$freeStorageSize:J

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v1

    .line 4803
    if-gez v1, :cond_2f

    .line 4804
    const-string v2, "PackageManager"

    const-string v4, "Couldn\'t clear application caches"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    :cond_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_6f

    .line 4807
    iget-object v2, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_6e

    .line 4809
    :try_start_34
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result of freeStorageAndNotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    iget-object v3, p0, val$observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v4, 0x0

    if-ltz v1, :cond_72

    const/4 v2, 0x1

    :goto_6b
    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_6e} :catch_74

    .line 4816
    :cond_6e
    :goto_6e
    return-void

    .line 4806
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2

    .line 4811
    :cond_72
    const/4 v2, 0x0

    goto :goto_6b

    .line 4812
    :catch_74
    move-exception v0

    .line 4813
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "RemoveException when invoking call back"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method
