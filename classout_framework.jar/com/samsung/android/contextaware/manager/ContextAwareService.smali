.class public Lcom/samsung/android/contextaware/manager/ContextAwareService;
.super Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;
.source "ContextAwareService.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    }
.end annotation


# static fields
.field public static final BINDER_DIED_OPERATION:I = 0x3

.field public static final NORMAL_OPERATION:I = 0x1

.field private static final NOTIFY_WATING_TIME:I = 0x6

.field public static final RESTORE_OPERATION:I = 0x2


# instance fields
.field private volatile isVersionSetting:Z

.field private mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

.field private mCmdProcessResultNotifyCompletion:Z

.field private mContextCollectionResultNotifyCompletion:Z

.field private mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;-><init>()V

    .line 79
    iput-boolean v4, p0, mCmdProcessResultNotifyCompletion:Z

    .line 82
    iput-boolean v4, p0, mContextCollectionResultNotifyCompletion:Z

    .line 85
    iput v4, p0, mVersion:I

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, isVersionSetting:Z

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "context_aware"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 108
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_27

    .line 109
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 125
    :goto_26
    return-void

    .line 114
    :cond_27
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V

    iput-object v2, p0, mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 116
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextManager;

    iget v3, p0, mVersion:I

    invoke-direct {v2, p1, v1, v3}, Lcom/samsung/android/contextaware/manager/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v2, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 118
    new-instance v2, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    .line 119
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 121
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v2

    iget-object v3, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextManager;->getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 124
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    iget-object v3, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    goto :goto_26
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .prologue
    .line 51
    iget-object v0, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .prologue
    .line 51
    iget-object v0, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, mContextCollectionResultNotifyCompletion:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, mCmdProcessResultNotifyCompletion:Z

    return p1
.end method

.method private displayUsedCountForService(I)V
    .registers 5
    .param p1, "service"    # I

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCollectionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 10
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I

    .prologue
    const/4 v5, 0x1

    .line 394
    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList;->getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 396
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p2, p3}, isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 442
    :cond_19
    :goto_19
    return-void

    .line 401
    :cond_1a
    const-string v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p2, p3}, isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 407
    :cond_28
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$100(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 410
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 411
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 412
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_59
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    .line 415
    iget-object v0, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0, v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V

    .line 428
    :cond_69
    :goto_69
    invoke-direct {p0}, waitForNotifyOperationCheckResult()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 429
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    .line 433
    :cond_7f
    const-string v0, "complete notify the operation result."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->isRestoreEnable()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 436
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    goto :goto_19

    .line 417
    :cond_96
    const-string v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 418
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 419
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->decreaseServiceCount(I)V

    .line 420
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_ce

    .line 421
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_ce
    iget-object v0, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    goto :goto_69

    .line 438
    :cond_df
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 439
    iget-object v0, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method private isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I

    .prologue
    .line 1061
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private showListenerList()V
    .registers 10

    .prologue
    .line 366
    const-string v7, "===== Context Aware Service List ====="

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 368
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 370
    .local v4, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 371
    .local v6, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 372
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v2

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 373
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 374
    .local v5, "service":I
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    .local v0, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Service : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_2a

    .line 380
    .end local v0    # "count":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local v5    # "service":I
    .end local v6    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_89
    return-void
.end method

.method private waitForNotifyOperationCheckResult()Z
    .registers 5

    .prologue
    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x258

    if-ge v1, v2, :cond_18

    .line 545
    const-wide/16 v2, 0xa

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 546
    iget-boolean v2, p0, mCmdProcessResultNotifyCompletion:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, mContextCollectionResultNotifyCompletion:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_10} :catch_14

    if-eqz v2, :cond_1a

    .line 548
    const/4 v2, 0x1

    .line 556
    :goto_13
    return v2

    .line 550
    :catch_14
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 556
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_18
    const/4 v2, 0x0

    goto :goto_13

    .line 543
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getContextInfo(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I

    .prologue
    const/4 v7, 0x1

    .line 454
    iget-object v3, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 457
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContext 01] Mutex is locked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "isListener":Z
    const/4 v2, 0x0

    .line 463
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    const/4 v3, 0x1

    iput-boolean v3, p0, mCmdProcessResultNotifyCompletion:Z

    .line 464
    const/4 v3, 0x0

    iput-boolean v3, p0, mContextCollectionResultNotifyCompletion:Z

    .line 466
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 467
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 469
    .restart local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 472
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 473
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_6c
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 480
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 482
    iget-object v3, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 484
    const/4 v1, 0x1

    .line 488
    :cond_93
    if-nez v1, :cond_f7

    .line 489
    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 496
    :cond_9e
    :goto_9e
    iget-object v3, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 499
    if-eqz v2, :cond_cc

    .line 500
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-ne v3, v7, :cond_10e

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 502
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 508
    :cond_cc
    :goto_cc
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContext 02] Mutex is unlocked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_6 .. :try_end_f1} :catchall_107

    .line 514
    iget-object v3, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 516
    return-void

    .line 491
    :cond_f7
    :try_start_f7
    invoke-direct {p0}, waitForNotifyOperationCheckResult()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 492
    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_107

    goto :goto_9e

    .line 514
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isListener":Z
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :catchall_107
    move-exception v3

    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 503
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "isListener":Z
    .restart local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_10e
    :try_start_10e
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 504
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_127
    .catchall {:try_start_10e .. :try_end_127} :catchall_107

    goto :goto_cc
.end method

.method public final getVersion()I
    .registers 2

    .prologue
    .line 1178
    iget v0, p0, mVersion:I

    return v0
.end method

.method public final initializeAutoTest()V
    .registers 2

    .prologue
    .line 1089
    iget-object v0, p0, mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    .line 1090
    return-void
.end method

