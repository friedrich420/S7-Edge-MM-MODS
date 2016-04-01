.class Lcom/android/server/notification/NotificationManagerService$13;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
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

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$reasonClear:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIIZ)V
    .registers 14

    .prologue
    .line 3387
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, val$callingUid:I

    iput p4, p0, val$callingPid:I

    iput-object p5, p0, val$pkg:Ljava/lang/String;

    iput p6, p0, val$id:I

    iput-object p7, p0, val$tag:Ljava/lang/String;

    iput p8, p0, val$userId:I

    iput p9, p0, val$mustHaveFlags:I

    iput p10, p0, val$mustNotHaveFlags:I

    iput p11, p0, val$reason:I

    iput p12, p0, val$reasonClear:I

    iput-boolean p13, p0, val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 3390
    iget-object v0, p0, val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_6f

    const/4 v9, 0x0

    .line 3391
    .local v9, "listenerName":Ljava/lang/String;
    :goto_5
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1e

    iget v0, p0, val$callingUid:I

    iget v1, p0, val$callingPid:I

    iget-object v2, p0, val$pkg:Ljava/lang/String;

    iget v3, p0, val$id:I

    iget-object v4, p0, val$tag:Ljava/lang/String;

    iget v5, p0, val$userId:I

    iget v6, p0, val$mustHaveFlags:I

    iget v7, p0, val$mustNotHaveFlags:I

    iget v8, p0, val$reason:I

    invoke-static/range {v0 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3394
    :cond_1e
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3395
    :try_start_23
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, val$pkg:Ljava/lang/String;

    iget-object v3, p0, val$tag:Ljava/lang/String;

    iget v4, p0, val$id:I

    iget v5, p0, val$userId:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v12

    .line 3396
    .local v12, "index":I
    if-ltz v12, :cond_af

    .line 3397
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3401
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    iget v0, p0, val$reason:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_60

    .line 3402
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 3404
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityManagerService;

    .line 3407
    .local v11, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v11, :cond_60

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v0, :cond_60

    .line 3408
    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, p0, val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->handelNotificationBarClicked(Ljava/lang/String;)V

    .line 3413
    .end local v11    # "am":Lcom/android/server/am/ActivityManagerService;
    :cond_60
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, val$mustHaveFlags:I

    and-int/2addr v0, v2

    iget v2, p0, val$mustHaveFlags:I

    if-eq v0, v2, :cond_78

    .line 3414
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_23 .. :try_end_6e} :catchall_85

    .line 3430
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_6e
    return-void

    .line 3390
    .end local v9    # "listenerName":Ljava/lang/String;
    .end local v12    # "index":I
    :cond_6f
    iget-object v0, p0, val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 3416
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v9    # "listenerName":Ljava/lang/String;
    .restart local v12    # "index":I
    :cond_78
    :try_start_78
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, val$mustNotHaveFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_88

    .line 3417
    monitor-exit v1

    goto :goto_6e

    .line 3429
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v12    # "index":I
    :catchall_85
    move-exception v0

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_78 .. :try_end_87} :catchall_85

    throw v0

    .line 3420
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v12    # "index":I
    :cond_88
    :try_start_88
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v2, p0, val$reasonClear:I

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReasonClear:I
    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->access$6502(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3423
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3424
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v2, p0, val$sendDelete:Z

    iget v3, p0, val$reason:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    invoke-static {v0, v6, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3425
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v7, p0, val$callingUid:I

    iget v8, p0, val$callingPid:I

    const/16 v10, 0xc

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3427
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3429
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_88 .. :try_end_b0} :catchall_85

    goto :goto_6e
.end method
