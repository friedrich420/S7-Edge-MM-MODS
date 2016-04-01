.class final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .prologue
    .line 1368
    iput-object p1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .prologue
    .line 1368
    invoke-direct {p0, p1}, <init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 1488
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1489
    invoke-virtual {p0}, isAppIdleParoleOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1490
    return-void
.end method

.method public getIdleUidsForUser(I)[I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1470
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->getIdleUidsForUser(I)[I

    move-result-object v0

    return-object v0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uidForAppId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1465
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    const-wide/16 v4, -0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public isAppIdleParoleOn()Z
    .registers 2

    .prologue
    .line 1475
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-boolean v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    return v0
.end method

.method public prepareShutdown()V
    .registers 2

    .prologue
    .line 1483
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    .line 1484
    return-void
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 1495
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1496
    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1437
    if-nez p1, :cond_b

    .line 1438
    const-string v1, "UsageStatsService"

    const-string v2, "Configuration event reported with a null config"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :goto_a
    return-void

    .line 1442
    :cond_b
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1443
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1448
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1449
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 1450
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1455
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1456
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1457
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1458
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1459
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1461
    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "eventType"    # I

    .prologue
    const/4 v10, 0x0

    .line 1372
    if-nez p1, :cond_b

    .line 1373
    const-string v8, "UsageStatsService"

    const-string v9, "Event reported without a component name"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :goto_a
    return-void

    .line 1377
    :cond_b
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1378
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1379
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1384
    iput p4, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1385
    iget-object v8, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v8, v8, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, p3, v10, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1387
    iget-object v8, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->access$500(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 1388
    :try_start_36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v5, "removeWatchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v8, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->access$500(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 1390
    .local v6, "usageStatsWatchers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;>;"
    const/4 v8, 0x1

    if-ne p4, v8, :cond_70

    .line 1391
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_6d

    .line 1393
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;"
    :try_start_58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/IUsageStatsWatcher;

    .line 1394
    .local v7, "watcher":Landroid/app/usage/IUsageStatsWatcher;
    invoke-interface {v7, p1, p2}, Landroid/app/usage/IUsageStatsWatcher;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_61} :catch_62
    .catchall {:try_start_58 .. :try_end_61} :catchall_6d

    goto :goto_4c

    .line 1395
    .end local v7    # "watcher":Landroid/app/usage/IUsageStatsWatcher;
    :catch_62
    move-exception v1

    .line 1396
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1397
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1415
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "removeWatchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v6    # "usageStatsWatchers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;>;"
    :catchall_6d
    move-exception v8

    monitor-exit v9
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_6d

    throw v8

    .line 1400
    .restart local v5    # "removeWatchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v6    # "usageStatsWatchers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;>;"
    :cond_70
    const/4 v8, 0x2

    if-ne p4, v8, :cond_98

    .line 1401
    :try_start_73
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_6d

    .line 1403
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;"
    :try_start_83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/IUsageStatsWatcher;

    .line 1404
    .restart local v7    # "watcher":Landroid/app/usage/IUsageStatsWatcher;
    invoke-interface {v7, p1}, Landroid/app/usage/IUsageStatsWatcher;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_8d
    .catchall {:try_start_83 .. :try_end_8c} :catchall_6d

    goto :goto_77

    .line 1405
    .end local v7    # "watcher":Landroid/app/usage/IUsageStatsWatcher;
    :catch_8d
    move-exception v1

    .line 1406
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_8e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1407
    .restart local v0    # "binder":Landroid/os/IBinder;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 1412
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/usage/IUsageStatsWatcher;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_98
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1413
    .restart local v0    # "binder":Landroid/os/IBinder;
    iget-object v8, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->access$500(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 1415
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_b2
    monitor-exit v9
    :try_end_b3
    .catchall {:try_start_8e .. :try_end_b3} :catchall_6d

    goto/16 :goto_a
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1420
    if-nez p1, :cond_b

    .line 1421
    const-string v1, "UsageStatsService"

    const-string v2, "Event reported without a package name"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :goto_a
    return-void

    .line 1425
    :cond_b
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1426
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1431
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1432
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method
