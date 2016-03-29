.class Lcom/android/settings/LockscreenNotificationApplist$4;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenNotificationApplist;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v27

    monitor-enter v27

    .line 424
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 425
    .local v22, "start":J
    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/LockscreenNotificationApplist;->access$700()Z

    move-result v26

    if-eqz v26, :cond_0

    const-string v26, "LockNotificationApplist"

    const-string v28, "Collecting apps..."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->clear()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$800(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v4, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$900(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v21

    .line 442
    .local v21, "tempAppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v26, Landroid/content/Intent;

    const-string v28, "android.intent.action.MAIN"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v28, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 445
    .local v14, "launchIntent":Landroid/content/Intent;
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 447
    .local v16, "mEntriesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$500(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/Context;

    move-result-object v26

    const-string v28, "user"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 448
    .local v17, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserHandle;

    .line 449
    .local v24, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v26

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 524
    .end local v4    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "launchIntent":Landroid/content/Intent;
    .end local v16    # "mEntriesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;>;"
    .end local v17    # "mUm":Landroid/os/UserManager;
    .end local v21    # "tempAppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v22    # "start":J
    .end local v24    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 453
    .restart local v4    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "launchIntent":Landroid/content/Intent;
    .restart local v16    # "mEntriesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;>;"
    .restart local v17    # "mUm":Landroid/os/UserManager;
    .restart local v21    # "tempAppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v22    # "start":J
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_7

    .line 454
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    .line 455
    .local v25, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$900(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v28, 0x200

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 457
    .local v12, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 458
    .local v15, "list":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 459
    .local v8, "hasLaunchEntry":Z
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v5, v0, :cond_3

    .line 460
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 461
    const/4 v8, 0x1

    .line 465
    :cond_3
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-nez v26, :cond_4

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_4

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_2

    .line 468
    :cond_4
    iget-boolean v0, v15, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 469
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 459
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 453
    .end local v5    # "count":I
    .end local v8    # "hasLaunchEntry":Z
    .end local v15    # "list":Landroid/content/pm/ApplicationInfo;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 492
    .end local v12    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "userId":I
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 493
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 494
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$900(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;

    move-result-object v26

    sget-object v28, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v11, v1}, Lcom/android/settings/LockscreenNotificationApplist;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/LockscreenNotificationApplist$Backend;)Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    move-result-object v19

    .line 500
    .local v19, "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 507
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "key":Ljava/lang/String;
    .end local v19    # "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$800(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v28, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/LockscreenNotificationApplist;->access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$1000(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 511
    const/16 v20, 0x0

    .line 512
    .local v20, "section":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$800(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    .line 513
    .local v18, "r":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # invokes: Lcom/android/settings/LockscreenNotificationApplist;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/LockscreenNotificationApplist;->access$1100(Lcom/android/settings/LockscreenNotificationApplist;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    .line 514
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 515
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$1000(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 519
    .end local v18    # "r":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/LockscreenNotificationApplist;->access$1300(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/os/Handler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v28, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/LockscreenNotificationApplist;->access$1200(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/lang/Runnable;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    sub-long v6, v28, v22

    .line 521
    .local v6, "elapsed":J
    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/LockscreenNotificationApplist;->access$700()Z

    move-result v26

    if-eqz v26, :cond_c

    const-string v26, "LockNotificationApplist"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Collected "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenNotificationApplist$4;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/android/settings/LockscreenNotificationApplist;->access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " apps in "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_c
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    return-void
.end method
