.class public abstract Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.super Landroid/app/Activity;
.source "RecentsSynchronizerActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;
    }
.end annotation


# static fields
.field public static final SAFE_DEBUG:Z

.field private static mIsFolding:Z

.field private static mIsTaskViewSnapped:Z

.field private static mRecentsActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsSynchronizerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static mSwitchAppsHideRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsOrientationRequested:Z

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->SAFE_DEBUG:Z

    .line 48
    sput-boolean v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mSwitchAppsHideRequesters:Ljava/util/ArrayList;

    .line 528
    sput-boolean v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsTaskViewSnapped:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    .line 58
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismiss()V

    .line 415
    return-void
.end method

.method protected dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->dismissRecentsToFocusedTaskOrHome(ZZ)Z

    move-result v0

    return v0
.end method

.method protected dismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "blockToEnterFocusedTask"    # Z

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method public onAllTaskViewsDismissed()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performAllTaskViewsDismissed()V

    .line 313
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "tv"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performTaskViewClicked()V

    .line 267
    return-void
.end method

.method public onTaskViewFixBtnClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 283
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method protected abstract performAllTaskViewsDismissed()V
.end method

.method protected abstract performDismiss()V
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
.end method

.method protected abstract performTaskViewClicked()V
.end method

.method requestUpdateRecentsLayout(I)V
    .locals 22
    .param p1, "screenState"    # I

    .prologue
    .line 341
    sget-object v21, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v21

    .line 342
    :try_start_0
    const-string v19, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 343
    .local v8, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v7

    .line 344
    .local v7, "displays":[Landroid/view/Display;
    const/4 v4, 0x1

    .line 345
    .local v4, "allTaskRemoved":Z
    const/4 v13, 0x1

    .line 346
    .local v13, "mainTaskRemoved":Z
    const/16 v18, 0x1

    .line 348
    .local v18, "subTaskRemoved":Z
    move-object v5, v7

    .local v5, "arr$":[Landroid/view/Display;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v6, v5, v10

    .line 349
    .local v6, "display":Landroid/view/Display;
    sget-object v19, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 350
    .local v3, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v3, :cond_2

    .line 351
    check-cast v3, Lcom/android/systemui/recents/RecentsActivity;

    .end local v3    # "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    iget-object v0, v3, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 352
    .local v16, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    if-eqz v16, :cond_2

    .line 353
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 354
    .local v14, "numStacks":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v14, :cond_2

    .line 355
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack;

    .line 356
    .local v15, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v19

    if-eqz v19, :cond_0

    .line 357
    const/4 v4, 0x0

    .line 358
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v19

    if-nez v19, :cond_1

    .line 359
    const/4 v13, 0x0

    .line 354
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 361
    const/16 v18, 0x0

    goto :goto_2

    .line 348
    .end local v9    # "i":I
    .end local v14    # "numStacks":I
    .end local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 373
    .end local v6    # "display":Landroid/view/Display;
    :cond_3
    sget-object v19, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 374
    .local v12, "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    sget-object v19, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 375
    .local v17, "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 376
    if-eqz v12, :cond_5

    .line 377
    check-cast v12, Lcom/android/systemui/recents/RecentsActivity;

    .end local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v4, :cond_4

    if-eqz v13, :cond_7

    :cond_4
    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_3
    if-nez v4, :cond_8

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V

    .line 379
    :cond_5
    if-eqz v17, :cond_6

    .line 380
    check-cast v17, Lcom/android/systemui/recents/RecentsActivity;

    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v4, :cond_9

    if-eqz v18, :cond_9

    const/16 v19, 0x1

    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V

    .line 391
    :cond_6
    :goto_6
    monitor-exit v21

    .line 392
    return-void

    .line 377
    .restart local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_7
    const/16 v19, 0x0

    move/from16 v20, v19

    goto :goto_3

    :cond_8
    const/16 v19, 0x0

    goto :goto_4

    .line 380
    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_9
    const/16 v19, 0x0

    goto :goto_5

    .line 382
    .restart local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .restart local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_a
    if-nez p1, :cond_c

    .line 383
    if-eqz v12, :cond_6

    .line 384
    check-cast v12, Lcom/android/systemui/recents/RecentsActivity;

    .end local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v13, :cond_b

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    invoke-virtual {v12, v13, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V

    goto :goto_6

    .line 391
    .end local v4    # "allTaskRemoved":Z
    .end local v5    # "arr$":[Landroid/view/Display;
    .end local v7    # "displays":[Landroid/view/Display;
    .end local v8    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "mainTaskRemoved":Z
    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .end local v18    # "subTaskRemoved":Z
    :catchall_0
    move-exception v19

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 384
    .restart local v4    # "allTaskRemoved":Z
    .restart local v5    # "arr$":[Landroid/view/Display;
    .restart local v7    # "displays":[Landroid/view/Display;
    .restart local v8    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "mainTaskRemoved":Z
    .restart local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .restart local v18    # "subTaskRemoved":Z
    :cond_b
    const/16 v19, 0x0

    goto :goto_7

    .line 386
    .restart local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_c
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 387
    if-eqz v17, :cond_6

    .line 388
    :try_start_1
    check-cast v17, Lcom/android/systemui/recents/RecentsActivity;

    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v18, :cond_d

    const/16 v19, 0x1

    :goto_8
    invoke-virtual/range {v17 .. v19}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_d
    const/16 v19, 0x0

    goto :goto_8
.end method

.method public updateSwitchAppsVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 585
    const/16 v0, 0x8

    return v0
.end method
