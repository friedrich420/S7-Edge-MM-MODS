.class Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 314
    iput-object p1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    .line 315
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 316
    return-void
.end method

.method private closeAndCleanupJobH(Z)V
    .registers 9
    .param p1, "reschedule"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 545
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$600(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 546
    :try_start_9
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-ne v1, v5, :cond_11

    .line 547
    monitor-exit v2

    .line 573
    :goto_10
    return-void

    .line 549
    :cond_11
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_9b

    move-result-object v0

    .line 551
    .local v0, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :try_start_17
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$700(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v4}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_34} :catch_9e
    .catchall {:try_start_17 .. :try_end_34} :catchall_9b

    .line 555
    :goto_34
    :try_start_34
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$800(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 556
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$800(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 558
    :cond_45
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$900(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 559
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1, v3}, Lcom/android/server/job/JobServiceContext;->access$802(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 560
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v1, v3}, Lcom/android/server/job/JobServiceContext;->access$502(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    .line 561
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;
    invoke-static {v1, v3}, Lcom/android/server/job/JobServiceContext;->access$402(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    .line 562
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v3, 0x4

    iput v3, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 563
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$200(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 565
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    invoke-static {v1, v3}, Lcom/android/server/job/JobServiceContext;->access$1002(Lcom/android/server/job/JobServiceContext;Z)Z

    .line 566
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_34 .. :try_end_7d} :catchall_9b

    .line 567
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$000(Lcom/android/server/job/JobServiceContext;)V

    .line 568
    invoke-virtual {p0, v6}, removeMessages(I)V

    .line 569
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, removeMessages(I)V

    .line 570
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, removeMessages(I)V

    .line 571
    invoke-virtual {p0, v5}, removeMessages(I)V

    .line 572
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$1100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/server/job/JobCompletedListener;->onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V

    goto/16 :goto_10

    .line 566
    .end local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_9b
    move-exception v1

    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v1

    .line 552
    .restart local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catch_9e
    move-exception v1

    goto :goto_34
.end method

.method private handleCancelH()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 450
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-nez v0, :cond_a

    .line 479
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 460
    :cond_a
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_42

    .line 476
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling a job without a valid verb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 463
    :pswitch_2e
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->access$200(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_9

    .line 466
    :pswitch_38
    invoke-virtual {p0, v1}, hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 470
    invoke-direct {p0}, sendStopMessageH()V

    goto :goto_9

    .line 460
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2e
        :pswitch_38
        :pswitch_9
    .end packed-switch
.end method

.method private handleFinishedH(Z)V
    .registers 6
    .param p1, "reschedule"    # Z

    .prologue
    .line 428
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_34

    .line 434
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->access$100()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_2f
    return-void

    .line 431
    :pswitch_30
    invoke-direct {p0, p1}, closeAndCleanupJobH(Z)V

    goto :goto_2f

    .line 428
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private handleOpTimeoutH()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 483
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_d4

    .line 510
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling timeout for an invalid job state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dropping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-direct {p0, v3}, closeAndCleanupJobH(Z)V

    .line 514
    :goto_33
    return-void

    .line 485
    :pswitch_34
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time-out while trying to bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dropping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0, v3}, closeAndCleanupJobH(Z)V

    goto :goto_33

    .line 493
    :pswitch_60
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response from client for onStartJob \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0, v3}, closeAndCleanupJobH(Z)V

    goto :goto_33

    .line 499
    :pswitch_86
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response from client for onStopJob, \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, closeAndCleanupJobH(Z)V

    goto :goto_33

    .line 505
    :pswitch_ad
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client timed out while executing (no jobFinished received). sending onStop. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, sendStopMessageH()V

    goto/16 :goto_33

    .line 483
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_34
        :pswitch_60
        :pswitch_ad
        :pswitch_86
    .end packed-switch
.end method

.method private handleServiceBoundH()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v1, :cond_2e

    .line 365
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->access$100()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v4, v4, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, v1}, closeAndCleanupJobH(Z)V

    .line 386
    :goto_2d
    return-void

    .line 370
    :cond_2e
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$200(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 375
    invoke-direct {p0, v2}, closeAndCleanupJobH(Z)V

    goto :goto_2d

    .line 379
    :cond_3e
    :try_start_3e
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 380
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$300(Lcom/android/server/job/JobServiceContext;)V

    .line 381
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$400(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_55} :catch_56

    goto :goto_2d

    .line 382
    :catch_56
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method private handleStartedH(Z)V
    .registers 6
    .param p1, "workOngoing"    # Z

    .prologue
    .line 396
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_52

    .line 415
    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->access$100()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_2f
    return-void

    .line 398
    :pswitch_30
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 399
    if-nez p1, :cond_3c

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, handleFinishedH(Z)V

    goto :goto_2f

    .line 404
    :cond_3c
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->access$200(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 409
    invoke-direct {p0}, handleCancelH()V

    goto :goto_2f

    .line 412
    :cond_4c
    iget-object v0, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->access$300(Lcom/android/server/job/JobServiceContext;)V

    goto :goto_2f

    .line 396
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_30
    .end packed-switch
.end method

.method private sendStopMessageH()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$000(Lcom/android/server/job/JobServiceContext;)V

    .line 522
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2f

    .line 523
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0, v4}, closeAndCleanupJobH(Z)V

    .line 535
    :goto_2e
    return-void

    .line 528
    :cond_2f
    :try_start_2f
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 529
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$300(Lcom/android/server/job/JobServiceContext;)V

    .line 530
    iget-object v1, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$400(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_46} :catch_47

    goto :goto_2e

    .line 531
    :catch_47
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "JobServiceContext"

    const-string v2, "Error sending onStopJob to client."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    invoke-direct {p0, v4}, closeAndCleanupJobH(Z)V

    goto :goto_2e
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 320
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_64

    .line 355
    const-string v2, "JobServiceContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognised message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1f
    :goto_1f
    return-void

    .line 322
    :pswitch_20
    iget-object v2, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$000(Lcom/android/server/job/JobServiceContext;)V

    .line 323
    invoke-direct {p0}, handleServiceBoundH()V

    goto :goto_1f

    .line 330
    :pswitch_29
    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->access$000(Lcom/android/server/job/JobServiceContext;)V

    .line 332
    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-ne v3, v1, :cond_3e

    .line 333
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_3c

    .line 334
    .local v1, "workOngoing":Z
    :goto_38
    invoke-direct {p0, v1}, handleStartedH(Z)V

    goto :goto_1f

    .end local v1    # "workOngoing":Z
    :cond_3c
    move v1, v2

    .line 333
    goto :goto_38

    .line 335
    :cond_3e
    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4c

    iget-object v3, p0, this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    .line 337
    :cond_4c
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_55

    move v0, v1

    .line 338
    .local v0, "reschedule":Z
    :goto_51
    invoke-direct {p0, v0}, handleFinishedH(Z)V

    goto :goto_1f

    .end local v0    # "reschedule":Z
    :cond_55
    move v0, v2

    .line 337
    goto :goto_51

    .line 346
    :pswitch_57
    invoke-direct {p0}, handleCancelH()V

    goto :goto_1f

    .line 349
    :pswitch_5b
    invoke-direct {p0}, handleOpTimeoutH()V

    goto :goto_1f

    .line 352
    :pswitch_5f
    invoke-direct {p0, v1}, closeAndCleanupJobH(Z)V

    goto :goto_1f

    .line 320
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_29
        :pswitch_20
        :pswitch_57
        :pswitch_5f
    .end packed-switch
.end method
