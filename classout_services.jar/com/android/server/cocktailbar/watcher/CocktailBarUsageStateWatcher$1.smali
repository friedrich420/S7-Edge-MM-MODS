.class Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;
.super Landroid/app/usage/IUsageStatsWatcher$Stub;
.source "CocktailBarUsageStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->registerUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHideEdgeServiceComponentCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V
    .registers 3

    .prologue
    .line 65
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, mVisible:Z

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "pauseComponentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 18
    .param p1, "resumeComponentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_d

    .line 72
    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "resumeComponentName is null"

    invoke-static {v11, v12}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_c
    return-void

    .line 75
    :cond_d
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$100(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "hideEdgeService":Z
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "resumePackageName":Ljava/lang/String;
    const/4 v10, 0x1

    .line 79
    .local v10, "visible":Z
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$200(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_67

    .line 80
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$300(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/app/ActivityManager;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    .line 81
    .local v9, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v9, :cond_57

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_57

    .line 82
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "packageName":Ljava/lang/String;
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$400(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v2, 0x1

    .line 88
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_57
    if-nez v2, :cond_67

    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$400(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v2, 0x1

    .line 93
    .end local v9    # "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_67
    if-nez v2, :cond_80

    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$200(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_80

    .line 94
    iget-object v11, p0, mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c1

    .line 95
    const/4 v10, 0x0

    .line 109
    :cond_80
    :goto_80
    iget-boolean v11, p0, mVisible:Z

    if-eq v11, v10, :cond_8f

    .line 110
    iput-boolean v10, p0, mVisible:Z

    .line 111
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$700(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangeVisibleEdgeService(Z)V

    .line 113
    :cond_8f
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$200(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v11

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_bb

    .line 114
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$800(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_ad

    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$800(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_bb

    .line 115
    :cond_ad
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # setter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v11, v7}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$802(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$700(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangedResumePackage(Ljava/lang/String;)V

    .line 119
    :cond_bb
    monitor-exit v12

    goto/16 :goto_c

    .end local v7    # "resumePackageName":Ljava/lang/String;
    .end local v10    # "visible":Z
    :catchall_be
    move-exception v11

    monitor-exit v12
    :try_end_c0
    .catchall {:try_start_15 .. :try_end_c0} :catchall_be

    throw v11

    .line 97
    .restart local v7    # "resumePackageName":Ljava/lang/String;
    .restart local v10    # "visible":Z
    :cond_c1
    :try_start_c1
    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$500(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 98
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 101
    .local v4, "metaData":Landroid/os/Bundle;
    if-eqz v4, :cond_d7

    iget-object v11, p0, this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    # getter for: Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$600(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d7

    .line 102
    iget-object v11, p0, mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_ff
    .catchall {:try_start_c1 .. :try_end_ff} :catchall_be

    .line 103
    const/4 v10, 0x0

    .line 104
    goto :goto_80
.end method
