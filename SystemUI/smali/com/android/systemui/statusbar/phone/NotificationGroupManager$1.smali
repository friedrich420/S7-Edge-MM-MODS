.class Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field final synthetic val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;->val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;->val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 106
    :cond_0
    return-void
.end method
