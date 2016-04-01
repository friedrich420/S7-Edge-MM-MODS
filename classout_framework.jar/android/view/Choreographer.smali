.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final MSG_DO_SND_CF:I = 0x3

.field private static final REPORTING_BASE:I

.field private static final SKIPPED_FRAME_REPORTING_BASE:I

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field mContext:Landroid/content/Context;

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 98
    const-wide/16 v0, 0xa

    sput-wide v0, sFrameDelay:J

    .line 101
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, sThreadInstance:Ljava/lang/ThreadLocal;

    .line 114
    const-string v0, "debug.choreographer.vsync"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, USE_VSYNC:Z

    .line 118
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, USE_FRAME_TIME:Z

    .line 123
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, SKIPPED_FRAME_WARNING_LIMIT:I

    .line 126
    const-string/jumbo v0, "sysprof.choreographer.skip"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, SKIPPED_FRAME_REPORTING_BASE:I

    .line 133
    const-string v0, "debug.reporting.base"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, REPORTING_BASE:I

    .line 138
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "input"

    aput-object v2, v0, v1

    const-string v1, "animation"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "traversal"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "commit"

    aput-object v2, v0, v1

    sput-object v0, CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 8
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 173
    new-instance v1, Landroid/view/FrameInfo;

    invoke-direct {v1}, Landroid/view/FrameInfo;-><init>()V

    iput-object v1, p0, mFrameInfo:Landroid/view/FrameInfo;

    .line 219
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    .line 220
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 221
    sget-boolean v1, USE_VSYNC:Z

    if-eqz v1, :cond_4a

    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    :goto_24
    iput-object v1, p0, mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 222
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, mLastFrameTimeNanos:J

    .line 224
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, getRefreshRate()F

    move-result v3

    div-float/2addr v1, v3

    float-to-long v4, v1

    iput-wide v4, p0, mFrameIntervalNanos:J

    .line 226
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    const/4 v1, 0x3

    if-gt v0, v1, :cond_4c

    .line 228
    iget-object v1, p0, mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v3, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v3, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .end local v0    # "i":I
    :cond_4a
    move-object v1, v2

    .line 221
    goto :goto_24

    .line 230
    .restart local v0    # "i":I
    :cond_4c
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/view/Choreographer$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Landroid/view/Choreographer$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, <init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 2
    .param p0, "x0"    # Landroid/view/Choreographer;

    .prologue
    .line 78
    iget-object v0, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 78
    sget-object v0, FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 6
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # Landroid/view/Choreographer$CallbackRecord;

    .prologue
    .line 78
    invoke-direct {p0, p1}, recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method public static getFrameDelay()J
    .registers 2

    .prologue
    .line 265
    sget-wide v0, sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .registers 1

    .prologue
    .line 246
    sget-object v0, sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .registers 3

    .prologue
    .line 233
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 235
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private isRunningOnLooperThreadLocked()Z
    .registers 3

    .prologue
    .line 768
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 8
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 773
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_11

    .line 774
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    .end local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    .line 779
    .restart local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_a
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 780
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 781
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 782
    return-object v0

    .line 776
    :cond_11
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p0, mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 777
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_a
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 14
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 382
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 383
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 384
    .local v4, "now":J
    add-long v0, v4, p4

    .line 385
    .local v0, "dueTime":J
    iget-object v3, p0, mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 387
    cmp-long v3, v0, v4

    if-gtz v3, :cond_19

    .line 388
    invoke-direct {p0, v4, v5}, scheduleFrameLocked(J)V

    .line 395
    :goto_17
    monitor-exit v6

    .line 396
    return-void

    .line 390
    :cond_19
    iget-object v3, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 391
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 392
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 393
    iget-object v3, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_17

    .line 395
    .end local v0    # "dueTime":J
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "now":J
    :catchall_2c
    move-exception v3

    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .prologue
    const/4 v0, 0x0

    .line 786
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 787
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 788
    iget-object v0, p0, mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 789
    iput-object p1, p0, mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 790
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 425
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_3
    iget-object v0, p0, mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    .line 428
    iget-object v0, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 430
    :cond_14
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .registers 12
    .param p1, "now"    # J

    .prologue
    const/4 v8, 0x1

    .line 533
    iget-boolean v1, p0, mFrameScheduled:Z

    if-nez v1, :cond_14

    .line 534
    iput-boolean v8, p0, mFrameScheduled:Z

    .line 535
    sget-boolean v1, USE_VSYNC:Z

    if-eqz v1, :cond_24

    .line 543
    invoke-direct {p0}, isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 544
    invoke-direct {p0}, scheduleVsyncLocked()V

    .line 561
    :cond_14
    :goto_14
    return-void

    .line 546
    :cond_15
    iget-object v1, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v8}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 548
    iget-object v1, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_14

    .line 551
    .end local v0    # "msg":Landroid/os/Message;
    :cond_24
    iget-wide v4, p0, mLastFrameTimeNanos:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sget-wide v6, sFrameDelay:J

    add-long/2addr v4, v6

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 556
    .local v2, "nextFrameTime":J
    iget-object v1, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 558
    iget-object v1, p0, mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_14
