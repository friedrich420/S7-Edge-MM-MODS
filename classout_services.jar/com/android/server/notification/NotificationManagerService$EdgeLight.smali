.class Lcom/android/server/notification/NotificationManagerService$EdgeLight;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLight"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 4814
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .prologue
    .line 4814
    invoke-direct {p0, p1}, <init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .registers 6

    .prologue
    .line 4841
    const-string v2, "EdgeLight"

    const-string v3, "Turning off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4844
    .local v0, "edgeNotificationData":Landroid/os/Bundle;
    const-string/jumbo v2, "samsung.people.notification_type"

    const-string/jumbo v3, "led_indicator"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4846
    iget-object v2, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4847
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 4848
    return-void
.end method

.method public turnOn(Lcom/android/server/notification/NotificationRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 4816
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 4818
    .local v0, "edgeLightNoti":Landroid/app/Notification;
    iget v2, v0, Landroid/app/Notification;->ledARGB:I

    .line 4819
    .local v2, "ledARGB":I
    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    .line 4820
    .local v4, "ledOnMS":I
    iget v3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 4821
    .local v3, "ledOffMS":I
    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_24

    .line 4822
    iget-object v6, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    .line 4823
    iget-object v6, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v4

    .line 4824
    iget-object v6, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v3

    .line 4827
    :cond_24
    const-string v6, "EdgeLight"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning on edge light for notification ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") with color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4831
    .local v1, "edgeNotificationData":Landroid/os/Bundle;
    const-string/jumbo v6, "samsung.people.notification_type"

    const-string/jumbo v7, "led_indicator"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4832
    const-string/jumbo v6, "samsung.people.color"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4836
    iget-object v6, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4837
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v5, v7, v1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->enqueueEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 4838
    return-void
.end method
