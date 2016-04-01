.class Lcom/android/server/audio/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 7
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2543
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2544
    if-eqz p2, :cond_b

    .line 2546
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_e

    .line 2553
    :cond_b
    :goto_b
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 2554
    return-void

    .line 2547
    :catch_e
    move-exception v0

    .line 2549
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForceControlStreamClient() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const/4 p2, 0x0

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 2557
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2558
    :try_start_7
    const-string v0, "AudioService"

    const-string v2, "SCO client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    move-result-object v0

    if-eq v0, p0, :cond_20

    .line 2560
    const-string v0, "AudioService"

    const-string/jumbo v2, "unregistered control stream client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    :goto_1e
    monitor-exit v1

    .line 2566
    return-void

    .line 2562
    :cond_20
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$1302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2563
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/audio/AudioService;->mVolumeControlStream:I
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$1402(Lcom/android/server/audio/AudioService;I)I

    goto :goto_1e

    .line 2565
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 2569
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    .line 2570
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2571
    const/4 v0, 0x0

    iput-object v0, p0, mCb:Landroid/os/IBinder;

    .line 2573
    :cond_d
    return-void
.end method