.end method

.method private scheduleVsyncLocked()V
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 765
    return-void
.end method

.method public static setFrameDelay(J)V
    .registers 2
    .param p0, "frameDelay"    # J

    .prologue
    .line 284
    sput-wide p0, sFrameDelay:J

    .line 285
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .registers 6
    .param p0, "delayMillis"    # J

    .prologue
    .line 310
    sget-wide v0, sFrameDelay:J

    .line 311
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 v2, 0x0

    :goto_8
    return-wide v2

    :cond_9
    sub-long v2, p0, v0

    goto :goto_8
.end method


# virtual methods
.method doCallbacks(IJ)V
    .registers 24
    .param p1, "callbackType"    # I
    .param p2, "frameTimeNanos"    # J

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 652
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 653
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v11, v0, mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v11, v11, p1

    const-wide/32 v16, 0xf4240

    div-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v5

    .line 655
    .local v5, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v5, :cond_1e

    .line 656
    monitor-exit v14

    .line 708
    :goto_1d
    return-void

    .line 658
    :cond_1e
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, mCallbacksRunning:Z

    .line 668
    const/4 v11, 0x3

    move/from16 v0, p1

    if-ne v0, v11, :cond_5a

    .line 669
    sub-long v6, v12, p2

    .line 670
    .local v6, "jitterNanos":J
    const-wide/16 v16, 0x8

    const-string v11, "jitterNanos"

    long-to-int v15, v6

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v11, v15}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 671
    const-wide/16 v16, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    cmp-long v11, v6, v16

    if-ltz v11, :cond_5a

    .line 672
    move-object/from16 v0, p0

    iget-wide v0, v0, mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    rem-long v16, v6, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    add-long v8, v16, v18

    .line 682
    .local v8, "lastFrameOffset":J
    sub-long p2, v12, v8

    .line 683
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastFrameTimeNanos:J

    .line 686
    .end local v6    # "jitterNanos":J
    .end local v8    # "lastFrameOffset":J
    :cond_5a
    monitor-exit v14
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_6f

    .line 688
    const-wide/16 v14, 0x8

    :try_start_5d
    sget-object v11, CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v11, v11, p1

    invoke-static {v14, v15, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 689
    move-object v4, v5

    .local v4, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_65
    if-eqz v4, :cond_72

    .line 695
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 689
    iget-object v4, v4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_90

    goto :goto_65

    .line 686
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .end local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .end local v12    # "now":J
    :catchall_6f
    move-exception v11

    :try_start_70
    monitor-exit v14
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v11

    .line 698
    .restart local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .restart local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .restart local v12    # "now":J
    :cond_72
    move-object/from16 v0, p0

    iget-object v14, v0, mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 699
    const/4 v11, 0x0

    :try_start_78
    move-object/from16 v0, p0

    iput-boolean v11, v0, mCallbacksRunning:Z

    .line 701
    :cond_7c
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 702
    .local v10, "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 703
    move-object v5, v10

    .line 704
    if-nez v5, :cond_7c

    .line 705
    monitor-exit v14
    :try_end_87
    .catchall {:try_start_78 .. :try_end_87} :catchall_8d

    .line 706
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1d

    .line 705
    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_8d
    move-exception v11

    :try_start_8e
    monitor-exit v14
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v11

    .line 698
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    :catchall_90
    move-exception v11

    move-object/from16 v0, p0

    iget-object v14, v0, mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 699
    const/4 v15, 0x0

    :try_start_97
    move-object/from16 v0, p0

    iput-boolean v15, v0, mCallbacksRunning:Z

    .line 701
    :cond_9b
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 702
    .restart local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 703
    move-object v5, v10

    .line 704
    if-nez v5, :cond_9b

    .line 705
    monitor-exit v14
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_ac

    .line 706
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v11

    .line 705
    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_ac
    move-exception v11

    :try_start_ad
    monitor-exit v14
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v11
.end method

.method doFrame(JI)V
    .registers 25
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I

    .prologue
    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 566
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, mFrameScheduled:Z

    if-nez v11, :cond_f

    .line 567
    monitor-exit v16

    .line 644
    :goto_e
    return-void

    .line 576
    :cond_f
    move-wide/from16 v4, p1

    .line 577
    .local v4, "intendedFrameTimeNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 578
    .local v14, "startNanos":J
    sub-long v6, v14, p1

    .line 579
    .local v6, "jitterNanos":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    cmp-long v11, v6, v18

    if-ltz v11, :cond_ba

    .line 580
    move-object/from16 v0, p0

    iget-wide v0, v0, mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    div-long v12, v6, v18

    .line 581
    .local v12, "skippedFrames":J
    sget v11, SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v0, v11

    move-wide/from16 v18, v0

    cmp-long v11, v12, v18

    if-ltz v11, :cond_5a

    .line 582
    const-string v11, "Choreographer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipped "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " frames!  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "The application may be doing too much work on its main thread."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_5a
    sget v11, SKIPPED_FRAME_REPORTING_BASE:I

    if-ltz v11, :cond_8e

    sget v11, SKIPPED_FRAME_REPORTING_BASE:I

    int-to-long v0, v11

    move-wide/from16 v18, v0

    cmp-long v11, v12, v18

    if-ltz v11, :cond_8e

    .line 587
    const v11, 0x11df0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    long-to-int v0, v12

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 590
    :cond_8e
    sget v11, REPORTING_BASE:I

    int-to-long v0, v11

    move-wide/from16 v18, v0

    cmp-long v11, v12, v18

    if-ltz v11, :cond_b0

    .line 591
    move-object/from16 v0, p0

    iget-object v11, v0, mHandler:Landroid/view/Choreographer$FrameHandler;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 592
    .local v10, "msg":Landroid/os/Message;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    move-object/from16 v0, p0

    iget-object v11, v0, mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v11, v10}, Landroid/view/Choreographer$FrameHandler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    .end local v10    # "msg":Landroid/os/Message;
    :cond_b0
    move-object/from16 v0, p0

    iget-wide v0, v0, mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    rem-long v8, v6, v18

    .line 604
    .local v8, "lastFrameOffset":J
    sub-long p1, v14, v8

    .line 607
    .end local v8    # "lastFrameOffset":J
    .end local v12    # "skippedFrames":J
    :cond_ba
    move-object/from16 v0, p0

    iget-wide v0, v0, mLastFrameTimeNanos:J

    move-wide/from16 v18, v0

    cmp-long v11, p1, v18

    if-gez v11, :cond_cd

    .line 612
    invoke-direct/range {p0 .. p0}, scheduleVsyncLocked()V

    .line 613
    monitor-exit v16

    goto/16 :goto_e

    .line 619
    .end local v4    # "intendedFrameTimeNanos":J
    .end local v6    # "jitterNanos":J
    .end local v14    # "startNanos":J
    :catchall_ca
    move-exception v11

    monitor-exit v16
    :try_end_cc
    .catchall {:try_start_7 .. :try_end_cc} :catchall_ca

    throw v11

    .line 616
    .restart local v4    # "intendedFrameTimeNanos":J
    .restart local v6    # "jitterNanos":J
    .restart local v14    # "startNanos":J
    :cond_cd
    :try_start_cd
    move-object/from16 v0, p0

    iget-object v11, v0, mFrameInfo:Landroid/view/FrameInfo;

    move-wide/from16 v0, p1

    invoke-virtual {v11, v4, v5, v0, v1}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 617
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, mFrameScheduled:Z

    .line 618
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastFrameTimeNanos:J

    .line 619
    monitor-exit v16
    :try_end_e2
    .catchall {:try_start_cd .. :try_end_e2} :catchall_ca

    .line 622
    const-wide/16 v16, 0x8

    :try_start_e4
    const-string v11, "Choreographer#doFrame"

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v11, v0, mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v11}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    .line 625
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v11, v1, v2}, doCallbacks(IJ)V

    .line 627
    move-object/from16 v0, p0

    iget-object v11, v0, mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v11}, Landroid/view/FrameInfo;->markAnimationsStart()V

    .line 628
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v11, v1, v2}, doCallbacks(IJ)V

    .line 630
    move-object/from16 v0, p0

    iget-object v11, v0, mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v11}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    .line 631
    const/4 v11, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v11, v1, v2}, doCallbacks(IJ)V

    .line 633
    const/4 v11, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v11, v1, v2}, doCallbacks(IJ)V
    :try_end_120
    .catchall {:try_start_e4 .. :try_end_120} :catchall_127

    .line 635
    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_e

    :catchall_127
    move-exception v11

    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v11
