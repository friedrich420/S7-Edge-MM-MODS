.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 658
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    .line 659
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 660
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 664
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "handleMessage :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_3ea

    .line 822
    :cond_26
    :goto_26
    return-void

    .line 667
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    goto :goto_26

    .line 671
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/MountService;->handleDaemonConnected()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V

    goto :goto_26

    .line 675
    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/MountService;->isReady()Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v16

    if-nez v16, :cond_6d

    .line 676
    const-string v16, "MountService"

    const-string/jumbo v17, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v16, 0x4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v18, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_26

    .line 682
    :cond_6d
    const-string v16, "MountService"

    const-string v17, "Running fstrim idle maintenance"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :try_start_74
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;J)J

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_a0} :catch_d8

    .line 692
    :goto_a0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/MountService;->shouldBenchmark()Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v12

    .line 696
    .local v12, "shouldBenchmark":Z
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string/jumbo v18, "fstrim"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz v12, :cond_e1

    const-string/jumbo v16, "dotrimbench"

    :goto_c6
    aput-object v16, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_cb
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_aa .. :try_end_cb} :catch_e5

    .line 703
    :goto_cb
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 704
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_26

    .line 705
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_26

    .line 688
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v12    # "shouldBenchmark":Z
    :catch_d8
    move-exception v6

    .line 689
    .local v6, "e":Ljava/lang/Exception;
    const-string v16, "MountService"

    const-string v17, "Unable to record last fstrim!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 696
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "shouldBenchmark":Z
    :cond_e1
    :try_start_e1
    const-string/jumbo v16, "dotrim"
    :try_end_e4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_c6

    .line 697
    :catch_e5
    move-exception v9

    .line 698
    .local v9, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v16, "MountService"

    const-string v17, "Failed to run fstrim!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 710
    .end local v9    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v12    # "shouldBenchmark":Z
    :pswitch_ee
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/storage/IMountShutdownObserver;

    .line 711
    .local v10, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v13, 0x0

    .line 713
    .local v13, "success":Z
    :try_start_f5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v16

    const-string/jumbo v17, "volume"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "shutdown"

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_118
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f5 .. :try_end_118} :catch_3e7

    move-result v13

    .line 716
    :goto_119
    if-eqz v10, :cond_26

    .line 718
    if-eqz v13, :cond_129

    const/16 v16, 0x0

    :goto_11f
    :try_start_11f
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_124} :catch_126

    goto/16 :goto_26

    .line 719
    :catch_126
    move-exception v16

    goto/16 :goto_26

    .line 718
    :cond_129
    const/16 v16, -0x1

    goto :goto_11f

    .line 725
    .end local v10    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .end local v13    # "success":Z
    :pswitch_12c
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/storage/VolumeInfo;

    .line 726
    .local v15, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v0, v15}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v16

    if-eqz v16, :cond_164

    .line 727
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ignoring mount "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " due to policy"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 731
    :cond_164
    const/4 v11, 0x0

    .line 732
    .local v11, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_183

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v11

    .line 734
    :cond_183
    if-nez v11, :cond_18a

    .line 735
    new-instance v11, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v11    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v11}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 740
    .restart local v11    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_18a
    :try_start_18a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_211

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v16

    if-nez v16, :cond_211

    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v16

    if-eqz v16, :cond_211

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/MountService;->requiredEncPolicyCheck()Z

    move-result v16

    if-eqz v16, :cond_211

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v16

    if-eqz v16, :cond_211

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v16

    const-string/jumbo v17, "volume"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "mount"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    iget v0, v15, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    iget v0, v15, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, "hidden"

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_26

    .line 795
    :catch_20e
    move-exception v16

    goto/16 :goto_26

    .line 743
    :cond_211
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_244

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v16

    if-nez v16, :cond_244

    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v16

    if-eqz v16, :cond_244

    const/16 v16, 0x2

    iget v0, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_244

    .line 745
    const-string v16, "MountService"

    const-string v17, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 748
    :cond_244
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: execute volume mount !!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v16

    if-eqz v16, :cond_31b

    .line 752
    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v16

    if-nez v16, :cond_311

    .line 753
    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_307

    .line 754
    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v16

    if-eqz v16, :cond_2fe

    .line 755
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: LPM disable to boost usb-storage up until 100 sec"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v16

    const v17, 0x186a0

    invoke-virtual/range {v16 .. v17}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 770
    :goto_286
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v16

    const-string/jumbo v17, "volume"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "mount"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    iget v0, v15, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    iget v0, v15, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v16

    if-eqz v16, :cond_343

    .line 774
    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v16

    if-nez v16, :cond_339

    .line 775
    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_32f

    .line 776
    iget-object v0, v15, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v16

    if-eqz v16, :cond_325

    .line 777
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: LPM enable after boosting usb-storage up"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_26

    .line 758
    :cond_2fe
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: not Usb"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_286

    .line 761
    :cond_307
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: vol.disk is NULL"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_286

    .line 764
    :cond_311
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: not TYPE_PUBLIC"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_286

    .line 767
    :cond_31b
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_286

    .line 780
    :cond_325
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: not Usb"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 783
    :cond_32f
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: vol.disk is NULL"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 786
    :cond_339
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: not TYPE_PUBLIC"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 789
    :cond_343
    const-string v16, "MountService"

    const-string/jumbo v17, "handleMessage:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18a .. :try_end_34b} :catch_20e

    goto/16 :goto_26

    .line 800
    .end local v11    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v15    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_34d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/storage/StorageVolume;

    .line 801
    .local v14, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "envState":Ljava/lang/String;
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Volume "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " broadcasting "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 806
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 808
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v16, "storage_volume"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 809
    const/high16 v16, 0x4000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_26

    .line 817
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "envState":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v14    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_3c8
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent;

    .line 818
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v16

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v18, "android.permission.WRITE_MEDIA_STORAGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 714
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v13    # "success":Z
    :catch_3e7
    move-exception v16

    goto/16 :goto_119

    .line 665
    :pswitch_data_3ea
    .packed-switch 0x1
        :pswitch_27
        :pswitch_31
        :pswitch_ee
        :pswitch_3b
        :pswitch_12c
        :pswitch_34d
        :pswitch_3c8
    .end packed-switch
.end method
