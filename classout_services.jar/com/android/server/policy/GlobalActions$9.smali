.class Lcom/android/server/policy/GlobalActions$9;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 1504
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1507
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "in onPress of Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v1, "com.android.service.GlobalAction"

    const-string v2, "0002"

    const-string v3, "Restart"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$3100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1511
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$3800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1528
    :goto_30
    return-void

    .line 1515
    :cond_31
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1516
    const-string/jumbo v0, "persist.sys.shutdown"

    const-string v1, "GARB"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_44
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$3900(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 1520
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$000()Z

    move-result v0

    if-nez v0, :cond_72

    .line 1521
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1522
    const/4 v0, 0x0

    :try_start_5f
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 1523
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_6f

    .line 1527
    :goto_63
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30

    .line 1523
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0

    .line 1525
    :cond_72
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$002(Z)Z

    goto :goto_63
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1533
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 1545
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1530
    const/4 v0, 0x1

    return v0
.end method
