.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$isForLockedKnoxContainer:Z

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Ljava/lang/String;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/app/PendingIntent;I)V
    .locals 0

    .prologue
    .line 2951
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$isForLockedKnoxContainer:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$keyguardShowing:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$afterKeyguardGone:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    iput p8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2953
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$isForLockedKnoxContainer:Z

    if-nez v2, :cond_0

    .line 2962
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsClickedNotification(Landroid/view/View;Z)V

    .line 2963
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 2966
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$isForLockedKnoxContainer:Z

    if-nez v2, :cond_2

    .line 2968
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->start()V

    .line 3065
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-nez v2, :cond_1

    .line 3067
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v5, v0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZZ)V

    .line 3070
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 3072
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    .line 3013
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$userId:I

    invoke-virtual {v2, v3, v5}, Landroid/os/PersonaManager;->showKeyguard(II)V

    .line 3014
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$userId:I

    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/PersonaManager;->doWhenUnlock(ILandroid/content/pm/IKnoxUnlockAction;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3072
    goto :goto_1
.end method
