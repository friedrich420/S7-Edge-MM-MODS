.class Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 565
    iput-object p1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    .line 566
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 567
    return-void
.end method

.method private isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 716
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 698
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    .line 699
    .local v2, "jobReady":Z
    iget-object v4, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 700
    .local v1, "jobPending":Z
    iget-object v4, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v4, p1}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 701
    .local v0, "jobActive":Z
    iget-object v4, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 707
    .local v3, "userRunning":Z
    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2c

    if-nez v1, :cond_2c

    if-nez v0, :cond_2c

    const/4 v4, 0x1

    :goto_2b
    return v4

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, "chargingCount":I
    const/4 v4, 0x0

    .line 643
    .local v4, "idleCount":I
    const/4 v0, 0x0

    .line 644
    .local v0, "backoffCount":I
    const/4 v2, 0x0

    .line 645
    .local v2, "connectivityCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v7, "runnableJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v8, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v6

    .line 647
    .local v6, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v3, v8, :cond_5d

    .line 648
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 649
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v5}, isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 650
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    if-lez v8, :cond_2d

    .line 651
    add-int/lit8 v0, v0, 0x1

    .line 653
    :cond_2d
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 654
    add-int/lit8 v4, v4, 0x1

    .line 656
    :cond_35
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v8

    if-nez v8, :cond_41

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 657
    :cond_41
    add-int/lit8 v2, v2, 0x1

    .line 659
    :cond_43
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 660
    add-int/lit8 v1, v1, 0x1

    .line 662
    :cond_4b
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 663
    :cond_51
    invoke-direct {p0, v5}, isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 664
    iget-object v8, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v8, v5}, Lcom/android/server/job/JobSchedulerService;->access$000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_4e

    .line 667
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_5d
    if-gtz v0, :cond_6c

    if-ge v4, v9, :cond_6c

    if-ge v2, v9, :cond_6c

    if-ge v1, v9, :cond_6c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_81

    .line 675
    :cond_6c
    const/4 v3, 0x0

    :goto_6d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_81

    .line 676
    iget-object v8, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 688
    :cond_81
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .registers 10

    .prologue
    .line 725
    iget-object v6, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v7

    .line 726
    :try_start_5
    iget-object v6, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v6, v6, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    if-eqz v6, :cond_d

    .line 728
    monitor-exit v7

    .line 765
    :goto_c
    return-void

    .line 730
    :cond_d
    iget-object v6, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 734
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 735
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 736
    .local v4, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    const/4 v0, 0x0

    .line 737
    .local v0, "availableContext":Lcom/android/server/job/JobServiceContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v6, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4c

    .line 738
    iget-object v6, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 739
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    .line 740
    .local v5, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_62

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 743
    const/4 v0, 0x0

    .line 750
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_4c
    if-eqz v0, :cond_15

    .line 755
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 759
    iget-object v6, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v6, v4}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 761
    :cond_5b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 764
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :catchall_5f
    move-exception v6

    monitor-exit v7
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_5f

    throw v6

    .line 746
    .restart local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .restart local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_62
    :try_start_62
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 747
    move-object v0, v3

    .line 737
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 764
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .end local v1    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5f

    goto :goto_c
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .registers 5

    .prologue
    .line 606
    iget-object v3, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 610
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 611
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 612
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 616
    iget-object v3, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 617
    :cond_25
    invoke-direct {p0, v1}, isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 618
    iget-object v3, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v3, v1}, Lcom/android/server/job/JobSchedulerService;->access$000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_22

    .line 629
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_31
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 571
    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 572
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_d

    .line 573
    monitor-exit v2

    .line 599
    :goto_c
    return-void

    .line 575
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1b

    .line 576
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5a

    .line 596
    :goto_13
    invoke-direct {p0}, maybeRunPendingJobsH()V

    .line 598
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, removeMessages(I)V

    goto :goto_c

    .line 575
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 578
    :pswitch_1e
    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 579
    :try_start_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 582
    .local v0, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_44

    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 584
    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_44
    invoke-direct {p0}, queueReadyJobsForExecutionLockedH()V

    .line 587
    monitor-exit v2

    goto :goto_13

    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_49

    throw v1

    .line 590
    :pswitch_4c
    iget-object v1, p0, this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 592
    :try_start_51
    invoke-direct {p0}, maybeQueueReadyJobsForExecutionLockedH()V

    .line 593
    monitor-exit v2

    goto :goto_13

    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_56

    throw v1

    .line 576
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_4c
    .end packed-switch
.end method
