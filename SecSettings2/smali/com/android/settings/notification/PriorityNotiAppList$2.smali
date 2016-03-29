.class Lcom/android/settings/notification/PriorityNotiAppList$2;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/PriorityNotiAppList;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # invokes: Lcom/android/settings/notification/PriorityNotiAppList;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1300(Lcom/android/settings/notification/PriorityNotiAppList;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1400(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1400(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1500(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0821

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 263
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
