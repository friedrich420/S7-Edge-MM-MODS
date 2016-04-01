.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver$1;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)V
    .registers 2

    .prologue
    .line 1256
    iput-object p1, p0, this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1259
    iget-object v0, p0, this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1260
    :try_start_b
    iget-object v0, p0, this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    if-lez v0, :cond_25

    .line 1261
    iget-object v0, p0, this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # operator-- for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$3410(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    .line 1262
    iget-object v0, p0, this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    if-nez v0, :cond_25

    .line 1263
    iget-object v0, p0, this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->releaseWakeLockLocked()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$3500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)V

    .line 1266
    :cond_25
    monitor-exit v1

    .line 1267
    return-void

    .line 1266
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v0
.end method
