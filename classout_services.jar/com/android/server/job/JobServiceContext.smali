.class public Lcom/android/server/job/JobServiceContext;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_SERVICE_BOUND:I = 0x2

.field private static final MSG_SHUTDOWN_EXECUTION:I = 0x4

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;

.field private static final defaultMaxActiveJobsPerService:I


# instance fields
.field private mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 68
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_9
    sput v0, defaultMaxActiveJobsPerService:I

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VERB_BINDING"

    aput-object v4, v0, v3

    const-string v3, "VERB_STARTING"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "VERB_EXECUTING"

    aput-object v3, v0, v1

    const-string v1, "VERB_STOPPING"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "VERB_FINISHED"

    aput-object v2, v0, v1

    sput-object v0, VERB_STRINGS:[Ljava/lang/String;

    return-void

    :cond_28
    move v0, v2

    .line 68
    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 143
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v0, p0, mCallbackHandler:Landroid/os/Handler;

    .line 144
    iput-object p3, p0, mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, mAvailable:Z

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p3}, <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobServiceContext;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    invoke-direct {p0}, removeOpTimeOut()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sget-object v0, VERB_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/job/JobServiceContext;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, mAvailable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/job/JobServiceContext;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    invoke-direct {p0}, scheduleOpTimeOut()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Landroid/app/job/JobParameters;

    .prologue
    .line 64
    iput-object p1, p0, mParams:Landroid/app/job/JobParameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 64
    iput-object p1, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 64
    iput-object p1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    .line 64
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private removeOpTimeOut()V
    .registers 3

    .prologue
    .line 598
    iget-object v0, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    return-void
.end method

.method private scheduleOpTimeOut()V
    .registers 7

    .prologue
    .line 582
    invoke-direct {p0}, removeOpTimeOut()V

    .line 584
    iget v1, p0, mVerb:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1f

    const-wide/32 v2, 0x927c0

    .line 591
    .local v2, "timeoutMillis":J
    :goto_b
    iget-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, mTimeoutElapsed:J

    .line 594
    return-void

    .line 584
    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "timeoutMillis":J
    :cond_1f
    const-wide/16 v2, 0x1f40

    goto :goto_b
.end method

.method private verifyCallingUid()Z
    .registers 4

    .prologue
    .line 297
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_3
    iget-object v0, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-eq v0, v2, :cond_16

    .line 302
    :cond_13
    const/4 v0, 0x0

    monitor-exit v1

    .line 304
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_15

    .line 305
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .registers 6
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z

    .prologue
    const/4 v1, 0x1

    .line 249
    invoke-direct {p0}, verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 253
    :goto_7
    return-void

    .line 252
    :cond_8
    iget-object v2, p0, mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_15

    move v0, v1

    :goto_d
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public acknowledgeStopMessage(IZ)V
    .registers 6
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-direct {p0}, verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 245
    :goto_7
    return-void

    .line 243
    :cond_8
    iget-object v2, p0, mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_15

    move v0, v1

    :goto_d
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method cancelExecutingJob()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 12
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 156
    :try_start_5
    iget-boolean v6, p0, mAvailable:Z

    if-nez v6, :cond_12

    .line 157
    const-string v4, "JobServiceContext"

    const-string v6, "Starting new runnable but context is unavailable > Error."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v5

    .line 191
    :goto_11
    return v3

    .line 161
    :cond_12
    iput-object p1, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 162
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_76

    move v2, v4

    .line 165
    .local v2, "isDeadlineExpired":Z
    :goto_27
    new-instance v6, Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8, v2}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z)V

    iput-object v6, p0, mParams:Landroid/app/job/JobParameters;

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, mExecutionStartTimeElapsed:J

    .line 168
    const/4 v6, 0x0

    iput v6, p0, mVerb:I

    .line 169
    invoke-direct {p0}, scheduleOpTimeOut()V

    .line 170
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/4 v7, 0x5

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, p0, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 174
    .local v0, "binding":Z
    if-nez v0, :cond_78

    .line 178
    const/4 v4, 0x0

    iput-object v4, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 179
    const/4 v4, 0x0

    iput-object v4, p0, mParams:Landroid/app/job/JobParameters;

    .line 180
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mExecutionStartTimeElapsed:J

    .line 181
    const/4 v4, 0x4

    iput v4, p0, mVerb:I

    .line 182
    invoke-direct {p0}, removeOpTimeOut()V

    .line 183
    monitor-exit v5

    goto :goto_11

    .line 192
    .end local v0    # "binding":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isDeadlineExpired":Z
    :catchall_73
    move-exception v3

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_73

    throw v3

    :cond_76
    move v2, v3

    .line 162
    goto :goto_27

    .line 186
    .restart local v0    # "binding":Z
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isDeadlineExpired":Z
    :cond_78
    :try_start_78
    iget-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_85} :catch_8b
    .catchall {:try_start_78 .. :try_end_85} :catchall_73

    .line 190
    :goto_85
    const/4 v3, 0x0

    :try_start_86
    iput-boolean v3, p0, mAvailable:Z

    .line 191
    monitor-exit v5
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_73

    move v3, v4

    goto :goto_11

    .line 187
    :catch_8b
    move-exception v3

    goto :goto_85
.end method

.method getExecutionStartTimeElapsed()J
    .registers 3

    .prologue
    .line 222
    iget-wide v0, p0, mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getRunningJob()Lcom/android/server/job/controllers/JobStatus;
    .registers 4

    .prologue
    .line 201
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_3
    iget-object v0, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, v2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_8

    .line 204
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method getTimeoutElapsed()J
    .registers 3

    .prologue
    .line 226
    iget-wide v0, p0, mTimeoutElapsed:J

    return-wide v0
.end method

.method isAvailable()Z
    .registers 3

    .prologue
    .line 216
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_3
    iget-boolean v0, p0, mAvailable:Z

    monitor-exit v1

    return v0

    .line 218
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public jobFinished(IZ)V
    .registers 6
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-direct {p0}, verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 236
    :goto_7
    return-void

    .line 234
    :cond_8
    iget-object v2, p0, mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_15

    move v0, v1

    :goto_d
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 265
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    :try_start_3
    iget-object v1, p0, mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 270
    .local v1, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1d

    .line 271
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 272
    :cond_12
    iget-object v2, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 283
    :goto_1c
    return-void

    .line 270
    .end local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2

    .line 275
    .restart local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_20
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v2

    iput-object v2, p0, service:Landroid/app/job/IJobService;

    .line 276
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 278
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 279
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 280
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 281
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 282
    iget-object v2, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1c
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 288
    iget-object v0, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void
.end method
