.class Lcom/android/settings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 88
    const-string v1, "onNotificationPosted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 90
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    # getter for: Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->access$200(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    # getter for: Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->access$200(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 97
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    # getter for: Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->access$200(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    # getter for: Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->access$200(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method
