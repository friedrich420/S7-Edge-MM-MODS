.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobCompletedListener;
.implements Lcom/android/server/job/StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final MAX_JOB_CONTEXTS_COUNT:I

.field static final MIN_CHARGING_COUNT:I = 0x1

.field static final MIN_CONNECTIVITY_COUNT:I = 0x1

.field static final MIN_IDLE_COUNT:I = 0x1

.field static final MIN_READY_JOBS_COUNT:I = 0x2

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceIdleMode:Z

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/android/server/job/JobStore;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field mReadyToRock:Z

.field final mStartedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput v0, MAX_JOB_CONTEXTS_COUNT:I

    return-void

    :cond_a
    const/4 v0, 0x3

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActiveServices:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingJobs:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStartedUsers:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mControllers:Ljava/util/List;

    .line 317
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/TimeController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/IdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/AppIdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 324
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 325
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, mJobs:Lcom/android/server/job/JobStore;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 74
    invoke-direct {p0, p1}, stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 74
    invoke-direct {p0, p1}, isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method private cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 261
    invoke-direct {p0, p1}, stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 262
    iget-object v1, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v1

    .line 264
    :try_start_6
    iget-object v0, p0, mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    invoke-direct {p0, p1}, stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 16
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 459
    .local v10, "elapsedNowMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 461
    .local v7, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v12

    .line 462
    .local v12, "initialBackoffMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 465
    .local v6, "backoffAttempts":I
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 474
    long-to-float v0, v12

    add-int/lit8 v1, v6, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v8, v0

    .line 478
    .local v8, "delayMillis":J
    :goto_21
    const-wide/32 v0, 0x112a880

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 480
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    add-long v2, v10, v8

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0

    .line 467
    .end local v8    # "delayMillis":J
    :pswitch_36
    int-to-long v0, v6

    mul-long v8, v12, v0

    .line 468
    .restart local v8    # "delayMillis":J
    goto :goto_21

    .line 465
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 16
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 498
    .local v8, "elapsedNow":J
    const-wide/16 v12, 0x0

    .line 501
    .local v12, "runEarly":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 502
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 504
    :cond_17
    add-long v2, v8, v12

    .line 505
    .local v2, "newEarliestRunTimeElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v10

    .line 506
    .local v10, "period":J
    add-long v4, v2, v10

    .line 512
    .local v4, "newLatestRuntimeElapsed":J
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 436
    iget-object v3, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 437
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 438
    .local v1, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 439
    const/4 v3, 0x1

    .line 442
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :goto_26
    return v3

    .line 435
    .restart local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_26
.end method

.method private startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 381
    iget-object v5, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 382
    :try_start_3
    iget-object v4, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 383
    .local v3, "update":Z
    iget-boolean v2, p0, mReadyToRock:Z

    .line 384
    .local v2, "rocking":Z
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    .line 385
    if-eqz v2, :cond_2d

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v4, p0, mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2d

    .line 387
    iget-object v4, p0, mControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 388
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v3, :cond_24

    .line 389
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 391
    :cond_24
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 384
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "rocking":Z
    .end local v3    # "update":Z
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4

    .line 394
    .restart local v2    # "rocking":Z
    .restart local v3    # "update":Z
    :cond_2d
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 419
    iget-object v3, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 420
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 421
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 422
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    .line 423
    const/4 v3, 0x1

    .line 426
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :goto_29
    return v3

    .line 418
    .restart local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_2d
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 403
    iget-object v5, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 405
    :try_start_3
    iget-object v4, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 406
    .local v2, "removed":Z
    iget-boolean v3, p0, mReadyToRock:Z

    .line 407
    .local v3, "rocking":Z
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_27

    .line 408
    if-eqz v2, :cond_2a

    if-eqz v3, :cond_2a

    .line 409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v4, p0, mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2a

    .line 410
    iget-object v4, p0, mControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 411
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 407
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "removed":Z
    .end local v3    # "rocking":Z
    :catchall_27
    move-exception v4

    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v4

    .line 414
    .restart local v2    # "removed":Z
    .restart local v3    # "rocking":Z
    :cond_2a
    return v2
