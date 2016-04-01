.class Lcom/android/server/wm/WindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 537
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 540
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 542
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;->sendEmptyMessage(I)Z

    .line 548
    :cond_16
    :goto_16
    return-void

    .line 544
    :cond_17
    const-string v2, "android.app.action.DEBUG_RECONFIGURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 545
    const-string v2, "WM_DEBUG"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    move-object v1, v2

    check-cast v1, [Z

    .line 546
    .local v1, "wm_debug":[Z
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->reconfigureDebug([Z)V
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->access$100(Lcom/android/server/wm/WindowManagerService;[Z)V

    goto :goto_16
.end method
