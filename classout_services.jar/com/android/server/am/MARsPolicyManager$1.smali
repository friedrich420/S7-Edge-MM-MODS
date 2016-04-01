.class Lcom/android/server/am/MARsPolicyManager$1;
.super Landroid/service/notification/NotificationListenerService;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 2

    .prologue
    .line 465
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .registers 3

    .prologue
    .line 468
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_b

    .line 469
    const-string v0, "MARsPolicyManager"

    const-string v1, "NotificationListenerService onListenerConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_b
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 474
    if-nez p1, :cond_3

    .line 489
    :cond_2
    :goto_2
    return-void

    .line 478
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x22

    if-eqz v1, :cond_2

    .line 481
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_2d

    .line 482
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationListenerService OngoingNotificationPosted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2d
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 493
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 496
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_2c

    .line 497
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationListenerService OngoingNotificationRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_2c
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 500
    :cond_35
    return-void
.end method
