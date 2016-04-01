.class Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardTokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 89
    iput-object p1, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 90
    const-string v0, "KeyguardDisableHandler"

    invoke-direct {p0, p2, v0}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    # getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 113
    invoke-virtual {p0}, updateAllowState()V

    .line 115
    :cond_c
    iget-object v0, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    # getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 116
    iget-object v0, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 120
    :goto_1d
    return-void

    .line 118
    :cond_1e
    const-string v0, "KeyguardDisableHandler"

    const-string v1, "Not disabling keyguard since device policy is enforced"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public released()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 125
    return-void
.end method

.method public updateAllowState()V
    .registers 5

    .prologue
    .line 96
    iget-object v1, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, v1, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 98
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_26

    .line 100
    :try_start_f
    iget-object v2, p0, this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    :goto_23
    # setter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v2, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_26} :catch_29

    .line 108
    :cond_26
    :goto_26
    return-void

    .line 100
    :cond_27
    const/4 v1, 0x0

    goto :goto_23

    .line 104
    :catch_29
    move-exception v1

    goto :goto_26
.end method
