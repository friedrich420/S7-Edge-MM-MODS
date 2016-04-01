.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyEventWakeLockReceiver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastTimeoutId:I

.field private mReceiveResultRunnable:Ljava/lang/Runnable;

.field private mRefCount:I

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1223
    iput-object p1, p0, this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 1224
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1220
    iput v0, p0, mRefCount:I

    .line 1221
    iput v0, p0, mLastTimeoutId:I

    .line 1256
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)V

    iput-object v0, p0, mReceiveResultRunnable:Ljava/lang/Runnable;

    .line 1225
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 1226
    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .prologue
    .line 1217
    iget v0, p0, mLastTimeoutId:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .prologue
    .line 1217
    iget v0, p0, mRefCount:I

    return v0
.end method

.method static synthetic access$3410(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .prologue
    .line 1217
    iget v0, p0, mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, mRefCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .prologue
    .line 1217
    invoke-direct {p0}, releaseWakeLockLocked()V

    return-void
.end method

.method private releaseWakeLockLocked()V
    .registers 2

    .prologue
    .line 1294
    iget-object v0, p0, this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1295
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1296
    return-void
.end method


# virtual methods
.method public aquireWakeLockLocked()V
    .registers 5

    .prologue
    .line 1241
    iget v0, p0, mRefCount:I

    if-nez v0, :cond_f

    .line 1242
    iget-object v0, p0, this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1244
    :cond_f
    iget v0, p0, mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mRefCount:I

    .line 1245
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1246
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1248
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1273
    iget v0, p0, mLastTimeoutId:I

    if-ge p1, v0, :cond_5

    .line 1291
    :goto_4
    return-void

    .line 1278
    :cond_5
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mReceiveResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1301
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, onReceiveResult(ILandroid/os/Bundle;)V

    .line 1302
    return-void
.end method

.method public onTimeout()V
    .registers 3

    .prologue
    .line 1229
    iget-object v0, p0, this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1230
    :try_start_9
    iget v0, p0, mRefCount:I

    if-nez v0, :cond_f

    .line 1232
    monitor-exit v1

    .line 1238
    :goto_e
    return-void

    .line 1234
    :cond_f
    iget v0, p0, mLastTimeoutId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLastTimeoutId:I

    .line 1235
    const/4 v0, 0x0

    iput v0, p0, mRefCount:I

    .line 1236
    invoke-direct {p0}, releaseWakeLockLocked()V

    .line 1237
    monitor-exit v1

    goto :goto_e

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 1252
    invoke-virtual {p0}, onTimeout()V

    .line 1253
    return-void
.end method
