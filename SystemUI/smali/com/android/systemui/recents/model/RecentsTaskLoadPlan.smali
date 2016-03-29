.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mActivityInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$ComponentNameKey;",
            "Lcom/android/systemui/recents/model/ActivityInfoHandle;",
            ">;"
        }
    .end annotation
.end field

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "RecentsTaskLoadPlan"

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 84
    iput-object p3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 85
    return-void
.end method


# virtual methods
.method declared-synchronized executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V
    .locals 21
    .param p1, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executePlan, # tasks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", # thumbnails: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", running task id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 247
    .local v6, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 248
    .local v16, "stackCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_10

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v20

    .line 250
    .local v20, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 251
    .local v19, "taskCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v11, v0, :cond_f

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 253
    .local v17, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/model/Task;

    .line 254
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 257
    .local v3, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v9

    .line 259
    .local v9, "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    const/4 v10, 0x0

    .line 260
    .local v10, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .line 262
    .local v7, "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    const/4 v10, 0x1

    .line 267
    :goto_2
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v2, v4, :cond_3

    const/4 v12, 0x1

    .line 268
    .local v12, "isRunningTask":Z
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v2, v19, v2

    if-lt v11, v2, :cond_4

    const/4 v13, 0x1

    .line 269
    .local v13, "isVisibleTask":Z
    :goto_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v2, v19, v2

    if-lt v11, v2, :cond_5

    const/4 v14, 0x1

    .line 272
    .local v14, "isVisibleThumbnail":Z
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v2, :cond_6

    if-eqz v12, :cond_6

    .line 251
    :cond_1
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 264
    .end local v7    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v12    # "isRunningTask":Z
    .end local v13    # "isVisibleTask":Z
    .end local v14    # "isVisibleThumbnail":Z
    :cond_2
    new-instance v7, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v7    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    goto :goto_2

    .line 267
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 268
    .restart local v12    # "isRunningTask":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 269
    .restart local v13    # "isVisibleTask":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 276
    .restart local v14    # "isVisibleThumbnail":Z
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v2, :cond_9

    if-nez v12, :cond_7

    if-eqz v13, :cond_9

    .line 277
    :cond_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    .line 278
    sget-boolean v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tLoading icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_8
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v8, 0x1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 283
    :cond_9
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v2, :cond_d

    if-nez v12, :cond_a

    if-eqz v14, :cond_d

    .line 284
    :cond_a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    if-eqz v12, :cond_d

    .line 285
    :cond_b
    sget-boolean v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tLoading thumbnail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v4, 0x1

    if-gt v2, v4, :cond_e

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 296
    :cond_d
    :goto_7
    if-nez v10, :cond_1

    iget-object v2, v7, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    .line 240
    .end local v3    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v10    # "hadCachedActivityInfo":Z
    .end local v11    # "i":I
    .end local v12    # "isRunningTask":Z
    .end local v13    # "isVisibleTask":Z
    .end local v14    # "isVisibleThumbnail":Z
    .end local v15    # "j":I
    .end local v16    # "stackCount":I
    .end local v17    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "taskCount":I
    .end local v20    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 289
    .restart local v3    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .restart local v9    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .restart local v10    # "hadCachedActivityInfo":Z
    .restart local v11    # "i":I
    .restart local v12    # "isRunningTask":Z
    .restart local v13    # "isVisibleTask":Z
    .restart local v14    # "isVisibleThumbnail":Z
    .restart local v15    # "j":I
    .restart local v16    # "stackCount":I
    .restart local v17    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v19    # "taskCount":I
    .restart local v20    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    .line 290
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 248
    .end local v3    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v7    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v10    # "hadCachedActivityInfo":Z
    .end local v12    # "isRunningTask":Z
    .end local v13    # "isVisibleTask":Z
    .end local v14    # "isVisibleThumbnail":Z
    .end local v17    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 301
    .end local v11    # "i":I
    .end local v19    # "taskCount":I
    .end local v20    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_10
    monitor-exit p0

    return-void
.end method

.method public getAllTaskStacks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 309
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 310
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    return-object v2
.end method

