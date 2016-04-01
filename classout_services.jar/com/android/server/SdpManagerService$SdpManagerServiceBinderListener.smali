.class final Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SdpManagerServiceBinderListener"
.end annotation


# instance fields
.field caller:I

.field mAlias:Ljava/lang/String;

.field final mListener:Lcom/sec/sdp/ISdpListener;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)V
    .registers 5
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    .line 2481
    iput-object p1, p0, this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2479
    const/4 v0, 0x0

    iput v0, p0, caller:I

    .line 2482
    iput-object p3, p0, mListener:Lcom/sec/sdp/ISdpListener;

    .line 2483
    iput-object p2, p0, mAlias:Ljava/lang/String;

    .line 2484
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 2494
    const-string v1, "SdpManagerService"

    const-string v2, "An ISdpListener has died!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v1, p0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 2496
    :try_start_e
    iget-object v1, p0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, mAlias:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2499
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2500
    iget-object v1, p0, mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v1}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2502
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3a

    .line 2503
    iget-object v1, p0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, mAlias:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    :cond_3a
    monitor-exit v2

    .line 2505
    return-void

    .line 2504
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method getCaller()I
    .registers 2

    .prologue
    .line 2491
    iget v0, p0, caller:I

    return v0
.end method

.method setCaller(I)V
    .registers 2
    .param p1, "pid"    # I

    .prologue
    .line 2487
    iput p1, p0, caller:I

    .line 2488
    return-void
.end method
