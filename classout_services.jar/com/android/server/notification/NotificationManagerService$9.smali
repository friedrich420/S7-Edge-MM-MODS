.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V
    .registers 12

    .prologue
    .line 2478
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, val$notification:Landroid/app/Notification;

    iput-object p3, p0, val$pkg:Ljava/lang/String;

    iput p4, p0, val$callingUid:I

    iput-object p5, p0, val$opPkg:Ljava/lang/String;

    iput p6, p0, val$id:I

    iput-object p7, p0, val$tag:Ljava/lang/String;

    iput p8, p0, val$callingPid:I

    iput-object p9, p0, val$user:Landroid/os/UserHandle;

    iput p10, p0, val$userId:I

    iput-boolean p11, p0, val$isSystemNotification:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 2482
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2487
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v4, v0, val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2490
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_35

    .line 2491
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_35

    .line 2492
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2501
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, val$callingUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2502
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v3, :cond_5e

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2505
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "headsup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2510
    :cond_6b
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v3, 0xa

    .line 2513
    .local v9, "score":I
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v3, v0, val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, val$opPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, val$user:Landroid/os/UserHandle;

    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2516
    .local v2, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v23, Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v9}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;I)V

    .line 2517
    .local v23, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/notification/NotificationRecord;

    .line 2518
    .local v21, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v21, :cond_b8

    .line 2520
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 2525
    :cond_b8
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, val$callingPid:I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 2526
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, val$callingPid:I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/notification/NotificationManagerService;->removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v19

    .line 2531
    .local v19, "ignoreNotification":Z
    move-object/from16 v0, p0

    iget-object v3, v0, val$pkg:Ljava/lang/String;

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    const-string v3, "DownloadManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 2533
    :cond_f4
    const/16 v17, 0x0

    .line 2534
    .local v17, "enqueueStatus":I
    if-eqz v19, :cond_121

    .line 2535
    const/16 v17, 0x2

    .line 2539
    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget v10, v0, val$callingUid:I

    move-object/from16 v0, p0

    iget v11, v0, val$callingPid:I

    move-object/from16 v0, p0

    iget-object v12, v0, val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, val$id:I

    move-object/from16 v0, p0

    iget-object v14, v0, val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, val$userId:I

    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v10 .. v17}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 2544
    .end local v17    # "enqueueStatus":I
    :cond_11d
    if-eqz v19, :cond_126

    .line 2545
    monitor-exit v26

    .line 2625
    :goto_120
    return-void

    .line 2536
    .restart local v17    # "enqueueStatus":I
    :cond_121
    if-eqz v21, :cond_fa

    .line 2537
    const/16 v17, 0x1

    goto :goto_fa

    .line 2548
    .end local v17    # "enqueueStatus":I
    :cond_126
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, val$callingUid:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_180

    .line 2554
    move-object/from16 v0, p0

    iget-boolean v3, v0, val$isSystemNotification:Z

    if-nez v3, :cond_180

    .line 2555
    const/16 v3, -0x3e8

    move-object/from16 v0, v23

    iput v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    .line 2556
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Suppressing notification from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by user request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2562
    :cond_180
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    const/16 v4, -0x14

    if-ge v3, v4, :cond_18d

    .line 2564
    monitor-exit v26

    goto :goto_120

    .line 2624
    .end local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "score":I
    .end local v19    # "ignoreNotification":Z
    .end local v21    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_18a
    move-exception v3

    monitor-exit v26
    :try_end_18c
    .catchall {:try_start_9 .. :try_end_18c} :catchall_18a

    throw v3

    .line 2567
    .restart local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v9    # "score":I
    .restart local v19    # "ignoreNotification":Z
    .restart local v21    # "old":Lcom/android/server/notification/NotificationRecord;
    .restart local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_18d
    :try_start_18d
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v20

    .line 2568
    .local v20, "index":I
    if-gez v20, :cond_226

    .line 2569
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 2588
    :goto_1b3
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1d6

    .line 2593
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2597
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2598
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1f3
    .catchall {:try_start_18d .. :try_end_1f3} :catchall_18a

    move-result-wide v24

    .line 2603
    .local v24, "token":J
    :try_start_1f4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_1f7
    .catchall {:try_start_1f4 .. :try_end_1f7} :catchall_268

    move-result v18

    .line 2605
    .local v18, "currentUser":I
    :try_start_1f8
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_270

    .line 2609
    if-eqz v21, :cond_26d

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    .line 2610
    .local v22, "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_20d
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 2623
    .end local v22    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_21a
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2624
    monitor-exit v26

    goto/16 :goto_120

    .line 2579
    .end local v18    # "currentUser":I
    .end local v24    # "token":J
    :cond_226
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "old":Lcom/android/server/notification/NotificationRecord;
    check-cast v21, Lcom/android/server/notification/NotificationRecord;

    .line 2580
    .restart local v21    # "old":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2581
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v3, v0, val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2585
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    goto/16 :goto_1b3

    .line 2605
    .restart local v24    # "token":J
    :catchall_268
    move-exception v3

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2609
    .restart local v18    # "currentUser":I
    :cond_26d
    const/16 v22, 0x0

    goto :goto_20d

    .line 2612
    :cond_270
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not posting notification without small icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, val$notification:Landroid/app/Notification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    if-eqz v21, :cond_29f

    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v3, :cond_29f

    .line 2614
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 2619
    :cond_29f
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bb
    .catchall {:try_start_1f8 .. :try_end_2bb} :catchall_18a

    goto/16 :goto_21a
.end method