.end method

.method doReport(J)V
    .registers 6
    .param p1, "skippedFrames"    # J

    .prologue
    .line 744
    const-string/jumbo v1, "sys.config.bigdata_enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "sys.isdumpstaterunning"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 761
    :cond_2e
    :goto_2e
    return-void

    .line 750
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 751
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 754
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_2e

    .line 755
    const-string v1, "from"

    const v2, 0x11df0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    const-string/jumbo v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 757
    const-string/jumbo v1, "skippedFrames"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 759
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2e
.end method

.method doScheduleCallback(I)V
    .registers 6
    .param p1, "callbackType"    # I

    .prologue
    .line 719
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 720
    :try_start_3
    iget-boolean v2, p0, mFrameScheduled:Z

    if-nez v2, :cond_18

    .line 721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 722
    .local v0, "now":J
    iget-object v2, p0, mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 723
    invoke-direct {p0, v0, v1}, scheduleFrameLocked(J)V

    .line 726
    .end local v0    # "now":J
    :cond_18
    monitor-exit v3

    .line 727
    return-void

    .line 726
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method doScheduleVsync()V
    .registers 3

    .prologue
    .line 711
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_3
    iget-boolean v0, p0, mFrameScheduled:Z

    if-eqz v0, :cond_a

    .line 713
    invoke-direct {p0}, scheduleVsyncLocked()V

    .line 715
    :cond_a
    monitor-exit v1

    .line 716
    return-void

    .line 715
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-boolean v1, p0, mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 327
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-wide v2, p0, mLastFrameTimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public getFrameIntervalNanos()J
    .registers 3

    .prologue
    .line 319
    iget-wide v0, p0, mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .registers 5

    .prologue
    .line 511
    invoke-virtual {p0}, getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .registers 4

    .prologue
    .line 523
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 524
    :try_start_3
    iget-boolean v0, p0, mCallbacksRunning:Z

    if-nez v0, :cond_12

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 528
    :cond_12
    :try_start_12
    sget-boolean v0, USE_FRAME_TIME:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, mLastFrameTimeNanos:J

    :goto_18
    monitor-exit v2

    return-wide v0

    :cond_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    move-result-wide v0

    goto :goto_18
.end method

.method public getRootContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 733
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 734
    return-void
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 345
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 346
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 364
    if-nez p2, :cond_a

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_a
    if-ltz p1, :cond_f

    const/4 v0, 0x3

    if-le p1, v0, :cond_17

    .line 368
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_17
    invoke-direct/range {p0 .. p5}, postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 372
    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 445
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 446
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .prologue
    .line 461
    if-nez p1, :cond_a

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_a
    const/4 v1, 0x1

    sget-object v3, FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 467
    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 412
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_d

    .line 413
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_d
    invoke-direct {p0, p1, p2, p3}, removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 478
    if-nez p1, :cond_a

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_a
    const/4 v0, 0x1

    sget-object v1, FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 483
    return-void
.end method

.method public removeRootContext()V
    .registers 2

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 741
    return-void
.end method