.method public getTaskStack(I)Lcom/android/systemui/recents/model/TaskStack;
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 3

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 329
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 331
    const/4 v2, 0x1

    .line 334
    :goto_1
    return v2

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method declared-synchronized preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;ZIZ)V
    .locals 46
    .param p1, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "displayId"    # I
    .param p4, "blockToGetPopupThumbnail"    # Z

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    const-string v6, "preloadPlan"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect(I)Landroid/graphics/Rect;

    move-result-object v31

    .line 114
    .local v31, "displayBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 115
    .local v37, "res":Landroid/content/res/Resources;
    new-instance v43, Landroid/util/SparseArray;

    invoke-direct/range {v43 .. v43}, Landroid/util/SparseArray;-><init>()V

    .line 116
    .local v43, "stacksTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v4, :cond_1

    .line 122
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(ZI)V

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v45

    .line 126
    .local v45, "taskCount":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_e

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 130
    .local v44, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v44

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v44

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v44

    iget-object v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v44

    iget v9, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v44

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v44

    iget-wide v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    .line 134
    .local v5, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->setOrigActivity(Landroid/content/ComponentName;)V

    .line 138
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v30

    .line 140
    .local v30, "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    const/16 v34, 0x0

    .line 141
    .local v34, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .line 143
    .local v9, "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    const/16 v34, 0x1

    .line 149
    :goto_1
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;

    move-result-object v15

    .line 151
    .local v15, "activityLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v15, v4, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v8, v37

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 155
    .local v17, "activityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I

    move-result v18

    .line 158
    .local v18, "activityColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Landroid/content/pm/ActivityInfo;

    move-result-object v24

    .line 159
    .local v24, "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v25

    .line 163
    .local v25, "isMultiWindowVisible":Z
    if-nez v34, :cond_2

    iget-object v4, v9, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_2
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_7

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 170
    .local v21, "icon":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_8

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v22

    .line 175
    .local v22, "iconFilename":Ljava/lang/String;
    :goto_3
    new-instance v10, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v44

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v6, Lcom/android/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    if-eq v4, v6, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, v44

    iget v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v44

    iget v14, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    add-int/lit8 v4, v45, -0x1

    move/from16 v0, v35

    if-ne v0, v4, :cond_a

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v4, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    move/from16 v20, v0

    :goto_6
    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    move/from16 v26, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->dualScreenTaskInfo:Lcom/samsung/android/dualscreen/TaskInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isSecretMode:Z

    move/from16 v28, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->fullscreen:Z

    move/from16 v29, v0

    move-object v11, v5

    invoke-direct/range {v10 .. v29}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/pm/ActivityInfo;ZILcom/samsung/android/dualscreen/TaskInfo;ZZ)V

    .line 183
    .local v10, "task":Lcom/android/systemui/recents/model/Task;
    const/16 v33, 0x0

    .line 184
    .local v33, "getForceThumbnail":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, v45, -0x1

    move/from16 v0, v35

    if-ne v0, v4, :cond_d

    iget-object v4, v10, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v4, :cond_d

    iget-object v4, v10, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 187
    if-nez p4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    if-nez v4, :cond_c

    const/16 v33, 0x1

    .line 188
    :goto_7
    sget-object v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getForceThumbnail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v10, v4, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 194
    :goto_8
    sget-boolean v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tthumbnail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v4, :cond_4

    .line 198
    :cond_4
    const/16 v32, 0x0

    .line 199
    .local v32, "firstStackId":I
    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    .line 200
    .local v42, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    if-nez v42, :cond_5

    .line 201
    new-instance v42, Ljava/util/ArrayList;

    .end local v42    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .restart local v42    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, v43

    move/from16 v1, v32

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    :cond_5
    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_0

    .line 145
    .end local v9    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "activityLabel":Ljava/lang/String;
    .end local v16    # "contentDescription":Ljava/lang/String;
    .end local v17    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "activityColor":I
    .end local v21    # "icon":Landroid/graphics/Bitmap;
    .end local v22    # "iconFilename":Ljava/lang/String;
    .end local v24    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "isMultiWindowVisible":Z
    .end local v32    # "firstStackId":I
    .end local v33    # "getForceThumbnail":Z
    .end local v42    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_6
    new-instance v9, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v9}, Lcom/android/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v9    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    goto/16 :goto_1

    .line 167
    .restart local v15    # "activityLabel":Ljava/lang/String;
    .restart local v16    # "contentDescription":Ljava/lang/String;
    .restart local v17    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "activityColor":I
    .restart local v24    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "isMultiWindowVisible":Z
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 170
    .restart local v21    # "icon":Landroid/graphics/Bitmap;
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 175
    .restart local v22    # "iconFilename":Ljava/lang/String;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 187
    .restart local v10    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v33    # "getForceThumbnail":Z
    :cond_c
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 192
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    .line 106
    .end local v5    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v9    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "activityLabel":Ljava/lang/String;
    .end local v16    # "contentDescription":Ljava/lang/String;
    .end local v17    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "activityColor":I
    .end local v21    # "icon":Landroid/graphics/Bitmap;
    .end local v22    # "iconFilename":Ljava/lang/String;
    .end local v24    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "isMultiWindowVisible":Z
    .end local v30    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v31    # "displayBounds":Landroid/graphics/Rect;
    .end local v33    # "getForceThumbnail":Z
    .end local v34    # "hadCachedActivityInfo":Z
    .end local v35    # "i":I
    .end local v37    # "res":Landroid/content/res/Resources;
    .end local v43    # "stacksTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;>;"
    .end local v44    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v45    # "taskCount":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 216
    .restart local v31    # "displayBounds":Landroid/graphics/Rect;
    .restart local v35    # "i":I
    .restart local v37    # "res":Landroid/content/res/Resources;
    .restart local v43    # "stacksTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;>;"
    .restart local v45    # "taskCount":I
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAllStackInfos()Landroid/util/SparseArray;

    move-result-object v41

    .line 217
    .local v41, "stackInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/ActivityManager$StackInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 218
    invoke-virtual/range {v43 .. v43}, Landroid/util/SparseArray;->size()I

    move-result v39

    .line 219
    .local v39, "stackCount":I
    const/16 v35, 0x0

    :goto_9
    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_f

    .line 220
    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v40

    .line 221
    .local v40, "stackId":I
    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$StackInfo;

    .line 222
    .local v36, "info":Landroid/app/ActivityManager$StackInfo;
    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    .line 223
    .restart local v42    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v38, Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;-><init>(I)V

    .line 225
    .local v38, "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 229
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Ljava/util/List;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Lcom/android/systemui/recents/RecentsConfiguration;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStacks:Landroid/util/SparseArray;

    move/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    add-int/lit8 v35, v35, 0x1

    goto :goto_9

    .line 233
    .end local v36    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v38    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v40    # "stackId":I
    .end local v42    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_f
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized preloadRawTasks(ZI)V
    .locals 3
    .param p1, "isTopTaskHome"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 95
    sget-boolean v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadRawTasks, tasks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
