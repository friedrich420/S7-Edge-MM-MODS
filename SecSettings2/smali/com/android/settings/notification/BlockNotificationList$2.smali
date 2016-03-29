.class Lcom/android/settings/notification/BlockNotificationList$2;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/BlockNotificationList;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1300(Lcom/android/settings/notification/BlockNotificationList;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1400(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1400(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0821

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0
.end method