.end method


# virtual methods
.method public cancelJob(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 249
    iget-object v2, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 250
    :try_start_3
    iget-object v1, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 251
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 252
    if-eqz v0, :cond_f

    .line 253
    invoke-direct {p0, v0}, cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 255
    :cond_f
    return-void

    .line 251
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public cancelJobsForUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 231
    iget-object v4, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v4

    .line 232
    :try_start_3
    iget-object v3, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 233
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_20

    .line 235
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 236
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 233
    .end local v0    # "i":I
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3

    .line 238
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_20
    return-void
.end method

.method cancelJobsForUser(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 214
    iget-object v4, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v4

    .line 215
    :try_start_3
    iget-object v3, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_20

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 219
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 216
    .end local v0    # "i":I
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3

    .line 221
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_20
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 901
    .local v4, "now":J
    iget-object v9, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v9

    .line 902
    :try_start_7
    const-string v8, "Started users: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v8, p0, mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3b

    .line 904
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "u"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 906
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 907
    const-string v8, "Registered jobs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    iget-object v8, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->size()I

    move-result v8

    if-lez v8, :cond_66

    .line 909
    iget-object v8, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 910
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    :goto_52
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v0, v8, :cond_6b

    .line 911
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 912
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v8, "  "

    invoke-virtual {v1, p1, v8}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 915
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_66
    const-string v8, "  None."

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    iget-object v8, p0, mControllers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_85

    .line 918
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 919
    iget-object v8, p0, mControllers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v8, p1}, Lcom/android/server/job/controllers/StateController;->dumpControllerState(Ljava/io/PrintWriter;)V

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 921
    :cond_85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 922
    const-string v8, "Pending:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    const/4 v0, 0x0

    :goto_8e
    iget-object v8, p0, mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_a8

    .line 924
    iget-object v8, p0, mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 926
    :cond_a8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 927
    const-string v8, "Active jobs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    :goto_b1
    iget-object v8, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_ff

    .line 929
    iget-object v8, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 930
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 928
    :goto_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 933
    :cond_ca
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v6

    .line 934
    .local v6, "timeout":J
    const-string v8, "Running for: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 936
    const-string/jumbo v8, "s timeout="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 938
    const-string v8, " fromnow="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    sub-long v10, v6, v4

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 940
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    const-string v10, "  "

    invoke-virtual {v8, p1, v10}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_c7

    .line 946
    .end local v0    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v6    # "timeout":J
    :catchall_fc
    move-exception v8

    monitor-exit v9
    :try_end_fe
    .catchall {:try_start_7 .. :try_end_fe} :catchall_fc

    throw v8

    .line 943
    .restart local v0    # "i":I
    :cond_ff
    :try_start_ff
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 944
    const-string/jumbo v8, "mReadyToRock="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, mReadyToRock:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 945
    const-string/jumbo v8, "mDeviceIdleMode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, mDeviceIdleMode:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 946
    monitor-exit v9
    :try_end_119
    .catchall {:try_start_ff .. :try_end_119} :catchall_fc

    .line 947
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 948
    return-void
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    iget-object v5, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 201
    :try_start_8
    iget-object v4, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 202
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_2b

    .line 203
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 204
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 205
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 208
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_2b
    monitor-exit v5

    .line 209
    return-object v3

    .line 208
    .end local v0    # "i":I
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_2d
    move-exception v4

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public onBootPhase(I)V
    .registers 16
    .param p1, "phase"    # I

    .prologue
    .line 335
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_47

    .line 337
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 341
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 342
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 371
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "userFilter":Landroid/content/IntentFilter;
    :cond_46
    :goto_46
    return-void

    .line 346
    :cond_47
    const/16 v0, 0x258

    if-ne p1, v0, :cond_46

    .line 347
    iget-object v1, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v1

    .line 349
    const/4 v0, 0x1

    :try_start_4f
    iput-boolean v0, p0, mReadyToRock:Z

    .line 350
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 353
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5e
    sget v0, MAX_JOB_CONTEXTS_COUNT:I

    if-ge v11, v0, :cond_79

    .line 354
    iget-object v0, p0, mActiveServices:Ljava/util/List;

    new-instance v2, Lcom/android/server/job/JobServiceContext;

    iget-object v4, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v11, v11, 0x1

    goto :goto_5e

    .line 359
    :cond_79
    iget-object v0, p0, mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v13

    .line 360
    .local v13, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v11, 0x0

    :goto_80
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v11, v0, :cond_b3

    .line 361
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 362
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    const/4 v10, 0x0

    .local v10, "controller":I
    :goto_8d
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_b0

    .line 363
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    iget-boolean v2, p0, mDeviceIdleMode:Z

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/StateController;->deviceIdleModeChanged(Z)V

    .line 364
    iget-object v0, p0, mControllers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v12}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 362
    add-int/lit8 v10, v10, 0x1

    goto :goto_8d

    .line 360
    :cond_b0
    add-int/lit8 v11, v11, 0x1

    goto :goto_80

    .line 368
    .end local v10    # "controller":I
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_b3
    iget-object v0, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    monitor-exit v1

    goto :goto_46

    .end local v11    # "i":I
    .end local v13    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_bf
    move-exception v0

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_4f .. :try_end_c1} :catchall_bf

    throw v0
