.class Lcom/android/systemui/statusbar/BaseStatusBar$12;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appSettingsLaunchIntent:Landroid/content/Intent;

.field final synthetic val$appUidF:I

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$appSettingsLaunchIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$appUidF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0xce

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$appSettingsLaunchIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$appUidF:I

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1300(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V

    .line 1814
    return-void
.end method
