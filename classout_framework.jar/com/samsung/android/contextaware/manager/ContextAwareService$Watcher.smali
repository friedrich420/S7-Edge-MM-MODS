.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Watcher"
.end annotation


# instance fields
.field private final mServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 810
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p2, p0, mToken:Landroid/os/IBinder;

    .line 812
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 813
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 796
    invoke-direct {p0, p1, p2}, callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .prologue
    .line 796
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .prologue
    .line 796
    iget-object v0, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 854
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, mToken:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    .line 856
    .local v0, "callback":Lcom/samsung/android/contextaware/manager/IContextAwareCallback;
    if-eqz v0, :cond_c

    .line 857
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback;->caCallback(ILandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_c} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_1c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    .line 864
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    .line 866
    .end local v0    # "callback":Lcom/samsung/android/contextaware/manager/IContextAwareCallback;
    :goto_f
    monitor-exit p0

    return-void

    .line 859
    :catch_11
    move-exception v1

    .line 860
    .local v1, "de":Landroid/os/DeadObjectException;
    :try_start_12
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    .line 864
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_f

    .line 854
    .end local v1    # "de":Landroid/os/DeadObjectException;
    :catchall_19
    move-exception v3

    monitor-exit p0

    throw v3

    .line 861
    :catch_1c
    move-exception v2

    .line 862
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    .line 864
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_f

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_19
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 823
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 826
    :try_start_9
    const-string v4, "[binderDied 01] Mutex is locked for binderDied"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 828
    iget-object v4, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 829
    .local v3, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 830
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v1, v0

    .local v1, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 831
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 833
    .local v2, "service":I
    iget-object v4, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_33

    goto :goto_19

    .line 840
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "service":I
    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_33
    move-exception v4

    iget-object v5, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 836
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V

    .line 837
    iget-object v4, p0, mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 838
    const-string v4, "[binderDied 02] Mutex is unlocked for binderDied"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_33

    .line 840
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 842
    return-void
.end method

.method public decreaseServiceCount(I)V
    .registers 6
    .param p1, "service"    # I

    .prologue
    .line 902
    iget-object v1, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 903
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 911
    :goto_19
    return-void

    .line 909
    :cond_1a
    iget-object v1, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 910
    .local v0, "count":I
    iget-object v1, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method public getServices()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .registers 6
    .param p1, "service"    # I

    .prologue
    .line 884
    iget-object v1, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 885
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 893
    :goto_19
    return-void

    .line 891
    :cond_1a
    iget-object v1, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 892
    .local v0, "count":I
    iget-object v1, p0, mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method