.end method

.method public onControllerStateChanged()V
    .registers 3

    .prologue
    .line 555
    iget-object v0, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    return-void
.end method

.method public onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    .prologue
    .line 530
    invoke-direct {p0, p1}, stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 544
    :goto_6
    return-void

    .line 536
    :cond_7
    if-eqz p2, :cond_1b

    .line 537
    invoke-direct {p0, p1}, getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 538
    .local v0, "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v0}, startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 543
    .end local v0    # "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    :cond_10
    :goto_10
    iget-object v2, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 539
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 540
    invoke-direct {p0, p1}, getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 541
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_10
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 560
    iget-object v0, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 561
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 330
    const-string/jumbo v0, "jobscheduler"

    iget-object v1, p0, mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 173
    iget-object v0, p0, mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 180
    iget-object v0, p0, mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .registers 6
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    .prologue
    const/4 v2, 0x1

    .line 191
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;I)V

    .line 192
    .local v0, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {p0, p2, v1}, cancelJob(II)V

    .line 193
    invoke-direct {p0, v0}, startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 194
    iget-object v1, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return v2
.end method

.method updateIdleMode(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "changed":Z
    iget-object v6, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v6

    .line 274
    :try_start_4
    iget-boolean v5, p0, mDeviceIdleMode:Z

    if-eq v5, p1, :cond_9

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_9
    iget-boolean v4, p0, mReadyToRock:Z

    .line 278
    .local v4, "rocking":Z
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_27

    .line 279
    if-eqz v0, :cond_59

    .line 280
    if-eqz v4, :cond_2a

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v5, p0, mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2a

    .line 282
    iget-object v5, p0, mControllers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/StateController;->deviceIdleModeChanged(Z)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 278
    .end local v2    # "i":I
    .end local v4    # "rocking":Z
    :catchall_27
    move-exception v5

    :try_start_28
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v5

    .line 285
    .restart local v4    # "rocking":Z
    :cond_2a
    iget-object v6, p0, mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v6

    .line 286
    :try_start_2d
    iput-boolean p1, p0, mDeviceIdleMode:Z

    .line 287
    if-eqz p1, :cond_4e

    .line 289
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_32
    iget-object v5, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_58

    .line 290
    iget-object v5, p0, mActiveServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 291
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 292
    .local v1, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_4b

    .line 293
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    .line 289
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 298
    .end local v1    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_4e
    iget-object v5, p0, mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 300
    :cond_58
    monitor-exit v6

    .line 302
    :cond_59
    return-void

    .line 300
    :catchall_5a
    move-exception v5

    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_5a

    throw v5
.end method
