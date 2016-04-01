.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 3530
    iput-object p1, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iput-object p2, p0, val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 3533
    iget-object v4, p0, val$uri:Landroid/net/Uri;

    if-eqz v4, :cond_9b

    .line 3534
    iget-object v4, p0, val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3535
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_9b

    .line 3537
    :try_start_d
    iget-object v4, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3538
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_9b

    .line 3539
    iget-object v4, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3540
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_9b

    .line 3541
    iget-object v4, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    iget-object v4, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_4b
    const/4 v1, 0x1

    .line 3543
    .local v1, "blackListedPkg":Z
    :cond_4c
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt;->isApplicationUid(I)Z

    move-result v4

    if-eqz v4, :cond_9b

    if-nez v1, :cond_9b

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_9b

    .line 3545
    iget-object v4, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_67} :catch_9f

    .line 3546
    :try_start_67
    iget-object v4, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3547
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_9c

    .line 3548
    :try_start_77
    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is added to mUserAppList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_9b} :catch_9f

    .line 3556
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "blackListedPkg":Z
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_9b
    :goto_9b
    return-void

    .line 3547
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "blackListedPkg":Z
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pkgName":Ljava/lang/String;
    :catchall_9c
    move-exception v4

    :try_start_9d
    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v4
    :try_end_9f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9e .. :try_end_9f} :catch_9f

    .line 3552
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "blackListedPkg":Z
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_9f
    move-exception v4

    goto :goto_9b
.end method
