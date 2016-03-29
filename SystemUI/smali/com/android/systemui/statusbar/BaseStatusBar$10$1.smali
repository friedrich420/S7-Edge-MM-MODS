.class Lcom/android/systemui/statusbar/BaseStatusBar$10$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$10;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$10;)V
    .locals 0

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1700
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$keyguardShowing:Z

    if-eqz v1, :cond_0

    .line 1701
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 1706
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$appUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1708
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1711
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$keyguardShowing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v0    # "userId":I
    :goto_0
    return-void

    .line 1712
    :catch_0
    move-exception v1

    goto :goto_0
.end method
