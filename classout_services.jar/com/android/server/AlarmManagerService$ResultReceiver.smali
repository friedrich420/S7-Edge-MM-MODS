.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .prologue
    .line 3499
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 3502
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3503
    const/4 v13, 0x0

    .line 3504
    .local v13, "uid":I
    const/4 v12, 0x0

    .line 3505
    .local v12, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_46

    .line 3506
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_a6

    .line 3507
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget v13, v2, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    move-object v12, v0

    .line 3512
    :cond_46
    if-eqz v12, :cond_180

    .line 3513
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3514
    .local v14, "nowELAPSED":J
    iget-object v8, v12, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3515
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3516
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v2, :cond_64

    .line 3517
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3518
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v4, v14, v4

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 3520
    :cond_64
    iget-object v9, v12, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3521
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3522
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v2, :cond_7c

    .line 3523
    const/4 v2, 0x0

    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3524
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long v4, v14, v4

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 3527
    :cond_7c
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_aa

    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-lez v2, :cond_aa

    .line 3528
    const/16 v16, 0x0

    .local v16, "wi":I
    :goto_8a
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b2

    .line 3529
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    iget-object v3, v12, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 3528
    add-int/lit8 v16, v16, 0x1

    goto :goto_8a

    .line 3505
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "nowELAPSED":J
    .end local v16    # "wi":I
    :cond_a6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    .line 3533
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v14    # "nowELAPSED":J
    :cond_aa
    const/4 v2, -0x1

    iget-object v3, v12, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 3540
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "nowELAPSED":J
    :cond_b2
    :goto_b2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3541
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3543
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->checkReleaseWakeLock()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 3544
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 3545
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3550
    :cond_eb
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget v2, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_1ba

    .line 3551
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_108

    .line 3552
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3554
    :cond_108
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1b8

    .line 3555
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished all broadcasts with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remaining inflights"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 3557
    const/4 v10, 0x0

    :goto_141
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1af

    .line 3558
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Remaining #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 3557
    add-int/lit8 v10, v10, 0x1

    goto :goto_141

    .line 3538
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No in-flight alarm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    goto/16 :goto_b2

    .line 3574
    :catchall_1ac
    move-exception v2

    monitor-exit v17
    :try_end_1ae
    .catchall {:try_start_c .. :try_end_1ae} :catchall_1ac

    throw v2

    .line 3560
    :cond_1af
    :try_start_1af
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3574
    :cond_1b8
    :goto_1b8
    monitor-exit v17

    .line 3575
    return-void

    .line 3564
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e4

    .line 3565
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$InFlight;

    .line 3566
    .local v11, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v11, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v11, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v5, v11, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    goto :goto_1b8

    .line 3570
    .end local v11    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 3571
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1f9
    .catchall {:try_start_1af .. :try_end_1f9} :catchall_1ac

    goto :goto_1b8
.end method
