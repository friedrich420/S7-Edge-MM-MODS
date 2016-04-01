.class Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 4826
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-wide p2, p0, val$freeStorageSize:J

    iput-object p4, p0, val$pi:Landroid/content/IntentSender;

    iput-object p5, p0, val$volumeUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 4828
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4829
    const-string v0, "PackageManager"

    const-string v1, "MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FREE_STORAGE: freeStorageSize{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, val$freeStorageSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IntentSender{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, val$pi:Landroid/content/IntentSender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    const/4 v7, -0x1

    .line 4834
    .local v7, "retCode":I
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4835
    :try_start_47
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v3, p0, val$volumeUuid:Ljava/lang/String;

    iget-wide v4, p0, val$freeStorageSize:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v7

    .line 4836
    if-gez v7, :cond_5c

    .line 4837
    const-string v0, "PackageManager"

    const-string v3, "Couldn\'t clear application caches"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :cond_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_6e

    .line 4840
    iget-object v0, p0, val$pi:Landroid/content/IntentSender;

    if-eqz v0, :cond_6d

    .line 4843
    if-ltz v7, :cond_71

    const/4 v2, 0x1

    .line 4844
    .local v2, "code":I
    :goto_64
    :try_start_64
    iget-object v0, p0, val$pi:Landroid/content/IntentSender;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_6d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_64 .. :try_end_6d} :catch_73

    .line 4850
    .end local v2    # "code":I
    :cond_6d
    :goto_6d
    return-void

    .line 4839
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 4843
    :cond_71
    const/4 v2, 0x0

    goto :goto_64

    .line 4846
    .restart local v2    # "code":I
    :catch_73
    move-exception v6

    .line 4847
    .local v6, "e1":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "PackageManager"

    const-string v1, "Failed to send pending intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method