.method public final registerCallback(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 148
    const/4 v4, 0x0

    iput-boolean v4, p0, mCmdProcessResultNotifyCompletion:Z

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, p0, mContextCollectionResultNotifyCompletion:Z

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "isExistListener":Z
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 155
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 158
    const-string v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 160
    const/4 v1, 0x1

    .line 164
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_59
    if-nez v1, :cond_7e

    .line 165
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 166
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    new-instance v4, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$102(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 168
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 169
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 170
    const-string v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v2, p2}, doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 174
    .end local v2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_7e
    invoke-direct {p0, p2}, displayUsedCountForService(I)V

    .line 175
    invoke-direct {p0}, showListenerList()V

    .line 177
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_5 .. :try_end_a9} :catchall_af

    .line 183
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    return-void

    .line 183
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isExistListener":Z
    :catchall_af
    move-exception v4

    iget-object v5, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public final registerWatcher(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 267
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    .line 272
    .local v1, "isExistWatcher":Z
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 275
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 278
    const/4 v1, 0x1

    .line 280
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 281
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_65
    if-nez v1, :cond_95

    .line 287
    new-instance v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 288
    .local v3, "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 289
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V

    .line 292
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 293
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v3    # "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_5 .. :try_end_b3} :catchall_b9

    .line 300
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 302
    return-void

    .line 300
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isExistWatcher":Z
    :catchall_b9
    move-exception v4

    iget-object v5, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public final resetCAService(I)V
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 602
    iget-object v0, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 605
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->reset(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 02] Mutex is unlocked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_73

    .line 615
    iget-object v0, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 617
    return-void

    .line 615
    :catchall_73
    move-exception v0

    iget-object v1, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final setCALogger(ZZIZ)V
    .registers 5
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 1079
    invoke-static {p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setConsoleLoggingEnable(Z)V

    .line 1080
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setFileLoggingEnable(Z)V

    .line 1081
    invoke-static {p3, p4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setLogOption(IZ)V

    .line 1082
    return-void
.end method

.method public final setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "result":Z
    iget-object v1, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 578
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_71

    .line 587
    iget-object v1, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 590
    return v0

    .line 587
    :catchall_71
    move-exception v1

    iget-object v2, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final setCmdProcessResultNotifyCompletion(Z)V
    .registers 2
    .param p1, "completion"    # Z

    .prologue
    .line 1116
    iput-boolean p1, p0, mCmdProcessResultNotifyCompletion:Z

    .line 1117
    return-void
.end method

.method public final setScenarioForDebugging(II[B)Z
    .registers 5
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .param p3, "packet"    # [B

    .prologue
    .line 1148
    iget-object v0, p0, mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForDebugging(II[B)Z

    move-result v0

    return v0
.end method

.method public final setScenarioForTest(II)Z
    .registers 4
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 1131
    iget-object v0, p0, mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForTest(II)Z

    move-result v0

    return v0
.end method

.method public final setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 1159
    iget-boolean v0, p0, isVersionSetting:Z

    if-eqz v0, :cond_e

    .line 1160
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1169
    :goto_d
    return-void

    .line 1165
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 1166
    iput p1, p0, mVersion:I

    .line 1167
    iget-object v0, p0, mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->setVersion(I)V

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, isVersionSetting:Z

    goto :goto_d
.end method

.method public final startAutoTest()V
    .registers 2

    .prologue
    .line 1097
    iget-object v0, p0, mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->startAutoTest()V

    .line 1098
    return-void
.end method

.method public final stopAutoTest()V
    .registers 2

    .prologue
    .line 1105
    iget-object v0, p0, mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->stopAutoTest()V

    .line 1106
    return-void
.end method

.method public final unregisterCallback(Landroid/os/IBinder;I)Z
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v1, 0x1

    .line 203
    .local v1, "isEmptyListener":Z
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 206
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 210
    const/4 v4, 0x0

    iput-boolean v4, p0, mCmdProcessResultNotifyCompletion:Z

    .line 211
    const/4 v4, 0x1

    iput-boolean v4, p0, mContextCollectionResultNotifyCompletion:Z

    .line 212
    const/4 v2, 0x0

    .line 214
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 217
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 220
    move-object v2, v3

    .line 221
    const-string v4, "UNREGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 226
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_5a
    if-eqz v2, :cond_66

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    .line 227
    :cond_66
    const/4 v1, 0x0

    .line 230
    :cond_67
    if-eqz v1, :cond_74

    .line 231
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 232
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 235
    :cond_74
    invoke-direct {p0, p2}, displayUsedCountForService(I)V

    .line 236
    invoke-direct {p0}, showListenerList()V

    .line 238
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_6 .. :try_end_9f} :catchall_a5

    .line 244
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    return v1

    .line 244
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :catchall_a5
    move-exception v4

    iget-object v5, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public final unregisterWatcher(Landroid/os/IBinder;I)Z
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v1, 0x1

    .line 320
    .local v1, "isEmptyWatcher":Z
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 323
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 326
    const/4 v3, 0x0

    .line 328
    .local v3, "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 329
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 331
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 334
    move-object v3, v2

    .line 335
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 336
    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->decreaseServiceCount(I)V

    .line 337
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_78

    .line 338
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_78
    if-eqz v3, :cond_84

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_85

    .line 345
    :cond_84
    const/4 v1, 0x0

    .line 348
    :cond_85
    const/4 v4, 0x1

    if-ne v1, v4, :cond_93

    .line 349
    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 350
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V

    .line 353
    :cond_93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_6 .. :try_end_b1} :catchall_b7

    .line 356
    iget-object v4, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    return v1

    .line 356
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :catchall_b7
    move-exception v4

    iget-object v5, p0, mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 630
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 631
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 632
    iget-object v1, p0, mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 633
    return-void
.end method
