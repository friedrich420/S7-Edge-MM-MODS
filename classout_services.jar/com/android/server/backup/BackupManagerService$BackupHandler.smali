.class Lcom/android/server/backup/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 717
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    .line 718
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 719
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 723
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4d2

    .line 999
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 726
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v9}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 729
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_4c

    .line 730
    const-string v3, "BackupManagerService"

    const-string v9, "Backup requested but no transport available"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 732
    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)V

    .line 736
    monitor-exit v9
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_49

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 736
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3

    .line 742
    :cond_4c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 744
    .local v7, "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 748
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_a4

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 750
    .local v25, "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 759
    .end local v25    # "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v27    # "i$":Ljava/util/Iterator;
    :catchall_8a
    move-exception v3

    monitor-exit v9
    :try_end_8c
    .catchall {:try_start_5e .. :try_end_8c} :catchall_8a

    throw v3

    .line 752
    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_8d
    :try_start_8d
    const-string v3, "BackupManagerService"

    const-string v10, "clearing pending backups"

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v10, 0x0

    iput-object v10, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 759
    .end local v27    # "i$":Ljava/util/Iterator;
    :cond_a4
    monitor-exit v9
    :try_end_a5
    .catchall {:try_start_8d .. :try_end_a5} :catchall_8a

    .line 766
    const/16 v35, 0x1

    .line 767
    .local v35, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f7

    .line 770
    :try_start_ad
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 773
    .local v2, "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    .line 774
    .local v30, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, sendMessage(Landroid/os/Message;)Z
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_c9} :catch_ec

    .line 786
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v30    # "pbtMessage":Landroid/os/Message;
    :goto_c9
    if-nez v35, :cond_7

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 789
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)V

    .line 793
    monitor-exit v9
    :try_end_e1
    .catchall {:try_start_d2 .. :try_end_e1} :catchall_101

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 775
    :catch_ec
    move-exception v26

    .line 778
    .local v26, "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v9, "Transport became unavailable attempting backup"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/16 v35, 0x0

    .line 780
    goto :goto_c9

    .line 782
    .end local v26    # "e":Landroid/os/RemoteException;
    :cond_f7
    const-string v3, "BackupManagerService"

    const-string v9, "Backup requested but nothing pending"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v35, 0x0

    goto :goto_c9

    .line 793
    :catchall_101
    move-exception v3

    :try_start_102
    monitor-exit v9
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v3

    .line 802
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v35    # "staged":Z
    :pswitch_104
    :try_start_104
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .line 804
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    invoke-interface {v8}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_10d
    .catch Ljava/lang/ClassCastException; {:try_start_104 .. :try_end_10d} :catch_10f

    goto/16 :goto_7

    .line 805
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_10f
    move-exception v26

    .line 806
    .local v26, "e":Ljava/lang/ClassCastException;
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid backup task in flight, obj="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 814
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_12e
    :try_start_12e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .line 815
    .restart local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->operationComplete(I)V
    :try_end_13b
    .catch Ljava/lang/ClassCastException; {:try_start_12e .. :try_end_13b} :catch_13d

    goto/16 :goto_7

    .line 816
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_13d
    move-exception v26

    .line 817
    .restart local v26    # "e":Ljava/lang/ClassCastException;
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid completion in flight, obj="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 826
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_15c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    .line 827
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v29

    iget-boolean v12, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    move-object/from16 v0, v29

    iget-boolean v13, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    move-object/from16 v0, v29

    iget-boolean v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    move-object/from16 v0, v29

    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    move/from16 v19, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    move/from16 v20, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->privilegeApp:Z

    move/from16 v23, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->extraFlag:I

    move/from16 v24, v0

    invoke-direct/range {v8 .. v24}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZI)V

    .line 833
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string v9, "adb-backup"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 839
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    :pswitch_1c7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 840
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v9, "transport-backup"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 846
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :pswitch_1da
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    .line 847
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_RUN_RESTORE observer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v29

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    move-object/from16 v0, v29

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v29

    iget v15, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    move/from16 v16, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v8 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .line 851
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    .line 852
    .local v33, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 860
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    .end local v33    # "restoreMsg":Landroid/os/Message;
    :pswitch_238
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    .line 861
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v29

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v0, v29

    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->privilegeApp:Z

    invoke-direct/range {v8 .. v15}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 864
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    const-string v9, "adb-restore"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 870
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :pswitch_26d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$ClearParams;

    .line 871
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v9, v10, v11}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_7

    .line 878
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    :pswitch_28b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    .line 879
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 888
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    :pswitch_2a4
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 889
    :try_start_2ab
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 890
    .local v31, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 891
    monitor-exit v9
    :try_end_2c2
    .catchall {:try_start_2ab .. :try_end_2c2} :catchall_2d2

    .line 893
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v31

    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_7

    .line 891
    .end local v31    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2d2
    move-exception v3

    :try_start_2d3
    monitor-exit v9
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2d2

    throw v3

    .line 899
    :pswitch_2d5
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10

    .line 900
    :try_start_2dc
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_30d

    const/4 v3, 0x1

    move v9, v3

    :goto_2e8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v9, v3}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v9, v12, v13, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 903
    monitor-exit v10

    goto/16 :goto_7

    :catchall_30a
    move-exception v3

    monitor-exit v10
    :try_end_30c
    .catchall {:try_start_2dc .. :try_end_30c} :catchall_30a

    throw v3

    .line 900
    :cond_30d
    const/4 v3, 0x0

    move v9, v3

    goto :goto_2e8

    .line 910
    :pswitch_310
    const/16 v34, 0x0

    .line 911
    .local v34, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    .line 913
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    :try_start_31a
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v34

    .line 915
    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v9
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_327} :catch_368
    .catchall {:try_start_31a .. :try_end_327} :catchall_3c3

    .line 916
    :try_start_327
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v34

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 917
    monitor-exit v9
    :try_end_330
    .catchall {:try_start_327 .. :try_end_330} :catchall_365

    .line 918
    if-nez v34, :cond_33a

    const/16 v3, 0xb0f

    const/4 v9, 0x0

    :try_start_335
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_33a} :catch_368
    .catchall {:try_start_335 .. :try_end_33a} :catchall_3c3

    .line 922
    :cond_33a
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_349

    .line 924
    :try_start_340
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_349
    .catch Landroid/os/RemoteException; {:try_start_340 .. :try_end_349} :catch_39b
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_349} :catch_3a4

    .line 933
    :cond_349
    :goto_349
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, removeMessages(I)V

    .line 934
    const/16 v3, 0x8

    const-wide/32 v10, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, sendEmptyMessageDelayed(IJ)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 917
    :catchall_365
    move-exception v3

    :try_start_366
    monitor-exit v9
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_365

    :try_start_367
    throw v3
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_368} :catch_368
    .catchall {:try_start_367 .. :try_end_368} :catchall_3c3

    .line 919
    :catch_368
    move-exception v26

    .line 920
    .local v26, "e":Ljava/lang/Exception;
    :try_start_369
    const-string v3, "BackupManagerService"

    const-string v9, "Error from transport getting set list"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_370
    .catchall {:try_start_369 .. :try_end_370} :catchall_3c3

    .line 922
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_37f

    .line 924
    :try_start_376
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_37f
    .catch Landroid/os/RemoteException; {:try_start_376 .. :try_end_37f} :catch_3af
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_37f} :catch_3b8

    .line 933
    :cond_37f
    :goto_37f
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, removeMessages(I)V

    .line 934
    const/16 v3, 0x8

    const-wide/32 v10, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, sendEmptyMessageDelayed(IJ)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 925
    .end local v26    # "e":Ljava/lang/Exception;
    :catch_39b
    move-exception v32

    .line 926
    .local v32, "re":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_349

    .line 927
    .end local v32    # "re":Landroid/os/RemoteException;
    :catch_3a4
    move-exception v26

    .line 928
    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    const-string v9, "Restore observer threw"

    move-object/from16 v0, v26

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_349

    .line 925
    :catch_3af
    move-exception v32

    .line 926
    .restart local v32    # "re":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37f

    .line 927
    .end local v32    # "re":Landroid/os/RemoteException;
    :catch_3b8
    move-exception v26

    .line 928
    const-string v3, "BackupManagerService"

    const-string v9, "Restore observer threw"

    move-object/from16 v0, v26

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37f

    .line 922
    .end local v26    # "e":Ljava/lang/Exception;
    :catchall_3c3
    move-exception v3

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v9, :cond_3d3

    .line 924
    :try_start_3ca
    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_3d3
    .catch Landroid/os/RemoteException; {:try_start_3ca .. :try_end_3d3} :catch_3ee
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_3d3} :catch_3f7

    .line 933
    :cond_3d3
    :goto_3d3
    const/16 v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, removeMessages(I)V

    .line 934
    const/16 v9, 0x8

    const-wide/32 v10, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, sendEmptyMessageDelayed(IJ)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 925
    :catch_3ee
    move-exception v32

    .line 926
    .restart local v32    # "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d3

    .line 927
    .end local v32    # "re":Landroid/os/RemoteException;
    :catch_3f7
    move-exception v26

    .line 928
    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v9, "BackupManagerService"

    const-string v10, "Restore observer threw"

    move-object/from16 v0, v26

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d3

    .line 943
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    .end local v34    # "sets":[Landroid/app/backup/RestoreSet;
    :pswitch_402
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v9, v10}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 949
    :pswitch_413
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    monitor-enter v9

    .line 950
    :try_start_418
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_44d

    .line 955
    const-string v3, "BackupManagerService"

    const-string v10, "Restore session timed out; aborting"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    .line 957
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, v10, v11, v12}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, post(Ljava/lang/Runnable;)Z

    .line 960
    :cond_44d
    monitor-exit v9

    goto/16 :goto_7

    :catchall_450
    move-exception v3

    monitor-exit v9
    :try_end_452
    .catchall {:try_start_418 .. :try_end_452} :catchall_450

    throw v3

    .line 966
    :pswitch_453
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v9

    .line 967
    :try_start_45a
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/backup/BackupManagerService$FullParams;

    .line 968
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v29, :cond_49c

    .line 969
    const-string v3, "BackupManagerService"

    const-string v10, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->delete(I)V

    .line 978
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_48d
    .catchall {:try_start_45a .. :try_end_48d} :catchall_499

    if-eqz v3, :cond_496

    .line 980
    :try_start_48f
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_496
    .catch Landroid/os/RemoteException; {:try_start_48f .. :try_end_496} :catch_4d0
    .catchall {:try_start_48f .. :try_end_496} :catchall_499

    .line 988
    :cond_496
    :goto_496
    :try_start_496
    monitor-exit v9

    goto/16 :goto_7

    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_499
    move-exception v3

    monitor-exit v9
    :try_end_49b
    .catchall {:try_start_496 .. :try_end_49b} :catchall_499

    throw v3

    .line 986
    .restart local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_49c
    :try_start_49c
    const-string v3, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t find params for token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b8
    .catchall {:try_start_49c .. :try_end_4b8} :catchall_499

    goto :goto_496

    .line 994
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :pswitch_4b9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/Intent;

    .line 995
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    .line 981
    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catch_4d0
    move-exception v3

    goto :goto_496

    .line 723
    :pswitch_data_4d2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_15c
        :pswitch_1da
        :pswitch_26d
        :pswitch_2a4
        :pswitch_310
        :pswitch_402
        :pswitch_413
        :pswitch_453
        :pswitch_238
        :pswitch_2d5
        :pswitch_28b
        :pswitch_4b9
        :pswitch_1c7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_104
        :pswitch_12e
    .end packed-switch
.end method
