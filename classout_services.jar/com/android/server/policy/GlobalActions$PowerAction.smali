.class final Lcom/android/server/policy/GlobalActions$PowerAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 4

    .prologue
    .line 2674
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    .line 2675
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x108095d

    :goto_b
    const v1, 0x104011d

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 2677
    return-void

    .line 2675
    :cond_12
    const v0, 0x1080967

    goto :goto_b
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "x1"    # Lcom/android/server/policy/GlobalActions$1;

    .prologue
    .line 2673
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .prologue
    .line 2751
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onLongPress()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2681
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2682
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2683
    const-string v2, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2684
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 2688
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public onPress()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2703
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2704
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$5800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2733
    :cond_25
    :goto_25
    return-void

    .line 2708
    :cond_26
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$3100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2709
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$5900(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 2713
    :cond_42
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "in onPress of PowerOFF"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v1, "com.android.service.GlobalAction"

    const-string v2, "0002"

    const-string v3, "PowerOff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2717
    const-string/jumbo v0, "persist.sys.shutdown"

    const-string v1, "GASD"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    :cond_68
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$3900(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 2722
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2723
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$000()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 2724
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2725
    const/4 v0, 0x0

    :try_start_89
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 2726
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_99

    .line 2730
    :goto_8d
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_25

    .line 2726
    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0

    .line 2728
    :cond_9c
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$002(Z)Z

    goto :goto_8d
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 2698
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 2746
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 2693
    const/4 v0, 0x1

    return v0
.end method
