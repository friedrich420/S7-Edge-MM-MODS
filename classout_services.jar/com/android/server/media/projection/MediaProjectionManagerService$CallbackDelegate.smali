.class Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private mClientCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/projection/IMediaProjectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mWatcherCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/projection/IMediaProjectionWatcherCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 500
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 501
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mClientCallbacks:Ljava/util/Map;

    .line 502
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mWatcherCallbacks:Ljava/util/Map;

    .line 503
    return-void
.end method


# virtual methods
.method public add(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 506
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_3
    iget-object v0, p0, mClientCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 512
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_3
    iget-object v0, p0, mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    monitor-exit v1

    .line 515
    return-void

    .line 514
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 8
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 530
    if-nez p1, :cond_a

    .line 531
    const-string v3, "MediaProjectionManagerService"

    const-string v4, "Tried to dispatch start notification for a null media projection. Ignoring!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_9
    return-void

    .line 535
    :cond_a
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 536
    :try_start_d
    iget-object v3, p0, mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 537
    .local v0, "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    .line 538
    .local v2, "info":Landroid/media/projection/MediaProjectionInfo;
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;

    invoke-direct {v5, v2, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;-><init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 540
    .end local v0    # "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/media/projection/MediaProjectionInfo;
    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    goto :goto_9
.end method

.method public dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 8
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 544
    if-nez p1, :cond_a

    .line 545
    const-string v3, "MediaProjectionManagerService"

    const-string v4, "Tried to dispatch stop notification for a null media projection. Ignoring!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_9
    return-void

    .line 549
    :cond_a
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 550
    :try_start_d
    iget-object v3, p0, mClientCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/IMediaProjectionCallback;

    .line 551
    .local v0, "callback":Landroid/media/projection/IMediaProjectionCallback;
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;

    invoke-direct {v5, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;-><init>(Landroid/media/projection/IMediaProjectionCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 558
    .end local v0    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_2e

    throw v3

    .line 554
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_31
    :try_start_31
    iget-object v3, p0, mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 555
    .local v0, "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    .line 556
    .local v2, "info":Landroid/media/projection/MediaProjectionInfo;
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    invoke-direct {v5, v2, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b

    .line 558
    .end local v0    # "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    .end local v2    # "info":Landroid/media/projection/MediaProjectionInfo;
    :cond_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_2e

    goto :goto_9
.end method

.method public remove(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 518
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_3
    iget-object v0, p0, mClientCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    monitor-exit v1

    .line 521
    return-void

    .line 520
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 524
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_3
    iget-object v0, p0, mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
