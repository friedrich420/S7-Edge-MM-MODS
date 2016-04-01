.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$1;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/print/IPrintSpooler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field private final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v0, 0x1d4c0

    :goto_e
    sput-wide v0, BIND_SPOOLER_SERVICE_TIMEOUT:J

    return-void

    :cond_11
    const-wide/16 v0, 0x2710

    goto :goto_e
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "callbacks"    # Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    .line 66
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    .line 68
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .line 70
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 72
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$1;)V

    iput-object v0, p0, mServiceConnection:Landroid/content/ServiceConnection;

    .line 98
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, mUserHandle:Landroid/os/UserHandle;

    .line 100
    iput-object p3, p0, mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .line 101
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object v0, p0, mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, mIntent:Landroid/content/Intent;

    .line 103
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.printspooler"

    const-string v3, "com.android.printspooler.model.PrintSpoolerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;

    .prologue
    .line 53
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p1, "x1"    # Landroid/print/IPrintSpooler;

    .prologue
    .line 53
    iput-object p1, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;

    .prologue
    .line 53
    invoke-direct {p0}, setClientLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;

    .prologue
    .line 53
    invoke-direct {p0}, clearClientLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;

    .prologue
    .line 53
    iget-object v0, p0, mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;

    .prologue
    .line 53
    invoke-direct {p0}, onAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p1, "x1"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 53
    invoke-direct {p0, p1}, onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method private bindLocked()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v6, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v6, :cond_5

    .line 389
    :goto_4
    return-void

    .line 367
    :cond_5
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mIntent:Landroid/content/Intent;

    iget-object v8, p0, mServiceConnection:Landroid/content/ServiceConnection;

    const v9, 0x4000001

    iget-object v10, p0, mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 372
    .local v4, "startMillis":J
    :goto_17
    iget-object v6, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v6, :cond_24

    .line 387
    const/4 v6, 0x1

    iput-boolean v6, p0, mCanUnbind:Z

    .line 388
    iget-object v6, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 375
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 376
    .local v0, "elapsedMillis":J
    sget-wide v6, BIND_SPOOLER_SERVICE_TIMEOUT:J

    sub-long v2, v6, v0

    .line 377
    .local v2, "remainingMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3c

    .line 378
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    const-string v7, "Cannot get spooler!"

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 381
    :cond_3c
    :try_start_3c
    iget-object v6, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_17

    .line 382
    :catch_42
    move-exception v6

    goto :goto_17
.end method

.method private clearClientLocked()V
    .registers 4

    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 429
    :goto_6
    return-void

    .line 425
    :catch_7
    move-exception v0

    .line 426
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error clearing print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_3
    iget-object v0, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_b

    .line 352
    iget-object v0, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v1

    .line 355
    :goto_a
    return-object v0

    .line 354
    :cond_b
    invoke-direct {p0}, bindLocked()V

    .line 355
    iget-object v0, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v1

    goto :goto_a

    .line 356
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private onAllPrintJobsHandled()V
    .registers 3

    .prologue
    .line 339
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_3
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 341
    invoke-direct {p0}, unbindLocked()V

    .line 342
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 346
    iget-object v0, p0, mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 347
    return-void
.end method

.method private setClientLocked()V
    .registers 4

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v2, p0, mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 420
    :goto_7
    return-void

    .line 417
    :catch_8
    move-exception v0

    .line 418
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error setting print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .prologue
    .line 438
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_18
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .prologue
    .line 432
    iget-boolean v0, p0, mDestroyed:Z

    if-eqz v0, :cond_c

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_c
    return-void
.end method

