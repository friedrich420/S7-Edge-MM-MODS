.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 75
    new-instance v1, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, mSyncManager:Lcom/android/server/content/SyncManager;

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mSyncManagerLock:Ljava/lang/Object;

    .line 164
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 165
    iput-boolean p2, p0, mFactoryTest:Z

    .line 169
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 171
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$2;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 178
    return-void
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 999
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_d

    .line 1000
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_d
    return-void
.end method

.method private getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 6

    .prologue
    .line 80
    const-string v1, "config.disable_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 81
    const/4 v1, 0x0

    .line 91
    :goto_a
    return-object v1

    .line 84
    :cond_b
    iget-object v2, p0, mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_e
    iget-object v1, p0, mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-boolean v4, p0, mFactoryTest:Z

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_1d} :catch_24
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 91
    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v2

    goto :goto_a

    .line 92
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw v1

    .line 88
    :catch_24
    move-exception v0

    .line 89
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_25
    const-string v1, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_21

    goto :goto_1d
.end method

.method public static main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factoryTest"    # Z

    .prologue
    .line 985
    new-instance v0, Lcom/android/server/content/ContentService;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Z)V

    .line 986
    .local v0, "service":Lcom/android/server/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 987
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    .prologue
    .line 662
    if-nez p1, :cond_a

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Account must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must not be empty."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_18
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 672
    .local v7, "userId":I
    const-wide/16 v2, 0x3c

    cmp-long v0, p4, v2

    if-gez v0, :cond_4c

    .line 673
    const-string v0, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested poll frequency of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds being rounded up to 60 seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-wide/16 p4, 0x3c

    .line 677
    :cond_4c
    invoke-static {p4, p5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v4

    .line 679
    .local v4, "defaultFlex":J
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v8

    .line 681
    .local v8, "identityToken":J
    :try_start_54
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 683
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    move-wide v2, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncStorageEngine;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_6a

    .line 689
    invoke-static {v8, v9}, restoreCallingIdentity(J)V

    .line 691
    return-void

    .line 689
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_6a
    move-exception v0

    invoke-static {v8, v9}, restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 961
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 963
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 964
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 965
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 968
    :cond_13
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 970
    return-void

    .line 968
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 13
    .param p1, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 493
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v6

    .line 494
    .local v6, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v6, :cond_7

    .line 516
    :goto_6
    return-void

    .line 495
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 497
    .local v7, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 500
    .local v2, "identityToken":J
    :try_start_f
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 501
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 502
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "provider":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, v0, v5, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 504
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_40

    .line 506
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v10, "no permission to write the sync settings"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Lcom/android/server/content/SyncStorageEngine;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 511
    :cond_40
    invoke-virtual {v6, v4, v1}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 512
    invoke-virtual {v6, v4, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_4a

    .line 514
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_6

    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v5    # "provider":Ljava/lang/String;
    :catchall_4a
    move-exception v8

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v8
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .prologue
    .line 448
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 449
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 467
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    .line 468
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must be non-empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 470
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no permission to modify the sync settings for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4, v4}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 474
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 476
    .local v0, "identityToken":J
    :try_start_2b
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 477
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_3f

    .line 479
    if-nez p3, :cond_43

    .line 480
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 484
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_38
    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 485
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_49

    .line 488
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_3f
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 490
    return-void

    .line 482
    :cond_43
    :try_start_43
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p3, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_49

    .restart local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_38

    .line 488
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_49
    move-exception v4

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v4
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_73

    move-result-wide v12

    .line 104
    .local v12, "identityToken":J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v2, :cond_62

    .line 105
    const-string v2, "No SyncManager created!  (Disk full?)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 110
    const-string v2, "Observer tree:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v15, v0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v15
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_6e

    .line 112
    const/4 v2, 0x2

    :try_start_2d
    new-array v8, v2, [I

    .line 113
    .local v8, "counts":[I
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 114
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v6, ""

    const-string v7, "  "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 116
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v14, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4e
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_76

    .line 118
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_de

    .line 117
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 107
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v2, v0, mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6e

    goto :goto_1d

    .line 144
    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v2
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 97
    .end local v12    # "identityToken":J
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 120
    .restart local v8    # "counts":[I
    .restart local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v10    # "i":I
    .restart local v12    # "identityToken":J
    .restart local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_76
    :try_start_76
    new-instance v2, Lcom/android/server/content/ContentService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    const/4 v10, 0x0

    :goto_81
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b7

    .line 135
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 136
    .local v11, "pid":I
    const-string v2, "  pid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " observers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    .line 139
    .end local v11    # "pid":I
    :cond_b7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 140
    const-string v2, " Total number of nodes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 141
    const-string v2, " Total number of observers: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    monitor-exit v15
    :try_end_d9
    .catchall {:try_start_76 .. :try_end_d9} :catchall_de

    .line 144
    :try_start_d9
    invoke-static {v12, v13}, restoreCallingIdentity(J)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_73

    .line 146
    monitor-exit p0

    return-void

    .line 142
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_de
    move-exception v2

    :try_start_df
    monitor-exit v15
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_6e
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to read the sync settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 882
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v4, "no permission to read the sync stats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 887
    .local v0, "identityToken":J
    :try_start_25
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(I)Ljava/util/List;
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_35

    move-result-object v2

    .line 889
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    return-object v2

    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v2
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no permission to read the sync settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v3}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 748
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 753
    .local v0, "identityToken":J
    :try_start_25
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 754
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_33

    .line 755
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_38

    move-result v3

    .line 759
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 761
    :goto_32
    return v3

    .line 759
    :cond_33
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 761
    const/4 v3, -0x1

    goto :goto_32

    .line 759
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_38
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .prologue
    .line 786
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no permission to read the sync settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 797
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 802
    .local v0, "identityToken":J
    :try_start_25
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 803
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_37

    .line 804
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_3c

    move-result v3

    .line 807
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 809
    :goto_36
    return v3

    .line 807
    :cond_37
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 809
    const/4 v3, 0x0

    goto :goto_36

    .line 807
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_3c
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    if-nez p1, :cond_a

    .line 719
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Account must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 721
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 722
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Authority must not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 724
    :cond_18
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 728
    .local v2, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 730
    .local v0, "identityToken":J
    :try_start_2a
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_3f

    move-result-object v3

    .line 733
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    return-object v3

    :catchall_3f
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no permission to read sync settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v3}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 556
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 558
    .local v0, "identityToken":J
    :try_start_1b
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 559
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    move-result-object v3

    .line 561
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    return-object v3

    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .prologue
    .line 524
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no permission to read sync settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 541
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 543
    .local v0, "identityToken":J
    :try_start_1b
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 544
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    move-result-object v3

    .line 546
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    return-object v3

    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no permission to read the sync settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v3}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 578
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 583
    .local v0, "identityToken":J
    :try_start_25
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 584
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_37

    .line 585
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_3c

    move-result v3

    .line 589
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 591
    :goto_36
    return v3

    .line 589
    :cond_37
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 591
    const/4 v3, 0x0

    goto :goto_36

    .line 589
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_3c
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .prologue
    .line 894
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 903
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 904
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Authority must not be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 907
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no permission to read the sync stats for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4, v5}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 909
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v7, "no permission to read the sync stats"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 913
    .local v0, "callerUid":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 915
    .local v2, "identityToken":J
    :try_start_37
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5f

    move-result-object v4

    .line 916
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v4, :cond_42

    .line 917
    const/4 v5, 0x0

    .line 927
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    :goto_41
    return-object v5

    .line 920
    :cond_42
    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 921
    :try_start_46
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 925
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_5f

    move-result-object v5

    .line 927
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_41

    .line 923
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_57
    :try_start_57
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must call sync status with valid authority"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_5f

    .line 927
    .end local v4    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_5f
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .prologue
    .line 854
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v7, "no permission to read the sync stats"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 857
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 858
    .local v0, "callingUid":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 860
    .local v2, "identityToken":J
    :try_start_16
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_32

    move-result-object v1

    .line 861
    .local v1, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v1, :cond_21

    .line 862
    const/4 v5, 0x0

    .line 867
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    :goto_20
    return v5

    .line 864
    :cond_21
    :try_start_21
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v5

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p2, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_32

    move-result v5

    .line 867
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_20

    .end local v1    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_32
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .prologue
    .line 932
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 938
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v7, "no permission to read the sync stats"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no permission to retrieve the sync settings for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4, v5}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 943
    .local v0, "callerUid":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 944
    .local v2, "identityToken":J
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    .line 945
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v4, :cond_31

    const/4 v5, 0x0

    .line 956
    :goto_30
    return v5

    .line 949
    :cond_31
    if-eqz p1, :cond_46

    if-eqz p2, :cond_46

    .line 950
    :try_start_35
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 954
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_4e

    move-result v5

    .line 956
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_30

    .line 952
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_46
    :try_start_46
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid authority specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 956
    :catchall_4e
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z

    .prologue
    .line 335
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 337
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V
    .registers 34
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 256
    const-string v4, "ContentService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 257
    const-string v4, "ContentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying update of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from observer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", syncToNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    .line 262
    .local v26, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    .line 263
    .local v24, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 266
    .local v12, "callingUserHandle":I
    if-nez v12, :cond_103

    invoke-static/range {p5 .. p5}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-eqz v4, :cond_103

    const/16 v23, 0x1

    .line 270
    .local v23, "ownerToBbcNotify":Z
    :goto_5d
    move/from16 v0, p5

    if-eq v12, v0, :cond_7e

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v4

    if-eqz v4, :cond_7e

    if-nez v23, :cond_7e

    .line 273
    const-string/jumbo v4, "no permission to notify other users"

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v4}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 277
    :cond_7e
    if-gez p5, :cond_89

    .line 278
    const/4 v4, -0x2

    move/from16 v0, p5

    if-ne v0, v4, :cond_107

    .line 279
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p5

    .line 288
    :cond_89
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v16

    .line 290
    .local v16, "identityToken":J
    :try_start_8d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v10, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_12a

    .line 292
    :try_start_99
    move-object/from16 v0, p0

    iget-object v4, v0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 294
    monitor-exit v27
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_127

    .line 295
    :try_start_aa
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 296
    .local v19, "numCalls":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_af
    move/from16 v0, v19

    if-ge v14, v0, :cond_178

    .line 297
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_b9
    .catchall {:try_start_aa .. :try_end_b9} :catchall_12a

    .line 299
    .local v21, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_b9
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v4, v5, v0, v1}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 300
    const-string v4, "ContentService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 301
    const-string v4, "ContentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notified "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "update at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_100} :catch_12f
    .catchall {:try_start_b9 .. :try_end_100} :catchall_12a

    .line 296
    :cond_100
    :goto_100
    add-int/lit8 v14, v14, 0x1

    goto :goto_af

    .line 266
    .end local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v14    # "i":I
    .end local v16    # "identityToken":J
    .end local v19    # "numCalls":I
    .end local v21    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v23    # "ownerToBbcNotify":Z
    :cond_103
    const/16 v23, 0x0

    goto/16 :goto_5d

    .line 280
    .restart local v23    # "ownerToBbcNotify":Z
    :cond_107
    const/4 v4, -0x1

    move/from16 v0, p5

    if-eq v0, v4, :cond_89

    .line 281
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad user handle for notifyChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    .restart local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v16    # "identityToken":J
    :catchall_127
    move-exception v4

    :try_start_128
    monitor-exit v27
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    :try_start_129
    throw v4
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_12a

    .line 329
    .end local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_12a
    move-exception v4

    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    throw v4

    .line 303
    .restart local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v14    # "i":I
    .restart local v19    # "numCalls":I
    .restart local v21    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_12f
    move-exception v13

    .line 304
    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_130
    move-object/from16 v0, p0

    iget-object v5, v0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v5
    :try_end_135
    .catchall {:try_start_130 .. :try_end_135} :catchall_12a

    .line 305
    :try_start_135
    const-string v4, "ContentService"

    const-string v6, "Found dead observer, removing"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 307
    .local v11, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    # getter for: Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/content/ContentService$ObserverNode;->access$000(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v18

    .line 309
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 310
    .local v20, "numList":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_151
    move/from16 v0, v20

    if-ge v15, v0, :cond_173

    .line 311
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 312
    .local v22, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v11, :cond_170

    .line 313
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    add-int/lit8 v15, v15, -0x1

    .line 315
    add-int/lit8 v20, v20, -0x1

    .line 310
    :cond_170
    add-int/lit8 v15, v15, 0x1

    goto :goto_151

    .line 318
    .end local v22    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_173
    monitor-exit v5

    goto :goto_100

    .end local v11    # "binder":Landroid/os/IBinder;
    .end local v15    # "j":I
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v20    # "numList":I
    :catchall_175
    move-exception v4

    monitor-exit v5
    :try_end_177
    .catchall {:try_start_135 .. :try_end_177} :catchall_175

    :try_start_177
    throw v4

    .line 321
    .end local v13    # "ex":Landroid/os/RemoteException;
    .end local v21    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :cond_178
    if-eqz p4, :cond_18c

    .line 322
    invoke-direct/range {p0 .. p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v25

    .line 323
    .local v25, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v25, :cond_18c

    .line 324
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v12, v1, v5}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    :try_end_18c
    .catchall {:try_start_177 .. :try_end_18c} :catchall_12a

    .line 329
    .end local v25    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_18c
    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    .line 331
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 153
    :catch_5
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 157
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_11
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    .prologue
    .line 230
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    .line 232
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I

    .prologue
    .line 195
    if-eqz p3, :cond_4

    if-nez p1, :cond_c

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 200
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 201
    .local v6, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 204
    .local v8, "callingUserHandle":I
    if-eq v8, p4, :cond_29

    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v6, v5, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-eqz v0, :cond_29

    .line 207
    const-string/jumbo v0, "no permission to observe other users\' provider view"

    invoke-direct {p0, p4, v0}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 211
    :cond_29
    if-gez p4, :cond_32

    .line 212
    const/4 v0, -0x2

    if-ne p4, v0, :cond_42

    .line 213
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p4

    .line 220
    :cond_32
    iget-object v9, p0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v9

    .line 221
    :try_start_35
    iget-object v0, p0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v4, p0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 225
    monitor-exit v9
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_5e

    .line 226
    return-void

    .line 214
    :cond_42
    const/4 v0, -0x1

    if-eq p4, v0, :cond_32

    .line 215
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user handle for registerContentObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 694
    if-nez p1, :cond_a

    .line 695
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Account must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 697
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 698
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Authority must not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 700
    :cond_18
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 704
    .local v2, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 706
    .local v0, "identityToken":J
    :try_start_2a
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4, p3}, Lcom/android/server/content/SyncStorageEngine;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_3e

    .line 711
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 713
    return-void

    .line 711
    :catchall_3e
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 973
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 975
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 976
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 977
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 980
    :cond_13
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 982
    return-void

    .line 980
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 358
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 360
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 364
    .local v3, "uId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v12

    .line 366
    .local v12, "identityToken":J
    :try_start_f
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 367
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_22

    .line 368
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 373
    :cond_22
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    .line 375
    return-void

    .line 373
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_26
    move-exception v1

    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    .prologue
    .line 765
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 766
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 768
    :cond_e
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v6, "no permission to write the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 772
    .local v3, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 774
    .local v0, "identityToken":J
    :try_start_20
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 775
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_2d

    .line 776
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_31

    .line 780
    :cond_2d
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 782
    return-void

    .line 780
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_31
    move-exception v4

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v4
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I
    .param p4, "userId"    # I

    .prologue
    .line 637
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 642
    .local v0, "identityToken":J
    :try_start_e
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 643
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 644
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p4, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 648
    :cond_1b
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 650
    return-void

    .line 648
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 814
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, setMasterSyncAutomaticallyAsUser(ZI)V

    .line 815
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 13
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no permission to set the sync status for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v7}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 821
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v9, "no permission to write the sync settings"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 826
    .local v6, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 828
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_55

    .line 829
    if-eqz v6, :cond_47

    .line 830
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v4

    .line 831
    .local v4, "rp":Landroid/app/enterprise/RoamingPolicy;
    if-eqz v4, :cond_47

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v4}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v7

    if-nez v7, :cond_47

    .line 832
    const/4 p1, 0x0

    .line 835
    .end local v4    # "rp":Landroid/app/enterprise/RoamingPolicy;
    :cond_47
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 836
    .local v1, "restPol":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_55

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_55

    .line 851
    .end local v1    # "restPol":Landroid/app/enterprise/RestrictionPolicy;
    :goto_54
    return-void

    .line 842
    :cond_55
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 844
    .local v2, "identityToken":J
    :try_start_59
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v5

    .line 845
    .local v5, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v5, :cond_66

    .line 846
    invoke-virtual {v5}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_6a

    .line 849
    :cond_66
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_54

    .end local v5    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_6a
    move-exception v7

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v7
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .prologue
    .line 596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 597
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 602
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 603
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Authority must be non-empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 605
    :cond_e
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v7, "no permission to write the sync settings"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no permission to modify the sync settings for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4, v5}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 611
    const-string v5, "com.google"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 612
    invoke-direct {p0}, getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 613
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_54

    .line 614
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 615
    .local v1, "restPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_54

    invoke-virtual {v1, p4}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v5

    if-nez v5, :cond_54

    .line 616
    const-string v5, "ContentService"

    const-string/jumbo v6, "policy restricts sync of google account"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1    # "restPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :goto_53
    return-void

    .line 623
    :cond_54
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 625
    .local v2, "identityToken":J
    :try_start_58
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    .line 626
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v4, :cond_65

    .line 627
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v5

    invoke-virtual {v5, p1, p4, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_69

    .line 631
    :cond_65
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_53

    .end local v4    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_69
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 387
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, syncAsUser(Landroid/content/SyncRequest;I)V

    .line 388
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .registers 27
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I

    .prologue
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no permission to request sync as user: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v2}, enforceCrossUserPermission(ILjava/lang/String;)V

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 399
    .local v13, "callerUid":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v22

    .line 401
    .local v22, "identityToken":J
    :try_start_25
    invoke-direct/range {p0 .. p0}, getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_aa

    move-result-object v10

    .line 402
    .local v10, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v10, :cond_2f

    .line 433
    invoke-static/range {v22 .. v23}, restoreCallingIdentity(J)V

    .line 435
    :goto_2e
    return-void

    .line 406
    :cond_2f
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 407
    .local v8, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v6

    .line 408
    .local v6, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v4

    .line 409
    .local v4, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v9, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v11, "no permission to write the sync settings"

    invoke-virtual {v2, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, p2

    invoke-direct {v3, v2, v9, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 416
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-wide/16 v14, 0x3c

    cmp-long v2, v4, v14

    if-gez v2, :cond_82

    .line 417
    const-string v2, "ContentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested poll frequency of "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " seconds being rounded up to 60 seconds."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-wide/16 v4, 0x3c

    .line 422
    :cond_82
    invoke-direct/range {p0 .. p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_8d
    .catchall {:try_start_2f .. :try_end_8d} :catchall_aa

    .line 433
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_8d
    invoke-static/range {v22 .. v23}, restoreCallingIdentity(J)V

    goto :goto_2e

    .line 425
    :cond_91
    const-wide/16 v14, 0x3e8

    mul-long v16, v6, v14

    .line 426
    .local v16, "beforeRuntimeMillis":J
    const-wide/16 v14, 0x3e8

    mul-long v18, v4, v14

    .line 427
    .local v18, "runtimeMillis":J
    :try_start_99
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x0

    move/from16 v12, p2

    move-object v15, v8

    invoke-virtual/range {v10 .. v20}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_aa

    goto :goto_8d

    .line 433
    .end local v4    # "runAtTime":J
    .end local v6    # "flextime":J
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v10    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v16    # "beforeRuntimeMillis":J
    .end local v18    # "runtimeMillis":J
    :catchall_aa
    move-exception v2

    invoke-static/range {v22 .. v23}, restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, getSyncManager()Lcom/android/server/content/SyncManager;

    .line 182
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .prologue
    .line 235
    if-nez p1, :cond_a

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_a
    iget-object v1, p0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v1

    .line 239
    :try_start_d
    iget-object v0, p0, mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
