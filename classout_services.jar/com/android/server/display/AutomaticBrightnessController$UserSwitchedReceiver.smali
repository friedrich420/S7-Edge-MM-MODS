.class final Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .prologue
    .line 1787
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1790
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserSwitchedReceiver: onReceive: UserHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1793
    :try_start_34
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mUserSwitched:Z
    invoke-static {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$3402(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1794
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1795
    monitor-exit v1

    .line 1796
    return-void

    .line 1795
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    throw v0
.end method
