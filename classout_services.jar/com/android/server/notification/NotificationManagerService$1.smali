.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 566
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 8

    .prologue
    .line 670
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 671
    :try_start_5
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "NotificationService"

    const-string v5, "clearEffects"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_10
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$502(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_9f

    move-result-wide v0

    .line 678
    .local v0, "identity":J
    :try_start_1a
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 679
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_27

    .line 680
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_77
    .catchall {:try_start_1a .. :try_end_27} :catchall_a2

    .line 684
    :cond_27
    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 688
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 690
    :cond_47
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 695
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :goto_4d
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$602(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_56
    .catchall {:try_start_27 .. :try_end_56} :catchall_9f

    move-result-wide v0

    .line 698
    :try_start_57
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_ca

    .line 700
    :try_start_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 710
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 711
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 714
    :cond_75
    monitor-exit v4

    .line 715
    return-void

    .line 682
    :catch_77
    move-exception v3

    .line 684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    if-eqz v3, :cond_98

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 688
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 690
    :cond_98
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    goto :goto_4d

    .line 714
    .end local v0    # "identity":J
    :catchall_9f
    move-exception v3

    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_5e .. :try_end_a1} :catchall_9f

    throw v3

    .line 684
    .restart local v0    # "identity":J
    :catchall_a2
    move-exception v3

    :try_start_a3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    if-eqz v5, :cond_c3

    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 688
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 690
    :cond_c3
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    throw v3

    .line 700
    :catchall_ca
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_cf
    .catchall {:try_start_a3 .. :try_end_cf} :catchall_9f
.end method

.method public onClearAll(III)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 605
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 606
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 608
    monitor-exit v7

    .line 609
    return-void

    .line 608
    :catchall_12
    move-exception v0

    monitor-exit v7
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onNotificationActionClick(IILjava/lang/String;I)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "actionIndex"    # I

    .prologue
    .line 634
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 635
    :try_start_5
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 636
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_2b

    .line 637
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No notification with key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v4

    .line 645
    :goto_2a
    return-void

    .line 640
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 641
    .local v0, "now":J
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    invoke-static {p3, p4, v3, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIII)V

    .line 644
    monitor-exit v4

    goto :goto_2a

    .end local v0    # "now":J
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v3
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 19
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I

    .prologue
    .line 650
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 653
    return-void
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;III)V
    .registers 21
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I
    .param p7, "reasonClear"    # I

    .prologue
    .line 776
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$800()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 777
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$800()Ljava/lang/ThreadLocal;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, p7

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 781
    :goto_18
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 784
    return-void

    .line 779
    :cond_2e
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$800()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public onNotificationClick(IILjava/lang/String;)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 614
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/notification/NotificationRecord;

    .line 615
    .local v16, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v16, :cond_35

    .line 616
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-exit v18

    .line 629
    :goto_34
    return-void

    .line 619
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 620
    .local v14, "now":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;III)V

    .line 623
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    .line 624
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    const/16 v8, 0x10

    const/16 v9, 0x40

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 628
    monitor-exit v18

    goto :goto_34

    .end local v14    # "now":J
    .end local v16    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_7a
    move-exception v2

    monitor-exit v18
    :try_end_7c
    .catchall {:try_start_9 .. :try_end_7c} :catchall_7a

    throw v2
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 28
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    .line 720
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotification error pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; will crashApplication(uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v13, p9

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 726
    .local v16, "ident":J
    :try_start_6d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad notification posted from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_9b} :catch_9f

    .line 731
    :goto_9b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    return-void

    .line 729
    :catch_9f
    move-exception v4

    goto :goto_9b
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 760
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 761
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 762
    .local v8, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v8, :cond_31

    .line 763
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 765
    .local v6, "now":J
    if-eqz p2, :cond_33

    move v1, v2

    :goto_1f
    if-eqz p3, :cond_35

    :goto_21
    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v4

    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeNotificationExpansion(Ljava/lang/String;IIIII)V

    .line 769
    .end local v6    # "now":J
    :cond_31
    monitor-exit v9

    .line 770
    return-void

    .restart local v6    # "now":J
    :cond_33
    move v1, v0

    .line 765
    goto :goto_1f

    :cond_35
    move v2, v0

    goto :goto_21

    .line 769
    .end local v6    # "now":J
    .end local v8    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_37
    move-exception v0

    monitor-exit v9
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 11
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;

    .prologue
    .line 737
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 738
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_6
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 739
    .local v3, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v7, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 740
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v4, :cond_1d

    .line 738
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 741
    :cond_1d
    const/4 v5, 0x1

    iget v7, v3, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {v4, v5, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    .line 742
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_1a

    .line 754
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_27
    move-exception v5

    monitor-exit v6
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v5

    .line 748
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_2a
    move-object v0, p2

    :try_start_2b
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v2, :cond_4c

    aget-object v3, v0, v1

    .line 749
    .restart local v3    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v7, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 750
    .restart local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v4, :cond_42

    .line 748
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 751
    :cond_42
    const/4 v5, 0x0

    iget v7, v3, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {v4, v5, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    .line 752
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_3f

    .line 754
    .end local v3    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4c
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_27

    .line 755
    return-void
.end method

.method public onPanelHidden()V
    .registers 1

    .prologue
    .line 665
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 666
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .registers 3
    .param p1, "clearEffects"    # Z
    .param p2, "items"    # I

    .prologue
    .line 657
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    .line 658
    if-eqz p1, :cond_8

    .line 659
    invoke-virtual {p0}, clearEffects()V

    .line 661
    :cond_8
    return-void
.end method

.method public onSetDisabled(I)V
    .registers 9
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 570
    iget-object v4, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 571
    :try_start_6
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/high16 v6, 0x40000

    and-int/2addr v6, p1

    if-eqz v6, :cond_e

    const/4 v3, 0x1

    :cond_e
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z
    invoke-static {v5, v3}, Lcom/android/server/notification/NotificationManagerService;->access$102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 573
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_89

    move-result-wide v0

    .line 577
    .local v0, "identity":J
    :try_start_1e
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 578
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_2b

    .line 579
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2b} :catch_61
    .catchall {:try_start_1e .. :try_end_2b} :catchall_8c

    .line 583
    :cond_2b
    :try_start_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 587
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 589
    :cond_4b
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 593
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :goto_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_89

    move-result-wide v0

    .line 595
    :try_start_55
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_b4

    .line 597
    :try_start_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    .end local v0    # "identity":J
    :cond_5f
    monitor-exit v4

    .line 601
    return-void

    .line 581
    .restart local v0    # "identity":J
    :catch_61
    move-exception v3

    .line 583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    if-eqz v3, :cond_82

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 587
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 589
    :cond_82
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    goto :goto_51

    .line 600
    .end local v0    # "identity":J
    :catchall_89
    move-exception v3

    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_5c .. :try_end_8b} :catchall_89

    throw v3

    .line 583
    .restart local v0    # "identity":J
    :catchall_8c
    move-exception v3

    :try_start_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    if-eqz v5, :cond_ad

    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 587
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 589
    :cond_ad
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    throw v3

    .line 597
    :catchall_b4
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_b9
    .catchall {:try_start_8d .. :try_end_b9} :catchall_89
.end method
