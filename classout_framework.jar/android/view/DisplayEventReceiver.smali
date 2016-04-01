.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    .line 60
    if-nez p1, :cond_13

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_13
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, mMessageQueue:Landroid/os/MessageQueue;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, v1}, nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, mReceiverPtr:J

    .line 68
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private dispatchHotplug(JIZ)V
    .registers 6
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2, p3, p4}, onHotplug(JIZ)V

    .line 151
    return-void
.end method

.method private dispatchVsync(JII)V
    .registers 6
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3, p4}, onVsync(JII)V

    .line 145
    return-void
.end method

.method private dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 88
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_12

    .line 89
    if-eqz p1, :cond_d

    .line 90
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 92
    :cond_d
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 95
    :cond_12
    iget-wide v0, p0, mReceiverPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 96
    iget-wide v0, p0, mReceiverPtr:J

    invoke-static {v0, v1}, nativeDispose(J)V

    .line 97
    iput-wide v2, p0, mReceiverPtr:J

    .line 99
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, mMessageQueue:Landroid/os/MessageQueue;

    .line 100
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeScheduleVsync(J)V
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, dispose(Z)V

    .line 85
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    return-void

    .line 76
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onHotplug(JIZ)V
    .registers 5
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .prologue
    .line 126
    return-void
.end method

.method public onVsync(JII)V
    .registers 5
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 114
    return-void
.end method

.method public scheduleVsync()V
    .registers 5

    .prologue
    .line 133
    iget-wide v0, p0, mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 134
    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_f
    return-void

    .line 137
    :cond_10
    iget-wide v0, p0, mReceiverPtr:J

    invoke-static {v0, v1}, nativeScheduleVsync(J)V

    goto :goto_f
.end method
