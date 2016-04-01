.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 929
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .line 930
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 931
    return-void
.end method

.method private callback(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 964
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 965
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 966
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 967
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-eqz v1, :cond_c

    .line 971
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 972
    # invokes: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$900(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_c

    .line 977
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_2c
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 978
    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 979
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 980
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    if-eqz v1, :cond_38

    .line 984
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 985
    # invokes: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->callback(ILandroid/os/Bundle;)V
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$1000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;ILandroid/os/Bundle;)V

    goto :goto_38

    .line 988
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_58
    return-void
.end method

.method private notifyOperationCheckResult(ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1003
    sget-object v6, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_b

    .line 1047
    :goto_a
    return v4

    .line 1007
    :cond_b
    if-nez p2, :cond_17

    .line 1008
    sget-object v5, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_a

    .line 1013
    :cond_17
    const-string v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1014
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2a

    .line 1015
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .line 1017
    goto :goto_a

    .line 1020
    :cond_2a
    const-string v4, "Binder"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1021
    .local v0, "binder":Landroid/os/IBinder;
    const-string v4, "Service"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1023
    .local v3, "service":I
    if-nez v0, :cond_43

    .line 1024
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .line 1026
    goto :goto_a

    .line 1029
    :cond_43
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListener(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    move-result-object v2

    .line 1032
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-nez v2, :cond_6a

    .line 1033
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1035
    const-string v4, "CheckResult"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_68

    .line 1036
    const-string v4, "This cmd proccess was stopped and that\'s because the fault detection result is not success"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 1037
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$702(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z

    :cond_68
    :goto_68
    move v4, v5

    .line 1047
    goto :goto_a

    .line 1039
    :cond_6a
    const-string v4, "Service"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_7b

    .line 1040
    const-string v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1041
    # invokes: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$900(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_68

    .line 1043
    :cond_7b
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_68
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 940
    monitor-enter p0

    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I

    .line 941
    .local v2, "type":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 943
    .local v0, "context":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0}, notifyOperationCheckResult(ILandroid/os/Bundle;)Z

    move-result v1

    .line 945
    .local v1, "result":Z
    if-nez v1, :cond_1b

    .line 946
    invoke-direct {p0, v2, v0}, callback(ILandroid/os/Bundle;)V

    .line 951
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    .line 952
    monitor-exit p0

    return-void

    .line 948
    :cond_1b
    :try_start_1b
    iget-object v3, p0, this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z
    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$802(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_22

    goto :goto_16

    .line 940
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v1    # "result":Z
    .end local v2    # "type":I
    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method
