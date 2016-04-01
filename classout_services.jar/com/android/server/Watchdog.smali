.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field static final FD_RLIMIT:I = 0x400

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static WSyncCount:I

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field mDumped:Z

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field mUserBuild:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 351
    sput v3, WSyncCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const-wide/32 v4, 0xea60

    .line 226
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mHandlerCheckers:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, mAllowRestart:Z

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 89
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, mUserBuild:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, mDumped:Z

    .line 234
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 236
    iget-object v0, p0, mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v6, p0, mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v3, "main thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v6, p0, mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v6, p0, mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v6, p0, mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "display thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 253
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 341
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 343
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 347
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .registers 6
    .param p1, "c"    # C

    .prologue
    .line 550
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 552
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 556
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_d
    return-void

    .line 553
    :catch_e
    move-exception v0

    .line 554
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 559
    const-string/jumbo v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 565
    :cond_10
    :goto_10
    return-object v1

    .line 564
    :cond_11
    invoke-direct {p0, v0}, native_dumpKernelStacks(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 322
    iget-object v3, p0, mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 323
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1d
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 331
    iget-object v3, p0, mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 332
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 333
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 336
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .prologue
    .line 218
    sget-object v0, sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 219
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, <init>()V

    sput-object v0, sWatchdog:Lcom/android/server/Watchdog;

    .line 222
    :cond_b
    sget-object v0, sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_1
    invoke-virtual {p0}, isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 289
    :cond_12
    :try_start_12
    iget-object v0, p0, mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 290
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 291
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 294
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, addThread(Landroid/os/Handler;J)V

    .line 295
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 298
    monitor-enter p0

    .line 299
    :try_start_1
    invoke-virtual {p0}, isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 302
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_f

    .line 305
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mResolver:Landroid/content/ContentResolver;

    .line 257
    iput-object p2, p0, mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 259
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 267
    iput p2, p0, mPhonePid:I

    .line 269
    :cond_b
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 314
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_23
    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    .line 317
    :goto_26
    return-void

    .line 315
    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method public run()V
    .registers 39

    .prologue
    .line 355
    const/16 v30, 0x0

    .line 360
    .local v30, "waitedHalf":Z
    :goto_2
    const/4 v11, 0x0

    .line 361
    .local v11, "debuggerWasConnected":I
    monitor-enter p0

    .line 362
    const-wide/16 v28, 0x7530

    .line 365
    .local v28, "timeout":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_2e

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/Watchdog$HandlerChecker;

    .line 367
    .local v15, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v15}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 365
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 371
    .end local v15    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_2e
    if-lez v11, :cond_32

    .line 372
    add-int/lit8 v11, v11, -0x1

    .line 375
    :cond_32
    const-string v31, "Watchdog"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "!@Sync "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, WSyncCount:I

    add-int/lit8 v34, v33, 0x1

    sput v34, WSyncCount:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v33, v0

    new-instance v34, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUserBuild:Z

    move/from16 v31, v0

    if-nez v31, :cond_b3

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDumped:Z

    move/from16 v31, v0

    if-nez v31, :cond_b3

    .line 379
    new-instance v31, Ljava/io/File;

    const-string v32, "/proc/self/fdinfo"

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3ce

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_b3

    .line 380
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDumped:Z

    .line 381
    const-string v31, "Watchdog"

    const-string v32, "!@ The number of fd in system_server is over (RLIMIT-50), so we ran dumpstate for debugging."

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v31, "-t -z -o /data/log/dumpstate_sys_emfile"

    invoke-static/range {v31 .. v31}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 390
    :cond_b3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 391
    .local v24, "start":J
    :goto_b7
    const-wide/16 v32, 0x0

    cmp-long v31, v28, v32

    if-lez v31, :cond_e9

    .line 392
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_c0
    .catchall {:try_start_8 .. :try_end_c0} :catchall_e6

    move-result v31

    if-eqz v31, :cond_c4

    .line 393
    const/4 v11, 0x2

    .line 396
    :cond_c4
    :try_start_c4
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_c4 .. :try_end_cb} :catch_dd
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_e6

    .line 400
    :goto_cb
    :try_start_cb
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v31

    if-eqz v31, :cond_d2

    .line 401
    const/4 v11, 0x2

    .line 403
    :cond_d2
    const-wide/16 v32, 0x7530

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v24

    sub-long v28, v32, v34

    goto :goto_b7

    .line 397
    :catch_dd
    move-exception v13

    .line 398
    .local v13, "e":Ljava/lang/InterruptedException;
    const-string v31, "Watchdog"

    move-object/from16 v0, v31

    invoke-static {v0, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cb

    .line 431
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "start":J
    :catchall_e6
    move-exception v31

    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_cb .. :try_end_e8} :catchall_e6

    throw v31

    .line 406
    .restart local v24    # "start":J
    :cond_e9
    :try_start_e9
    invoke-direct/range {p0 .. p0}, evaluateCheckerCompletionLocked()I

    move-result v27

    .line 407
    .local v27, "waitState":I
    if-nez v27, :cond_f4

    .line 409
    const/16 v30, 0x0

    .line 410
    monitor-exit p0

    goto/16 :goto_2

    .line 411
    :cond_f4
    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_ff

    .line 413
    monitor-exit p0

    goto/16 :goto_2

    .line 414
    :cond_ff
    const/16 v31, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_137

    .line 415
    if-nez v30, :cond_134

    .line 418
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v19, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    sget-object v34, NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 422
    const/16 v30, 0x1

    .line 424
    .end local v19    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_134
    monitor-exit p0

    goto/16 :goto_2

    .line 428
    :cond_137
    invoke-direct/range {p0 .. p0}, getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v8

    .line 429
    .local v8, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v23

    .line 430
    .local v23, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v6, v0, mAllowRestart:Z

    .line 431
    .local v6, "allowRestart":Z
    monitor-exit p0
    :try_end_146
    .catchall {:try_start_e9 .. :try_end_146} :catchall_e6

    .line 436
    const/16 v31, 0xaf2

    move/from16 v0, v31

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 438
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .restart local v19    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, mPhonePid:I

    move/from16 v31, v0

    if-lez v31, :cond_17c

    move-object/from16 v0, p0

    iget v0, v0, mPhonePid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_17c
    if-nez v30, :cond_222

    const/16 v31, 0x1

    :goto_180
    const/16 v32, 0x0

    const/16 v33, 0x0

    sget-object v34, NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 448
    .local v21, "stack":Ljava/io/File;
    const-wide/16 v32, 0x7d0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    .line 452
    invoke-direct/range {p0 .. p0}, dumpKernelStackTraces()Ljava/io/File;

    .line 456
    const/16 v31, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, doSysRq(C)V

    .line 457
    const/16 v31, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, doSysRq(C)V

    .line 460
    const-string v31, "PF"

    const-string v32, "WD"

    invoke-static/range {v31 .. v32}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v31, "-k -t -z -d -o /data/log/dumpstate_sys_watchdog"

    invoke-static/range {v31 .. v31}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 468
    new-instance v12, Lcom/android/server/Watchdog$1;

    const-string/jumbo v31, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 475
    .local v12, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 477
    const-wide/16 v32, 0x7d0

    :try_start_1cf
    move-wide/from16 v0, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1d4
    .catch Ljava/lang/InterruptedException; {:try_start_1cf .. :try_end_1d4} :catch_314

    .line 483
    :goto_1d4
    const-string/jumbo v31, "persist.sys.crashOnWatchdog"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 485
    .local v10, "crashOnWatchdog":Z
    if-eqz v10, :cond_1fb

    .line 487
    const-wide/16 v32, 0xbb8

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    .line 491
    :try_start_1e4
    new-instance v26, Ljava/io/FileWriter;

    const-string v31, "/proc/sysrq-trigger"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 492
    .local v26, "sysrq_trigger":Ljava/io/FileWriter;
    const-string v31, "c"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileWriter;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1fb} :catch_226

    .line 501
    .end local v26    # "sysrq_trigger":Ljava/io/FileWriter;
    :cond_1fb
    :goto_1fb
    monitor-enter p0

    .line 502
    :try_start_1fc
    move-object/from16 v0, p0

    iget-object v9, v0, mController:Landroid/app/IActivityController;

    .line 503
    .local v9, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_201
    .catchall {:try_start_1fc .. :try_end_201} :catchall_238

    .line 504
    if-eqz v9, :cond_23c

    .line 505
    const-string v31, "Watchdog"

    const-string v32, "Reporting stuck state to activity controller"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_20a
    const-string v31, "Service dumps disabled due to hung system process."

    invoke-static/range {v31 .. v31}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v20

    .line 510
    .local v20, "res":I
    if-ltz v20, :cond_23c

    .line 511
    const-string v31, "Watchdog"

    const-string v32, "Activity controller requested to coninue to wait"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21e
    .catch Landroid/os/RemoteException; {:try_start_20a .. :try_end_21e} :catch_23b

    .line 512
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 443
    .end local v9    # "controller":Landroid/app/IActivityController;
    .end local v10    # "crashOnWatchdog":Z
    .end local v12    # "dropboxThread":Ljava/lang/Thread;
    .end local v20    # "res":I
    .end local v21    # "stack":Ljava/io/File;
    :cond_222
    const/16 v31, 0x0

    goto/16 :goto_180

    .line 494
    .restart local v10    # "crashOnWatchdog":Z
    .restart local v12    # "dropboxThread":Ljava/lang/Thread;
    .restart local v21    # "stack":Ljava/io/File;
    :catch_226
    move-exception v13

    .line 495
    .local v13, "e":Ljava/io/IOException;
    const-string v31, "Watchdog"

    const-string v32, "Failed to write \'c\' to /proc/sysrq-trigger"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v31, "Watchdog"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fb

    .line 503
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_238
    move-exception v31

    :try_start_239
    monitor-exit p0
    :try_end_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_238

    throw v31

    .line 515
    .restart local v9    # "controller":Landroid/app/IActivityController;
    :catch_23b
    move-exception v31

    .line 520
    :cond_23c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v31

    if-eqz v31, :cond_243

    .line 521
    const/4 v11, 0x2

    .line 523
    :cond_243
    const/16 v31, 0x2

    move/from16 v0, v31

    if-lt v11, v0, :cond_254

    .line 524
    const-string v31, "Watchdog"

    const-string v32, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_250
    const/16 v30, 0x0

    .line 545
    goto/16 :goto_2

    .line 525
    :cond_254
    if-lez v11, :cond_25e

    .line 526
    const-string v31, "Watchdog"

    const-string v32, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_250

    .line 527
    :cond_25e
    if-nez v6, :cond_268

    .line 528
    const-string v31, "Watchdog"

    const-string v32, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_250

    .line 530
    :cond_268
    const-string v31, "Watchdog"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/16 v16, 0x0

    :goto_286
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_2ff

    .line 532
    const-string v32, "Watchdog"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " stack trace:"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    .line 535
    .local v22, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object/from16 v7, v22

    .local v7, "arr$":[Ljava/lang/StackTraceElement;
    array-length v0, v7

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2d7
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2fc

    aget-object v14, v7, v17

    .line 536
    .local v14, "element":Ljava/lang/StackTraceElement;
    const-string v31, "Watchdog"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "    at "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    add-int/lit8 v17, v17, 0x1

    goto :goto_2d7

    .line 531
    .end local v14    # "element":Ljava/lang/StackTraceElement;
    :cond_2fc
    add-int/lit8 v16, v16, 0x1

    goto :goto_286

    .line 539
    .end local v7    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_2ff
    const-string v31, "Watchdog"

    const-string v32, "*** GOODBYE!"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->killProcess(I)V

    .line 541
    const/16 v31, 0xa

    invoke-static/range {v31 .. v31}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_250

    .line 478
    .end local v9    # "controller":Landroid/app/IActivityController;
    .end local v10    # "crashOnWatchdog":Z
    :catch_314
    move-exception v31

    goto/16 :goto_1d4
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_1
    iput-object p1, p0, mController:Landroid/app/IActivityController;

    .line 275
    monitor-exit p0

    .line 276
    return-void

    .line 275
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"    # Z

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_1
    iput-boolean p1, p0, mAllowRestart:Z

    .line 281
    monitor-exit p0

    .line 282
    return-void

    .line 281
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
