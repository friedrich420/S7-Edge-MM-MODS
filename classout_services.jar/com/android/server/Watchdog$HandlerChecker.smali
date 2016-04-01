.class public final Lcom/android/server/Watchdog$HandlerChecker;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerChecker"
.end annotation


# instance fields
.field private mCompleted:Z

.field private mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mWaitMax:J

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V
    .registers 8
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "waitMaxMillis"    # J

    .prologue
    .line 105
    iput-object p1, p0, this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMonitors:Ljava/util/ArrayList;

    .line 106
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 107
    iput-object p3, p0, mName:Ljava/lang/String;

    .line 108
    iput-wide p4, p0, mWaitMax:J

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, mCompleted:Z

    .line 110
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 113
    iget-object v0, p0, mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public describeBlockedStateLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-nez v0, :cond_32

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked in handler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked in monitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public getCompletionStateLocked()I
    .registers 7

    .prologue
    .line 144
    iget-boolean v2, p0, mCompleted:Z

    if-eqz v2, :cond_6

    .line 145
    const/4 v2, 0x0

    .line 154
    :goto_5
    return v2

    .line 147
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, mStartTime:J

    sub-long v0, v2, v4

    .line 148
    .local v0, "latency":J
    iget-wide v2, p0, mWaitMax:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 149
    const/4 v2, 0x1

    goto :goto_5

    .line 150
    :cond_19
    iget-wide v2, p0, mWaitMax:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_21

    .line 151
    const/4 v2, 0x2

    goto :goto_5

    .line 154
    :cond_21
    const/4 v2, 0x3

    goto :goto_5
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public isOverdueLocked()Z
    .registers 7

    .prologue
    .line 140
    iget-boolean v0, p0, mCompleted:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, mStartTime:J

    iget-wide v4, p0, mWaitMax:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public run()V
    .registers 5

    .prologue
    .line 176
    iget-object v2, p0, mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 177
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_22

    .line 178
    iget-object v3, p0, this$0:Lcom/android/server/Watchdog;

    monitor-enter v3

    .line 179
    :try_start_c
    iget-object v2, p0, mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$Monitor;

    iput-object v2, p0, mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 180
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1f

    .line 181
    iget-object v2, p0, mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v2}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 180
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2

    .line 184
    :cond_22
    iget-object v3, p0, this$0:Lcom/android/server/Watchdog;

    monitor-enter v3

    .line 185
    const/4 v2, 0x1

    :try_start_26
    iput-boolean v2, p0, mCompleted:Z

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 187
    monitor-exit v3

    .line 188
    return-void

    .line 187
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public scheduleCheckLocked()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, mCompleted:Z

    .line 137
    :cond_1b
    :goto_1b
    return-void

    .line 128
    :cond_1c
    iget-boolean v0, p0, mCompleted:Z

    if-eqz v0, :cond_1b

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, mCompleted:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 136
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method
