.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 7560
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 7561
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7562
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 7565
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 7566
    :try_start_6
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_c
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 7567
    monitor-exit v1

    .line 7568
    return-void

    .line 7567
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 7572
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_3ae

    .line 7786
    :cond_5
    :goto_5
    return-void

    .line 7576
    :sswitch_6
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v10, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v10, :cond_2d

    .line 7577
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 7578
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 7579
    .local v5, "nmsg":Landroid/os/Message;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7580
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v5, v12, v13}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 7586
    .end local v5    # "nmsg":Landroid/os/Message;
    :cond_2d
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v10}, activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_5

    .line 7590
    :sswitch_35
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v10}, activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_5

    .line 7593
    :sswitch_3d
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 7594
    :try_start_42
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 7595
    monitor-exit v11

    goto :goto_5

    :catchall_49
    move-exception v10

    monitor-exit v11
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_49

    throw v10

    .line 7598
    :sswitch_4c
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 7599
    :try_start_51
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 7600
    const-string v10, "ActivityManager"

    const-string v12, "Sleep timeout!  Sleeping now."

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7601
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 7602
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 7604
    :cond_6c
    monitor-exit v11

    goto :goto_5

    :catchall_6e
    move-exception v10

    monitor-exit v11
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_6e

    throw v10

    .line 7607
    :sswitch_71
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v10, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v10, :cond_8d

    .line 7608
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 7609
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v11, 0x68

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 7612
    :cond_8d
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 7613
    :try_start_92
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 7614
    const-string v10, "ActivityManager"

    const-string v12, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7619
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7621
    :cond_aa
    monitor-exit v11

    goto/16 :goto_5

    :catchall_ad
    move-exception v10

    monitor-exit v11
    :try_end_af
    .catchall {:try_start_92 .. :try_end_af} :catchall_ad

    throw v10

    .line 7624
    :sswitch_b0
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$000(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_5

    .line 7627
    :sswitch_b9
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_5

    .line 7630
    :sswitch_c2
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_5

    .line 7633
    :sswitch_cb
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 7634
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 7635
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_5

    .line 7637
    :try_start_d3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_e5

    const/4 v10, 0x1

    :goto_dd
    invoke-interface {v0, v11, v10}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_e0} :catch_e2

    goto/16 :goto_5

    .line 7638
    :catch_e2
    move-exception v10

    goto/16 :goto_5

    .line 7637
    :cond_e5
    const/4 v10, 0x0

    goto :goto_dd

    .line 7645
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_e7
    :try_start_e7
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v10

    if-nez v10, :cond_ff

    .line 7646
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v11, Lcom/android/server/am/LockTaskNotify;

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 7648
    :cond_ff
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 7649
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 7650
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    if-eqz v10, :cond_13d

    .line 7651
    const/4 v4, 0x0

    .line 7652
    .local v4, "flags":I
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_182

    .line 7653
    const/high16 v4, 0x3bf0000

    .line 7661
    :cond_124
    :goto_124
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v4, v11, v12}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 7664
    .end local v4    # "flags":I
    :cond_13d
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v11

    const-string v12, "Lock-to-App"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 7665
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v10

    if-eqz v10, :cond_164

    .line 7666
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v11, v12, v10, v13}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 7670
    :cond_164
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 7671
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_179} :catch_17b

    goto/16 :goto_5

    .line 7673
    :catch_17b
    move-exception v3

    .line 7674
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 7655
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "flags":I
    :cond_182
    :try_start_182
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_182 .. :try_end_187} :catch_17b

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_124

    .line 7656
    const/high16 v4, 0x29f0000

    goto :goto_124

    .line 7680
    .end local v4    # "flags":I
    :sswitch_18e
    :try_start_18e
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    if-eqz v10, :cond_1b0

    .line 7681
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v12}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v12

    iget-object v13, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 7684
    :cond_1b0
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 7685
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v10

    if-eqz v10, :cond_1d2

    .line 7686
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v13}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 7689
    :cond_1d2
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v10

    if-nez v10, :cond_1ea

    .line 7690
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v11, Lcom/android/server/am/LockTaskNotify;

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 7692
    :cond_1ea
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_1f4
    .catch Landroid/os/RemoteException; {:try_start_18e .. :try_end_1f4} :catch_275
    .catchall {:try_start_18e .. :try_end_1f4} :catchall_27c

    .line 7694
    :try_start_1f4
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "lock_to_app_exit_locked"

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v12}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_269

    const/4 v8, 0x1

    .line 7698
    .local v8, "shouldLockKeyguard":Z
    :goto_20e
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_24c

    if-eqz v8, :cond_24c

    .line 7699
    const/4 v7, 0x0

    .line 7701
    .local v7, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    const-string/jumbo v10, "restriction_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v7

    .line 7704
    if-eqz v7, :cond_22e

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Landroid/app/enterprise/IRestrictionPolicy;->isScreenPinningAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_26b

    .line 7705
    :cond_22e
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 7706
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 7707
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_24c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1f4 .. :try_end_24c} :catch_273
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_24c} :catch_275
    .catchall {:try_start_1f4 .. :try_end_24c} :catchall_27c

    .line 7719
    .end local v7    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .end local v8    # "shouldLockKeyguard":Z
    :cond_24c
    :goto_24c
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 7721
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 7722
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V

    goto/16 :goto_5

    .line 7694
    :cond_269
    const/4 v8, 0x0

    goto :goto_20e

    .line 7710
    .restart local v7    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .restart local v8    # "shouldLockKeyguard":Z
    :cond_26b
    :try_start_26b
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V
    :try_end_272
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_26b .. :try_end_272} :catch_273
    .catch Landroid/os/RemoteException; {:try_start_26b .. :try_end_272} :catch_275
    .catchall {:try_start_26b .. :try_end_272} :catchall_27c

    goto :goto_24c

    .line 7713
    .end local v7    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .end local v8    # "shouldLockKeyguard":Z
    :catch_273
    move-exception v10

    goto :goto_24c

    .line 7716
    :catch_275
    move-exception v3

    .line 7717
    .restart local v3    # "ex":Landroid/os/RemoteException;
    :try_start_276
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_27c
    .catchall {:try_start_276 .. :try_end_27c} :catchall_27c

    .line 7719
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catchall_27c
    move-exception v10

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 7721
    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v12}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 7722
    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V

    throw v10

    .line 7727
    :sswitch_299
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v10

    if-nez v10, :cond_2b1

    .line 7728
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v11, Lcom/android/server/am/LockTaskNotify;

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 7730
    :cond_2b1
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto/16 :goto_5

    .line 7733
    :sswitch_2bd
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 7734
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 7735
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_5

    .line 7737
    :try_start_2c5
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_2cc
    .catch Landroid/os/RemoteException; {:try_start_2c5 .. :try_end_2cc} :catch_2ce

    goto/16 :goto_5

    .line 7738
    :catch_2ce
    move-exception v10

    goto/16 :goto_5

    .line 7743
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_2d1
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 7744
    :try_start_2d6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v10}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 7745
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2e5

    .line 7746
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v6}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 7748
    :cond_2e5
    monitor-exit v11

    goto/16 :goto_5

    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_2e8
    move-exception v10

    monitor-exit v11
    :try_end_2ea
    .catchall {:try_start_2d6 .. :try_end_2ea} :catchall_2e8

    throw v10

    .line 7753
    :sswitch_2eb
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1030128

    invoke-direct {v2, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7754
    .local v2, "context":Landroid/content/Context;
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040bb2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 7760
    .end local v2    # "context":Landroid/content/Context;
    :sswitch_314
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1030128

    invoke-direct {v2, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7761
    .restart local v2    # "context":Landroid/content/Context;
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040bb5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 7768
    .end local v2    # "context":Landroid/content/Context;
    :sswitch_33d
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->onFixedScreenModeChanged(I)V

    goto/16 :goto_5

    .line 7772
    :sswitch_348
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    if-nez v10, :cond_36b

    .line 7773
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    .line 7774
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v11, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V

    iput-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    .line 7775
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->create()V

    .line 7777
    :cond_36b
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    if-nez v10, :cond_5

    .line 7778
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManagerImpl;

    .line 7779
    .local v9, "wm":Landroid/view/WindowManagerImpl;
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    .line 7780
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7781
    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    goto/16 :goto_5

    .line 7572
    nop

    :sswitch_data_3ae
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_35
        0x66 -> :sswitch_3d
        0x67 -> :sswitch_4c
        0x68 -> :sswitch_71
        0x69 -> :sswitch_b0
        0x6a -> :sswitch_b9
        0x6b -> :sswitch_c2
        0x6c -> :sswitch_cb
        0x6d -> :sswitch_e7
        0x6e -> :sswitch_18e
        0x6f -> :sswitch_2bd
        0x70 -> :sswitch_2d1
        0x71 -> :sswitch_299
        0xc8 -> :sswitch_2eb
        0xc9 -> :sswitch_314
        0x12c -> :sswitch_33d
        0x12d -> :sswitch_348
    .end sparse-switch
.end method
