.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3443
    iput-object p1, p0, this$0:Lcom/android/server/SdpManagerService;

    .line 3444
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3445
    const-string v0, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2700(Ljava/lang/String;)I

    .line 3447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3450
    const-string v4, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$2700(Ljava/lang/String;)I

    .line 3451
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_36e

    .line 3592
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 3453
    :pswitch_d
    const-string v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "received MSG_SYSTEM_READY. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    new-instance v5, Lcom/android/server/SdpServiceKeeper;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$2802(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;

    .line 3455
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$3002(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    .line 3458
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3459
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v10

    .line 3461
    .local v10, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v10, :cond_dd

    .line 3462
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4d
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v12, v4, :cond_dd

    .line 3463
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 3464
    .local v14, "id":I
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3466
    .local v2, "alias":Ljava/lang/String;
    const-string v4, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDP_USER_0 getEngineListLocked :: engine found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v4, v14}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 3471
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_b5

    .line 3472
    const-string v4, "SdpManagerService"

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3478
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$2800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/SdpServiceKeeper;->loadPolicy(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    .line 3462
    :goto_b2
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    .line 3480
    :cond_b5
    const-string v6, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find engine info ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 3484
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v10    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v14    # "id":I
    :catchall_da
    move-exception v4

    monitor-exit v5
    :try_end_dc
    .catchall {:try_start_3e .. :try_end_dc} :catchall_da

    throw v4

    .restart local v10    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_dd
    :try_start_dd
    monitor-exit v5
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_da

    .line 3486
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    # setter for: Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    .line 3487
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v5

    # setter for: Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3488
    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/SdpManagerService;

    new-instance v1, Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v5}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V

    # setter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v8, v1}, Lcom/android/server/SdpManagerService;->access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .line 3490
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    .line 3491
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 3492
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$4000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    .line 3499
    :cond_149
    const/4 v12, 0x0

    .restart local v12    # "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v16

    .local v16, "nsize":I
    :goto_156
    move/from16 v0, v16

    if-ge v12, v0, :cond_176

    .line 3500
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 3501
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    # invokes: Lcom/android/server/SdpManagerService;->bootInternal(I)I
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$4100(Lcom/android/server/SdpManagerService;I)I

    .line 3499
    add-int/lit8 v12, v12, 0x1

    goto :goto_156

    .line 3506
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_176
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 3508
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3509
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3510
    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/SdpManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3511
    const-string v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "registered boradcast receiver for SDP.. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    new-instance v11, Landroid/content/IntentFilter;

    .end local v11    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 3514
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3515
    const-string/jumbo v4, "package"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3517
    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/SdpManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    const-string v6, "com.samsung.container.ACCESS_RECEIVER"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v11, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3522
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2e2

    .line 3523
    const-string v4, "SdpManagerServiceHandler"

    const-string v5, "Creating default engine."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 3526
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v21, :cond_c

    .line 3527
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1ea
    :goto_1ea
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 3528
    .local v20, "user":Landroid/content/pm/UserInfo;
    if-eqz v20, :cond_1ea

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_1ea

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_1ea

    .line 3529
    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 3530
    .local v3, "userId":I
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating default engine for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    .line 3532
    .restart local v2    # "alias":Ljava/lang/String;
    new-instance v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v4, v3

    invoke-direct/range {v1 .. v8}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 3541
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating default engine info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v19

    .line 3543
    .local v19, "rstToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v4, v1, v5, v0}, Lcom/android/server/SdpManagerService;->access$4300(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 3544
    .local v9, "cmk":[B
    if-nez v9, :cond_27e

    .line 3545
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to create keys for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ea

    .line 3547
    :cond_27e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 3549
    :try_start_287
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v8, 0x0

    move-object v5, v1

    # invokes: Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    invoke-static/range {v4 .. v9}, Lcom/android/server/SdpManagerService;->access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v18

    .line 3551
    .local v18, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->zeroOut([B)V
    invoke-static {v4, v9}, Lcom/android/server/SdpManagerService;->access$4500(Lcom/android/server/SdpManagerService;[B)V

    .line 3552
    if-eqz v18, :cond_2c9

    .line 3553
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add default engine. ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3558
    :goto_2c3
    monitor-exit v22

    goto/16 :goto_1ea

    .end local v18    # "ret":I
    :catchall_2c6
    move-exception v4

    monitor-exit v22
    :try_end_2c8
    .catchall {:try_start_287 .. :try_end_2c8} :catchall_2c6

    throw v4

    .line 3556
    .restart local v18    # "ret":I
    :cond_2c9
    :try_start_2c9
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default engine has been created successfully for userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e1
    .catchall {:try_start_2c9 .. :try_end_2e1} :catchall_2c6

    goto :goto_2c3

    .line 3564
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v9    # "cmk":[B
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "ret":I
    .end local v19    # "rstToken":Ljava/lang/String;
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2e2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 3565
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_c

    .line 3566
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    .line 3567
    .restart local v3    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3000(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v17

    .line 3569
    .local v17, "quality":I
    if-nez v17, :cond_346

    const/4 v15, 0x1

    .line 3572
    .local v15, "noCredential":Z
    :goto_306
    if-eqz v15, :cond_c

    .line 3573
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No credential to authenticate default user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    invoke-static {v4, v1, v5, v6}, Lcom/android/server/SdpManagerService;->access$4600(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v18

    .line 3576
    .restart local v18    # "ret":I
    if-nez v18, :cond_348

    .line 3577
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default engine has been unlocked successfully for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3569
    .end local v15    # "noCredential":Z
    .end local v18    # "ret":I
    :cond_346
    const/4 v15, 0x0

    goto :goto_306

    .line 3579
    .restart local v15    # "noCredential":Z
    .restart local v18    # "ret":I
    :cond_348
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unlock default engine for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errno : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3451
    :pswitch_data_36e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
