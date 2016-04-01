.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .registers 2

    .prologue
    .line 476
    iput-object p1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 479
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "AlarmManagerEXT"

    const-string v6, "ACTION_BOOT_COMPLETED"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_d
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 484
    :try_start_14
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z

    move-result v5

    if-eqz v5, :cond_99

    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 485
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_99

    .line 486
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_95

    .line 488
    :try_start_31
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 489
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_98

    .line 490
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 491
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    if-ne v5, v8, :cond_52

    .line 489
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 492
    :cond_52
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4f

    .line 493
    const/4 v1, 0x1

    .line 494
    .local v1, "forWhiteListing":Z
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v5

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7f

    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v5

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 496
    :cond_7f
    const/4 v1, 0x0

    .line 499
    :cond_80
    if-eqz v1, :cond_4f

    .line 500
    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 504
    .end local v1    # "forWhiteListing":Z
    .end local v2    # "i":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_92
    move-exception v5

    monitor-exit v7
    :try_end_94
    .catchall {:try_start_31 .. :try_end_94} :catchall_92

    :try_start_94
    throw v5

    .line 507
    :catchall_95
    move-exception v5

    monitor-exit v6
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_95

    throw v5

    .line 504
    .restart local v2    # "i":I
    .restart local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_98
    :try_start_98
    monitor-exit v7
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_92

    .line 507
    .end local v2    # "i":I
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_99
    :try_start_99
    monitor-exit v6
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_95

    .line 512
    const-string v5, "account"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 513
    .local v0, "am":Landroid/accounts/AccountManager;
    if-eqz v0, :cond_af

    iget-object v5, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 514
    :cond_af
    return-void
.end method
