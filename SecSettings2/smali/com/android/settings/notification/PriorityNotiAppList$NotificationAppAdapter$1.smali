.class Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/PriorityNotiAppList$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private listener:Lcom/android/settings/notification/PriorityNotiAppList$ClickListener;

.field final synthetic this$1:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

.field final synthetic val$vh:Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;Lcom/android/settings/notification/PriorityNotiAppList$AppRow;Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;)V
    .locals 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    iput-object p3, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Lcom/android/settings/notification/PriorityNotiAppList$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/notification/PriorityNotiAppList$ClickListener;-><init>(Lcom/android/settings/notification/PriorityNotiAppList$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->listener:Lcom/android/settings/notification/PriorityNotiAppList$ClickListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mBackend:Lcom/android/settings/notification/NotificationBackend;
    invoke-static {v0}, Lcom/android/settings/notification/PriorityNotiAppList;->access$900(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    iget v2, v2, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/notification/NotificationBackend;->setHighPriority(Ljava/lang/String;IZ)Z

    .line 441
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->listener:Lcom/android/settings/notification/PriorityNotiAppList$ClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    :cond_0
    return-void
.end method
