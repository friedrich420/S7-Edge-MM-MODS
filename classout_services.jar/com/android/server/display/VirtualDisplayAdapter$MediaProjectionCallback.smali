.class final Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field private mAppToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 467
    iput-object p1, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 468
    iput-object p2, p0, mAppToken:Landroid/os/IBinder;

    .line 469
    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 474
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, mAppToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->access$200(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method