.method private unbindLocked()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v0, :cond_a

    .line 403
    :goto_4
    return-void

    .line 406
    :cond_5
    :try_start_5
    iget-object v0, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_1c

    .line 396
    :cond_a
    :goto_a
    iget-boolean v0, p0, mCanUnbind:Z

    if-eqz v0, :cond_5

    .line 400
    invoke-direct {p0}, clearClientLocked()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 402
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_4

    .line 407
    :catch_1c
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 7
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 134
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 135
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 136
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 137
    const/4 v2, 0x0

    iput-boolean v2, p0, mCanUnbind:Z

    .line 138
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    .line 140
    :try_start_d
    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_3f
    .catchall {:try_start_d .. :try_end_14} :catchall_57

    .line 149
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, mCanUnbind:Z

    .line 151
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    .line 154
    :goto_20
    return-void

    .line 138
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    .line 152
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 141
    :catch_27
    move-exception v0

    .line 142
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error creating print job."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_57

    .line 149
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, mCanUnbind:Z

    .line 151
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v3

    goto :goto_20

    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v2

    .line 143
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_3f
    move-exception v1

    .line 144
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_40
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error creating print job."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_57

    .line 149
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    const/4 v2, 0x1

    :try_start_4b
    iput-boolean v2, p0, mCanUnbind:Z

    .line 151
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v3

    goto :goto_20

    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw v2

    .line 146
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_57
    move-exception v2

    .line 149
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    const/4 v4, 0x1

    :try_start_5c
    iput-boolean v4, p0, mCanUnbind:Z

    .line 151
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_65

    throw v2

    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public final destroy()V
    .registers 3

    .prologue
    .line 307
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 311
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 313
    invoke-direct {p0}, unbindLocked()V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, mDestroyed:Z

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, mCanUnbind:Z

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "destroyed="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 323
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "bound="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v0, p0, mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_49

    const-string/jumbo v0, "true"

    :goto_2c
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 326
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_4d

    .line 329
    :try_start_36
    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v0

    invoke-interface {v0}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {v0, p1, v2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_36 .. :try_end_47} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_47} :catch_50
    .catchall {:try_start_36 .. :try_end_47} :catchall_4d

    .line 335
    :goto_47
    :try_start_47
    monitor-exit v1

    .line 336
    return-void

    .line 323
    :cond_49
    const-string/jumbo v0, "false"

    goto :goto_2c

    .line 335
    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4d

    throw v0

    .line 332
    :catch_50
    move-exception v0

    goto :goto_47

    .line 330
    :catch_52
    move-exception v0

    goto :goto_47
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    .line 183
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 184
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 185
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 186
    const/4 v2, 0x0

    iput-boolean v2, p0, mCanUnbind:Z

    .line 187
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    .line 189
    :try_start_d
    iget-object v2, p0, mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_43
    .catchall {:try_start_d .. :try_end_16} :catchall_5b

    move-result-object v2

    .line 199
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, mCanUnbind:Z

    .line 201
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    .line 204
    :goto_23
    return-object v2

    .line 187
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 202
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2

    .line 191
    :catch_2a
    move-exception v0

    .line 192
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2b
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print job info."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_5b

    .line 199
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    const/4 v2, 0x1

    :try_start_36
    iput-boolean v2, p0, mCanUnbind:Z

    .line 201
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v3

    .line 204
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3e
    const/4 v2, 0x0

    goto :goto_23

    .line 202
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_40

    throw v2

    .line 193
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_43
    move-exception v1

    .line 194
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_44
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print job info."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5b

    .line 199
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    const/4 v2, 0x1

    :try_start_4f
    iput-boolean v2, p0, mCanUnbind:Z

    .line 201
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v3

    goto :goto_3e

    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v2

    .line 196
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_5b
    move-exception v2

    .line 199
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    const/4 v4, 0x1

    :try_start_60
    iput-boolean v4, p0, mCanUnbind:Z

    .line 201
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_69

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "state"    # I
    .param p3, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 110
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 111
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, mCanUnbind:Z

    .line 113
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    .line 115
    :try_start_d
    iget-object v2, p0, mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_43
    .catchall {:try_start_d .. :try_end_16} :catchall_5b

    move-result-object v2

    .line 125
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, mCanUnbind:Z

    .line 127
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    .line 130
    :goto_23
    return-object v2

    .line 113
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 128
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2

    .line 117
    :catch_2a
    move-exception v0

    .line 118
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2b
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print jobs."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_5b

    .line 125
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    const/4 v2, 0x1

    :try_start_36
    iput-boolean v2, p0, mCanUnbind:Z

    .line 127
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v3

    .line 130
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3e
    const/4 v2, 0x0

    goto :goto_23

    .line 128
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_40

    throw v2

    .line 119
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_43
    move-exception v1

    .line 120
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_44
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print jobs."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5b

    .line 125
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    const/4 v2, 0x1

    :try_start_4f
    iput-boolean v2, p0, mCanUnbind:Z

    .line 127
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v3

    goto :goto_3e

    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v2

    .line 122
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_5b
    move-exception v2

    .line 125
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    const/4 v4, 0x1

    :try_start_60
    iput-boolean v4, p0, mCanUnbind:Z

    .line 127
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_69

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final removeObsoletePrintJobs()V
    .registers 6

    .prologue
    .line 283
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 284
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 285
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 286
    const/4 v2, 0x0

    iput-boolean v2, p0, mCanUnbind:Z

    .line 287
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    .line 289
    :try_start_d
    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_3f
    .catchall {:try_start_d .. :try_end_14} :catchall_57

    .line 299
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, mCanUnbind:Z

    .line 301
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    .line 304
    :goto_20
    return-void

    .line 287
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    .line 302
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 290
    :catch_27
    move-exception v0

    .line 291
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_57

    .line 299
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, mCanUnbind:Z

    .line 301
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v3

    goto :goto_20

    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v2

    .line 292
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_3f
    move-exception v1

    .line 293
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_40
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_57

    .line 299
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    const/4 v2, 0x1

    :try_start_4b
    iput-boolean v2, p0, mCanUnbind:Z

    .line 301
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v3

    goto :goto_20

    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw v2

    .line 295
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_57
    move-exception v2

    .line 299
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    const/4 v4, 0x1

    :try_start_5c
    iput-boolean v4, p0, mCanUnbind:Z

    .line 301
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_65

    throw v2

    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "cancelling"    # Z

    .prologue
    .line 258
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 259
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 261
    const/4 v2, 0x0

    iput-boolean v2, p0, mCanUnbind:Z

    .line 262
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    .line 264
    :try_start_d
    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_3f
    .catchall {:try_start_d .. :try_end_14} :catchall_57

    .line 275
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, mCanUnbind:Z

    .line 277
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    .line 280
    :goto_20
    return-void

    .line 262
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    .line 278
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 266
    :catch_27
    move-exception v0

    .line 267
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error setting print job cancelling."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_57

    .line 275
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, mCanUnbind:Z

    .line 277
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3

    goto :goto_20

    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v2

    .line 268
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_3f
    move-exception v1

    .line 269
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_40
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error setting print job cancelling."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_57

    .line 275
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    const/4 v2, 0x1

    :try_start_4b
    iput-boolean v2, p0, mCanUnbind:Z

    .line 277
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3

    goto :goto_20

    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw v2

    .line 271
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_57
    move-exception v2

    .line 275
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    const/4 v4, 0x1

    :try_start_5c
    iput-boolean v4, p0, mCanUnbind:Z

    .line 277
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_65

    throw v2

    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 209
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_7
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 211
    const/4 v4, 0x0

    iput-boolean v4, p0, mCanUnbind:Z

    .line 212
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    .line 214
    :try_start_e
    iget-object v3, p0, mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_43
    .catchall {:try_start_e .. :try_end_17} :catchall_5b

    move-result v2

    .line 224
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v4, p0, mCanUnbind:Z

    .line 226
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_28

    .line 229
    :goto_24
    return v2

    .line 212
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 227
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 216
    :catch_2b
    move-exception v0

    .line 217
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job state."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_5b

    .line 224
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    const/4 v4, 0x1

    :try_start_37
    iput-boolean v4, p0, mCanUnbind:Z

    .line 226
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v3

    goto :goto_24

    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_40

    throw v2

    .line 218
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_43
    move-exception v1

    .line 219
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_44
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job state."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5b

    .line 224
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    const/4 v4, 0x1

    :try_start_4f
    iput-boolean v4, p0, mCanUnbind:Z

    .line 226
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v3

    goto :goto_24

    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v2

    .line 221
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_5b
    move-exception v2

    .line 224
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    const/4 v4, 0x1

    :try_start_60
    iput-boolean v4, p0, mCanUnbind:Z

    .line 226
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_69

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 234
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    :try_start_7
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 236
    const/4 v4, 0x0

    iput-boolean v4, p0, mCanUnbind:Z

    .line 237
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    .line 239
    :try_start_e
    iget-object v3, p0, mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_43
    .catchall {:try_start_e .. :try_end_17} :catchall_5b

    move-result v2

    .line 249
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v4, p0, mCanUnbind:Z

    .line 251
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_28

    .line 254
    :goto_24
    return v2

    .line 237
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 252
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 241
    :catch_2b
    move-exception v0

    .line 242
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job tag."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_5b

    .line 249
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    const/4 v4, 0x1

    :try_start_37
    iput-boolean v4, p0, mCanUnbind:Z

    .line 251
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v3

    goto :goto_24

    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_40

    throw v2

    .line 243
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_43
    move-exception v1

    .line 244
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_44
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job tag."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5b

    .line 249
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    const/4 v4, 0x1

    :try_start_4f
    iput-boolean v4, p0, mCanUnbind:Z

    .line 251
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v3

    goto :goto_24

    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v2

    .line 246
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_5b
    move-exception v2

    .line 249
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    const/4 v4, 0x1

    :try_start_60
    iput-boolean v4, p0, mCanUnbind:Z

    .line 251
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_69

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 157
    invoke-direct {p0}, throwIfCalledOnMainThread()V

    .line 158
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_6
    invoke-direct {p0}, throwIfDestroyedLocked()V

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, mCanUnbind:Z

    .line 161
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    .line 163
    :try_start_d
    invoke-direct {p0}, getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_45
    .catchall {:try_start_d .. :try_end_14} :catchall_60

    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    const/4 v2, 0x1

    :try_start_1b
    iput-boolean v2, p0, mCanUnbind:Z

    .line 177
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    .line 180
    :goto_23
    return-void

    .line 161
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 178
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2

    .line 164
    :catch_2a
    move-exception v0

    .line 165
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2b
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error writing print job data."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_60

    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    const/4 v2, 0x1

    :try_start_39
    iput-boolean v2, p0, mCanUnbind:Z

    .line 177
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v3

    goto :goto_23

    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw v2

    .line 166
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_45
    move-exception v1

    .line 167
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_46
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error writing print job data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_60

    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    const/4 v2, 0x1

    :try_start_54
    iput-boolean v2, p0, mCanUnbind:Z

    .line 177
    iget-object v2, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v3

    goto :goto_23

    :catchall_5d
    move-exception v2

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5d

    throw v2

    .line 169
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_60
    move-exception v2

    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    const/4 v4, 0x1

    :try_start_68
    iput-boolean v4, p0, mCanUnbind:Z

    .line 177
    iget-object v4, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_71

    throw v2

    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method
