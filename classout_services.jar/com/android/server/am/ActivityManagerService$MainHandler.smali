.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2441
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2442
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2443
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 82
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2447
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_c52

    .line 3084
    :cond_7
    :goto_7
    return-void

    .line 2449
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v70

    .line 2450
    .local v70, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v70

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto :goto_7

    .line 2453
    .end local v70    # "resolver":Landroid/content/ContentResolver;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2454
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 2455
    monitor-exit v11

    goto :goto_7

    :catchall_2c
    move-exception v4

    monitor-exit v11
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v4

    .line 2458
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_62

    .line 2459
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2460
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v57

    .line 2461
    .local v57, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v57

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2462
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x7530

    move-object/from16 v0, v57

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 2465
    .end local v57    # "nmsg":Landroid/os/Message;
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_7

    .line 2468
    :sswitch_72
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2469
    :try_start_77
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v48, v4, -0x1

    .local v48, "i":I
    :goto_83
    if-ltz v48, :cond_cc

    .line 2470
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 2471
    .local v66, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_97
    .catchall {:try_start_77 .. :try_end_97} :catchall_c9

    if-eqz v4, :cond_a0

    .line 2473
    :try_start_99
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a0} :catch_a3
    .catchall {:try_start_99 .. :try_end_a0} :catchall_c9

    .line 2469
    :cond_a0
    :goto_a0
    add-int/lit8 v48, v48, -0x1

    goto :goto_83

    .line 2474
    :catch_a3
    move-exception v46

    .line 2475
    .local v46, "ex":Landroid/os/RemoteException;
    :try_start_a4
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update time zone for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 2479
    .end local v46    # "ex":Landroid/os/RemoteException;
    .end local v48    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_c9
    move-exception v4

    monitor-exit v11
    :try_end_cb
    .catchall {:try_start_a4 .. :try_end_cb} :catchall_c9

    throw v4

    .restart local v48    # "i":I
    :cond_cc
    :try_start_cc
    monitor-exit v11
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_c9

    goto/16 :goto_7

    .line 2482
    .end local v48    # "i":I
    :sswitch_cf
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2483
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v48, v4, -0x1

    .restart local v48    # "i":I
    :goto_e0
    if-ltz v48, :cond_129

    .line 2484
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 2485
    .restart local v66    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_f4
    .catchall {:try_start_d4 .. :try_end_f4} :catchall_126

    if-eqz v4, :cond_fd

    .line 2487
    :try_start_f6
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_fd} :catch_100
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_126

    .line 2483
    :cond_fd
    :goto_fd
    add-int/lit8 v48, v48, -0x1

    goto :goto_e0

    .line 2488
    :catch_100
    move-exception v46

    .line 2489
    .restart local v46    # "ex":Landroid/os/RemoteException;
    :try_start_101
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to clear dns cache for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 2493
    .end local v46    # "ex":Landroid/os/RemoteException;
    .end local v48    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_126
    move-exception v4

    monitor-exit v11
    :try_end_128
    .catchall {:try_start_101 .. :try_end_128} :catchall_126

    throw v4

    .restart local v48    # "i":I
    :cond_129
    :try_start_129
    monitor-exit v11
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_126

    goto/16 :goto_7

    .line 2496
    .end local v48    # "i":I
    :sswitch_12c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Landroid/net/ProxyInfo;

    .line 2501
    .local v65, "proxy":Landroid/net/ProxyInfo;
    if-eqz v65, :cond_147

    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getKnoxVpnProfile()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_147

    .line 2502
    const-string v4, "ActivityManager"

    const-string/jumbo v11, "skipping the proxy broadcast for applications added to knox vpn profile"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2506
    :cond_147
    const-string v5, ""

    .line 2507
    .local v5, "host":Ljava/lang/String;
    const-string v6, ""

    .line 2509
    .local v6, "port":Ljava/lang/String;
    const-string v7, ""

    .line 2510
    .local v7, "username":Ljava/lang/String;
    const-string v8, ""

    .line 2512
    .local v8, "password":Ljava/lang/String;
    const-string v9, ""

    .line 2513
    .local v9, "exclList":Ljava/lang/String;
    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2514
    .local v10, "pacFileUrl":Landroid/net/Uri;
    if-eqz v65, :cond_171

    .line 2515
    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 2516
    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2518
    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 2519
    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 2521
    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v9

    .line 2522
    invoke-virtual/range {v65 .. v65}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v10

    .line 2524
    :cond_171
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2525
    :try_start_176
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v48, v4, -0x1

    .restart local v48    # "i":I
    :goto_182
    if-ltz v48, :cond_1dd

    .line 2526
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 2527
    .restart local v66    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_196
    .catchall {:try_start_176 .. :try_end_196} :catchall_1da

    if-eqz v4, :cond_1a9

    .line 2530
    if-eqz v7, :cond_1ac

    :try_start_19a
    const-string v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ac

    .line 2531
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v4 .. v10}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2525
    :cond_1a9
    :goto_1a9
    add-int/lit8 v48, v48, -0x1

    goto :goto_182

    .line 2533
    :cond_1ac
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4, v5, v6, v9, v10}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1b3
    .catch Landroid/os/RemoteException; {:try_start_19a .. :try_end_1b3} :catch_1b4
    .catchall {:try_start_19a .. :try_end_1b3} :catchall_1da

    goto :goto_1a9

    .line 2536
    :catch_1b4
    move-exception v46

    .line 2537
    .restart local v46    # "ex":Landroid/os/RemoteException;
    :try_start_1b5
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update http proxy for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a9

    .line 2542
    .end local v46    # "ex":Landroid/os/RemoteException;
    .end local v48    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1da
    move-exception v4

    monitor-exit v11
    :try_end_1dc
    .catchall {:try_start_1b5 .. :try_end_1dc} :catchall_1da

    throw v4

    .restart local v48    # "i":I
    :cond_1dd
    :try_start_1dd
    monitor-exit v11
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1da

    goto/16 :goto_7

    .line 2545
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "exclList":Ljava/lang/String;
    .end local v10    # "pacFileUrl":Landroid/net/Uri;
    .end local v48    # "i":I
    .end local v65    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_1e0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_217

    .line 2546
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2547
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0x14

    invoke-virtual {v4, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v57

    .line 2548
    .restart local v57    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v57

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v11, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-object/from16 v0, v57

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 2552
    .end local v57    # "nmsg":Landroid/os/Message;
    :cond_217
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 2553
    .local v38, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2554
    :try_start_224
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v38

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2555
    monitor-exit v11

    goto/16 :goto_7

    :catchall_230
    move-exception v4

    monitor-exit v11
    :try_end_232
    .catchall {:try_start_224 .. :try_end_232} :catchall_230

    throw v4

    .line 2558
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_233
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 2559
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2560
    :try_start_240
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v38

    # invokes: Lcom/android/server/am/ActivityManagerService;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2561
    monitor-exit v11

    goto/16 :goto_7

    :catchall_24c
    move-exception v4

    monitor-exit v11
    :try_end_24e
    .catchall {:try_start_240 .. :try_end_24e} :catchall_24c

    throw v4

    .line 2564
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_24f
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2565
    :try_start_254
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 2566
    monitor-exit v11

    goto/16 :goto_7

    :catchall_261
    move-exception v4

    monitor-exit v11
    :try_end_263
    .catchall {:try_start_254 .. :try_end_263} :catchall_261

    throw v4

    .line 2569
    :sswitch_264
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2570
    :try_start_26b
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 2571
    .local v13, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_2db

    const/4 v14, 0x1

    .line 2572
    .local v14, "restart":Z
    :goto_277
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/Bundle;

    .line 2573
    .local v39, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2574
    .local v12, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2576
    .local v20, "reason":Ljava/lang/String;
    const-string v4, "com.android.systemui"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f1

    .line 2577
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2d5

    .line 2578
    const-string/jumbo v4, "replace sys pkg"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2dd

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2dd

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2dd

    .line 2579
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2595
    .end local v14    # "restart":Z
    :cond_2d5
    :goto_2d5
    monitor-exit v22

    goto/16 :goto_7

    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appid":I
    .end local v20    # "reason":Ljava/lang/String;
    .end local v39    # "bundle":Landroid/os/Bundle;
    :catchall_2d8
    move-exception v4

    monitor-exit v22
    :try_end_2da
    .catchall {:try_start_26b .. :try_end_2da} :catchall_2d8

    throw v4

    .line 2571
    .restart local v13    # "appid":I
    :cond_2db
    const/4 v14, 0x0

    goto :goto_277

    .line 2582
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v14    # "restart":Z
    .restart local v20    # "reason":Ljava/lang/String;
    .restart local v39    # "bundle":Landroid/os/Bundle;
    :cond_2dd
    :try_start_2dd
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    sget-object v11, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    sget v15, Lcom/android/server/am/ActivityManagerService;->mSytemUIPid:I

    sget-object v16, Lcom/android/server/am/ActivityManagerService;->mSystemUIAppThread:Landroid/app/IApplicationThread;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V

    goto :goto_2d5

    .line 2587
    :cond_2f1
    const-string/jumbo v4, "replace sys pkg"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32a

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_32a

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32a

    .line 2588
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    goto :goto_2d5

    .line 2591
    :cond_32a
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_33a
    .catchall {:try_start_2dd .. :try_end_33a} :catchall_2d8

    goto :goto_2d5

    .line 2598
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appid":I
    .end local v14    # "restart":Z
    .end local v20    # "reason":Ljava/lang/String;
    .end local v39    # "bundle":Landroid/os/Bundle;
    :sswitch_33b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 2601
    :sswitch_346
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v49

    .line 2602
    .local v49, "inm":Landroid/app/INotificationManager;
    if-eqz v49, :cond_7

    .line 2606
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Lcom/android/server/am/ActivityRecord;

    .line 2607
    .local v71, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v63, v0

    .line 2608
    .local v63, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v63, :cond_7

    .line 2613
    :try_start_35c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v63

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v41

    .line 2614
    .local v41, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040388

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v74

    .line 2616
    .local v74, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v41

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1080765

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1060059

    invoke-virtual {v11, v15}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1040389

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v71

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_400
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35c .. :try_end_400} :catch_428

    move-result-object v26

    .line 2631
    .local v26, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_402
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 2632
    .local v27, "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x1040388

    move-object/from16 v0, v71

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v28, v0

    move-object/from16 v21, v49

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_41a
    .catch Ljava/lang/RuntimeException; {:try_start_402 .. :try_end_41a} :catch_41c
    .catch Landroid/os/RemoteException; {:try_start_402 .. :try_end_41a} :catch_c4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_402 .. :try_end_41a} :catch_428

    goto/16 :goto_7

    .line 2635
    .end local v27    # "outId":[I
    :catch_41c
    move-exception v45

    .line 2636
    .local v45, "e":Ljava/lang/RuntimeException;
    :try_start_41d
    const-string v4, "ActivityManager"

    const-string v11, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v45

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_426
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41d .. :try_end_426} :catch_428

    goto/16 :goto_7

    .line 2640
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v41    # "context":Landroid/content/Context;
    .end local v45    # "e":Ljava/lang/RuntimeException;
    .end local v74    # "text":Ljava/lang/String;
    :catch_428
    move-exception v45

    .line 2641
    .local v45, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v11, "Unable to create context for heavy notification"

    move-object/from16 v0, v45

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2645
    .end local v45    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v49    # "inm":Landroid/app/INotificationManager;
    .end local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v71    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_434
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 2646
    .local v21, "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_7

    .line 2650
    :try_start_43a
    const-string v4, "android"

    const/4 v11, 0x0

    const v15, 0x1040388

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v4, v11, v15, v1}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_44d
    .catch Ljava/lang/RuntimeException; {:try_start_43a .. :try_end_44d} :catch_44f
    .catch Landroid/os/RemoteException; {:try_start_43a .. :try_end_44d} :catch_c4b

    goto/16 :goto_7

    .line 2652
    :catch_44f
    move-exception v45

    .line 2653
    .local v45, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v11, "Error canceling notification for service"

    move-object/from16 v0, v45

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2659
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v45    # "e":Ljava/lang/RuntimeException;
    :sswitch_45b
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2660
    :try_start_460
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2661
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, removeMessages(I)V

    .line 2662
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, obtainMessage(I)Landroid/os/Message;

    move-result-object v57

    .line 2663
    .restart local v57    # "nmsg":Landroid/os/Message;
    const-wide/32 v16, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2664
    monitor-exit v11

    goto/16 :goto_7

    .end local v57    # "nmsg":Landroid/os/Message;
    :catchall_486
    move-exception v4

    monitor-exit v11
    :try_end_488
    .catchall {:try_start_460 .. :try_end_488} :catchall_486

    throw v4

    .line 2669
    :sswitch_489
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    .line 2675
    :sswitch_49c
    invoke-static {}, Landroid/os/Process;->triggerRTCC()V

    .line 2676
    const-string v4, "ActivityManager"

    const-string v11, "RTCC_TRIGGER_MSG, ASYNC."

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2681
    :sswitch_4a8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/util/ArrayList;

    .line 2682
    .local v51, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v75, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2687
    .local v75, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 2692
    .end local v51    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v75    # "thread":Ljava/lang/Thread;
    :sswitch_4c0
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2697
    :sswitch_4db
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1040b37

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {v4, v11, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2706
    :sswitch_4fc
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2710
    :sswitch_517
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2714
    :sswitch_532
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_555

    const/16 v56, 0x1

    .line 2715
    .local v56, "nextState":Z
    :goto_53a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v56

    if-eq v4, v0, :cond_7

    .line 2719
    if-eqz v56, :cond_558

    .line 2720
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 2714
    .end local v56    # "nextState":Z
    :cond_555
    const/16 v56, 0x0

    goto :goto_53a

    .line 2722
    .restart local v56    # "nextState":Z
    :cond_558
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 2728
    .end local v56    # "nextState":Z
    :sswitch_563
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2732
    :sswitch_56c
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2733
    :try_start_571
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v15, 0x1

    const/16 v18, 0x0

    move-wide/from16 v0, v16

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v15, v2}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 2734
    monitor-exit v11

    goto/16 :goto_7

    :catchall_586
    move-exception v4

    monitor-exit v11
    :try_end_588
    .catchall {:try_start_571 .. :try_end_588} :catchall_586

    throw v4

    .line 2738
    :sswitch_589
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2739
    :try_start_58e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 2740
    monitor-exit v11

    goto/16 :goto_7

    :catchall_598
    move-exception v4

    monitor-exit v11
    :try_end_59a
    .catchall {:try_start_58e .. :try_end_59a} :catchall_598

    throw v4

    .line 2744
    :sswitch_59b
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2745
    :try_start_5a0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v48, v4, -0x1

    .restart local v48    # "i":I
    :goto_5ac
    if-ltz v48, :cond_5fe

    .line 2746
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 2747
    .restart local v66    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5c0
    .catchall {:try_start_5a0 .. :try_end_5c0} :catchall_5fb

    if-eqz v4, :cond_5d0

    .line 2749
    :try_start_5c2
    move-object/from16 v0, v66

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_5d3

    const/4 v4, 0x0

    :goto_5cd
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_5d0
    .catch Landroid/os/RemoteException; {:try_start_5c2 .. :try_end_5d0} :catch_5d5
    .catchall {:try_start_5c2 .. :try_end_5d0} :catchall_5fb

    .line 2745
    :cond_5d0
    :goto_5d0
    add-int/lit8 v48, v48, -0x1

    goto :goto_5ac

    .line 2749
    :cond_5d3
    const/4 v4, 0x1

    goto :goto_5cd

    .line 2750
    :catch_5d5
    move-exception v46

    .line 2751
    .restart local v46    # "ex":Landroid/os/RemoteException;
    :try_start_5d6
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update preferences for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d0

    .line 2755
    .end local v46    # "ex":Landroid/os/RemoteException;
    .end local v48    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_5fb
    move-exception v4

    monitor-exit v11
    :try_end_5fd
    .catchall {:try_start_5d6 .. :try_end_5fd} :catchall_5fb

    throw v4

    .restart local v48    # "i":I
    :cond_5fe
    :try_start_5fe
    monitor-exit v11
    :try_end_5ff
    .catchall {:try_start_5fe .. :try_end_5ff} :catchall_5fb

    goto/16 :goto_7

    .line 2761
    .end local v48    # "i":I
    :sswitch_601
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v15}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {v4, v11, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2768
    :sswitch_627
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    .line 2769
    .local v64, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v73, v0

    .line 2770
    .local v73, "stopReason":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v0, v64

    move/from16 v1, v73

    invoke-static {v11, v4, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_7

    .line 2777
    .end local v64    # "processId":I
    .end local v73    # "stopReason":I
    :sswitch_648
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v11, 0x8007

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2779
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_7

    .line 2783
    :sswitch_673
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v11, 0x4008

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2786
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v11, 0x8008

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2789
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_7

    .line 2793
    :sswitch_6b9
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2794
    :try_start_6be
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v66

    .line 2795
    .local v66, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v66, :cond_6e5

    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6e5

    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_6d6
    .catchall {:try_start_6be .. :try_end_6d6} :catchall_6e8

    if-eqz v4, :cond_6e5

    .line 2797
    :try_start_6d8
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v66

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v15}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_6e5
    .catch Landroid/os/RemoteException; {:try_start_6d8 .. :try_end_6e5} :catch_c48
    .catchall {:try_start_6d8 .. :try_end_6e5} :catchall_6e8

    .line 2801
    :cond_6e5
    :goto_6e5
    :try_start_6e5
    monitor-exit v11

    goto/16 :goto_7

    .end local v66    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6e8
    move-exception v4

    monitor-exit v11
    :try_end_6ea
    .catchall {:try_start_6e5 .. :try_end_6ea} :catchall_6e8

    throw v4

    .line 2805
    :sswitch_6eb
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_6f8

    .line 2806
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2808
    :cond_6f8
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_7

    .line 2809
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_7

    .line 2815
    :sswitch_707
    :try_start_707
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/util/Locale;

    .line 2816
    .local v50, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v72

    .line 2817
    .local v72, "service":Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v54

    .line 2818
    .local v54, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Storing locale "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v50 .. v50}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " for decryption UI"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    const-string v4, "SystemLocale"

    invoke-virtual/range {v50 .. v50}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v54

    invoke-interface {v0, v4, v11}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_747
    .catch Landroid/os/RemoteException; {:try_start_707 .. :try_end_747} :catch_749

    goto/16 :goto_7

    .line 2820
    .end local v50    # "l":Ljava/util/Locale;
    .end local v54    # "mountService":Landroid/os/storage/IMountService;
    .end local v72    # "service":Landroid/os/IBinder;
    :catch_749
    move-exception v45

    .line 2821
    .local v45, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v11, "Error storing locale for decryption UI"

    move-object/from16 v0, v45

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2826
    .end local v45    # "e":Landroid/os/RemoteException;
    :sswitch_755
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2827
    :try_start_75a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_765
    .catchall {:try_start_75a .. :try_end_765} :catchall_78e

    move-result v48

    .line 2828
    .restart local v48    # "i":I
    :goto_766
    if-lez v48, :cond_780

    .line 2829
    add-int/lit8 v48, v48, -0x1

    .line 2832
    :try_start_76a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_77d
    .catch Landroid/os/RemoteException; {:try_start_76a .. :try_end_77d} :catch_77e
    .catchall {:try_start_76a .. :try_end_77d} :catchall_78e

    goto :goto_766

    .line 2833
    :catch_77e
    move-exception v4

    goto :goto_766

    .line 2837
    :cond_780
    :try_start_780
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2838
    monitor-exit v11

    goto/16 :goto_7

    .end local v48    # "i":I
    :catchall_78e
    move-exception v4

    monitor-exit v11
    :try_end_790
    .catchall {:try_start_780 .. :try_end_790} :catchall_78e

    throw v4

    .line 2842
    :sswitch_791
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v77, v0

    .line 2843
    .local v77, "uid":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v47, v4

    check-cast v47, [B

    .line 2845
    .local v47, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11

    .line 2846
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_7aa
    :try_start_7aa
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_7da

    .line 2847
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/am/ProcessRecord;

    .line 2848
    .local v61, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_7ca
    .catchall {:try_start_7aa .. :try_end_7ca} :catchall_7dd

    move/from16 v0, v77

    if-ne v4, v0, :cond_7d7

    .line 2850
    :try_start_7ce
    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v47

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_7d7
    .catch Landroid/os/RemoteException; {:try_start_7ce .. :try_end_7d7} :catch_c45
    .catchall {:try_start_7ce .. :try_end_7d7} :catchall_7dd

    .line 2846
    :cond_7d7
    :goto_7d7
    add-int/lit8 v48, v48, 0x1

    goto :goto_7aa

    .line 2855
    .end local v61    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_7da
    :try_start_7da
    monitor-exit v11

    goto/16 :goto_7

    :catchall_7dd
    move-exception v4

    monitor-exit v11
    :try_end_7df
    .catchall {:try_start_7da .. :try_end_7df} :catchall_7dd

    throw v4

    .line 2863
    .end local v47    # "firstPacket":[B
    .end local v48    # "i":I
    .end local v77    # "uid":I
    :sswitch_7e0
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2864
    :try_start_7e5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v62, v0

    .line 2865
    .local v62, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v77, v0

    .line 2866
    .restart local v77    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v62

    move/from16 v1, v77

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/util/Pair;

    .line 2867
    .local v79, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v79, :cond_816

    .line 2868
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v15, 0x0

    move-object/from16 v0, v62

    invoke-virtual {v4, v0, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v79

    .end local v79    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v79, Landroid/util/Pair;

    .line 2870
    .restart local v79    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_816
    if-eqz v79, :cond_938

    .line 2871
    move-object/from16 v0, v79

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    .line 2872
    .local v52, "memLimit":J
    move-object/from16 v0, v79

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Ljava/lang/String;

    .line 2877
    .local v69, "reportPackage":Ljava/lang/String;
    :goto_82a
    monitor-exit v11
    :try_end_82b
    .catchall {:try_start_7e5 .. :try_end_82b} :catchall_93e

    .line 2878
    if-eqz v62, :cond_7

    .line 2885
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 2886
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_7

    .line 2890
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040390

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v62, v15, v16

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v74

    .line 2893
    .restart local v74    # "text":Ljava/lang/String;
    new-instance v42, Landroid/content/Intent;

    invoke-direct/range {v42 .. v42}, Landroid/content/Intent;-><init>()V

    .line 2894
    .local v42, "deleteIntent":Landroid/content/Intent;
    const-string v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2895
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 2896
    .local v30, "intent":Landroid/content/Intent;
    const-string v4, "android"

    const-class v11, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2897
    const-string/jumbo v4, "process"

    move-object/from16 v0, v30

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2898
    const-string/jumbo v4, "size"

    move-object/from16 v0, v30

    move-wide/from16 v1, v52

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2899
    if-eqz v69, :cond_885

    .line 2900
    const-string/jumbo v4, "direct_launch"

    move-object/from16 v0, v30

    move-object/from16 v1, v69

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2902
    :cond_885
    invoke-static/range {v77 .. v77}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v78

    .line 2903
    .local v78, "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1080765

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1060059

    invoke-virtual {v11, v15}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1040391

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v31, 0x10000000

    const/16 v32, 0x0

    new-instance v33, Landroid/os/UserHandle;

    move-object/from16 v0, v33

    move/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v28 .. v33}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v42

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v11, v15, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v26

    .line 2922
    .restart local v26    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_918
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 2923
    .restart local v27    # "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x1040390

    move/from16 v28, v78

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_92a
    .catch Ljava/lang/RuntimeException; {:try_start_918 .. :try_end_92a} :catch_92c
    .catch Landroid/os/RemoteException; {:try_start_918 .. :try_end_92a} :catch_c42

    goto/16 :goto_7

    .line 2926
    .end local v27    # "outId":[I
    :catch_92c
    move-exception v45

    .line 2927
    .local v45, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v11, "Error showing notification for dump heap"

    move-object/from16 v0, v45

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2874
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v42    # "deleteIntent":Landroid/content/Intent;
    .end local v45    # "e":Ljava/lang/RuntimeException;
    .end local v52    # "memLimit":J
    .end local v69    # "reportPackage":Ljava/lang/String;
    .end local v74    # "text":Ljava/lang/String;
    .end local v78    # "userId":I
    :cond_938
    const-wide/16 v52, 0x0

    .line 2875
    .restart local v52    # "memLimit":J
    const/16 v69, 0x0

    .restart local v69    # "reportPackage":Ljava/lang/String;
    goto/16 :goto_82a

    .line 2877
    .end local v52    # "memLimit":J
    .end local v62    # "procName":Ljava/lang/String;
    .end local v69    # "reportPackage":Ljava/lang/String;
    .end local v77    # "uid":I
    .end local v79    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_93e
    move-exception v4

    :try_start_93f
    monitor-exit v11
    :try_end_940
    .catchall {:try_start_93f .. :try_end_940} :catchall_93e

    throw v4

    .line 2933
    :sswitch_941
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    sget-object v15, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/16 v16, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2938
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2939
    :try_start_961
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2940
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2941
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, -0x1

    iput v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2942
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, -0x1

    iput v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2943
    monitor-exit v11

    goto/16 :goto_7

    :catchall_980
    move-exception v4

    monitor-exit v11
    :try_end_982
    .catchall {:try_start_961 .. :try_end_982} :catchall_980

    throw v4

    .line 2946
    :sswitch_983
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_7

    .line 2949
    :sswitch_990
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/server/am/AppTimeTracker;

    .line 2950
    .local v76, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v76

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 2953
    .end local v76    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :sswitch_9a5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_7

    .line 2956
    :sswitch_9b2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/app/IUiAutomationConnection;

    .line 2958
    .local v40, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_9ba
    invoke-interface/range {v40 .. v40}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_9bd
    .catch Landroid/os/RemoteException; {:try_start_9ba .. :try_end_9bd} :catch_9c7

    .line 2964
    :goto_9bd
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v4, v11}, Lcom/android/server/am/ActivityManagerService;->access$1402(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_7

    .line 2959
    :catch_9c7
    move-exception v45

    .line 2960
    .local v45, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v11, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9bd

    .line 2967
    .end local v40    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v45    # "e":Landroid/os/RemoteException;
    :sswitch_9d0
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2968
    :try_start_9d5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mIsBoosted:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_a09

    .line 2969
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBoostStartTime:J
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v22, 0x9c4

    sub-long v18, v18, v22

    cmp-long v4, v16, v18

    if-gez v4, :cond_a0f

    .line 2970
    # invokes: Lcom/android/server/am/ActivityManagerService;->nativeMigrateFromBoost()I
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$1700()I

    .line 2971
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mIsBoosted:Z
    invoke-static {v4, v15}, Lcom/android/server/am/ActivityManagerService;->access$1502(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2972
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    # setter for: Lcom/android/server/am/ActivityManagerService;->mBoostStartTime:J
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1602(Lcom/android/server/am/ActivityManagerService;J)J

    .line 2978
    :cond_a09
    :goto_a09
    monitor-exit v11

    goto/16 :goto_7

    :catchall_a0c
    move-exception v4

    monitor-exit v11
    :try_end_a0e
    .catchall {:try_start_9d5 .. :try_end_a0e} :catchall_a0c

    throw v4

    .line 2974
    :cond_a0f
    :try_start_a0f
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v15, 0x3a

    invoke-virtual {v4, v15}, obtainMessage(I)Landroid/os/Message;

    move-result-object v55

    .line 2975
    .local v55, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v55

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_a2a
    .catchall {:try_start_a0f .. :try_end_a2a} :catchall_a0c

    goto :goto_a09

    .line 2983
    .end local v55    # "newmsg":Landroid/os/Message;
    :sswitch_a2b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_a59

    .line 2984
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0xc

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 2985
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2987
    :cond_a59
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_a87

    .line 2988
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0x10

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 2989
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2991
    :cond_a87
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_ab5

    .line 2992
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0x13

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 2993
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2995
    :cond_ab5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_ae3

    .line 2996
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0xe

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 2997
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3000
    :cond_ae3
    sget v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_af6

    .line 3001
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3002
    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    .line 3004
    :cond_af6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_b0d

    .line 3005
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3007
    :cond_b0d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_b24

    .line 3008
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3010
    :cond_b24
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v4

    if-eqz v4, :cond_b3b

    .line 3011
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3013
    :cond_b3b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_7

    .line 3014
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v15, "AMS_RESUME_BOOST_CSTATE"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Landroid/os/DVFSHelper;->onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 3020
    :sswitch_b5a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/app/ApplicationErrorReport;

    .line 3021
    .local v67, "report":Landroid/app/ApplicationErrorReport;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v78, v0

    .line 3022
    .restart local v78    # "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_bcb

    const/16 v58, 0x1

    .line 3023
    .local v58, "notify":Z
    :goto_b70
    if-eqz v67, :cond_7

    .line 3024
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3025
    const/16 v44, 0x0

    .line 3026
    .local v44, "dumpStrTmp":Ljava/lang/String;
    :try_start_b79
    move-object/from16 v0, v67

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_bce

    .line 3027
    const-string v44, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 3032
    :cond_b82
    :goto_b82
    move-object/from16 v43, v44

    .line 3034
    .local v43, "dumpCmd":Ljava/lang/String;
    if-eqz v43, :cond_ba7

    .line 3035
    const-string/jumbo v4, "user"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd8

    .line 3036
    new-instance v4, Ljava/lang/Thread;

    new-instance v15, Lcom/android/server/am/ActivityManagerService$MainHandler$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v15, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;)V

    const-string/jumbo v16, "dumpstate"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3045
    :cond_ba7
    :goto_ba7
    monitor-exit v11
    :try_end_ba8
    .catchall {:try_start_b79 .. :try_end_ba8} :catchall_bdc

    .line 3047
    if-eqz v58, :cond_7

    .line 3048
    new-instance v68, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3049
    .local v68, "reportIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3050
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v68

    move/from16 v1, v78

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 3022
    .end local v43    # "dumpCmd":Ljava/lang/String;
    .end local v44    # "dumpStrTmp":Ljava/lang/String;
    .end local v58    # "notify":Z
    .end local v68    # "reportIntent":Landroid/content/Intent;
    :cond_bcb
    const/16 v58, 0x0

    goto :goto_b70

    .line 3028
    .restart local v44    # "dumpStrTmp":Ljava/lang/String;
    .restart local v58    # "notify":Z
    :cond_bce
    :try_start_bce
    move-object/from16 v0, v67

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v15, 0x2

    if-ne v4, v15, :cond_b82

    .line 3029
    const-string v44, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    goto :goto_b82

    .line 3042
    .restart local v43    # "dumpCmd":Ljava/lang/String;
    :cond_bd8
    invoke-static/range {v43 .. v43}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_ba7

    .line 3045
    .end local v43    # "dumpCmd":Ljava/lang/String;
    :catchall_bdc
    move-exception v4

    monitor-exit v11
    :try_end_bde
    .catchall {:try_start_bce .. :try_end_bde} :catchall_bdc

    throw v4

    .line 3060
    .end local v44    # "dumpStrTmp":Ljava/lang/String;
    .end local v58    # "notify":Z
    .end local v67    # "report":Landroid/app/ApplicationErrorReport;
    .end local v78    # "userId":I
    :sswitch_bdf
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    move-object/from16 v59, v4

    check-cast v59, Landroid/util/Pair;

    .line 3061
    .local v59, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Lcom/android/server/am/ActivityRecord;

    .line 3062
    .restart local v66    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3063
    :try_start_bf6
    move-object/from16 v0, v59

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v15, 0x8000000

    invoke-virtual {v4, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v60

    .line 3064
    .local v60, "opDisableFloating":Z
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_c25

    .line 3065
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    move-object/from16 v0, v59

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v4, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 3070
    :cond_c25
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v15, 0x8000000

    move/from16 v0, v60

    invoke-virtual {v4, v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 3071
    monitor-exit v11

    goto/16 :goto_7

    .end local v60    # "opDisableFloating":Z
    :catchall_c33
    move-exception v4

    monitor-exit v11
    :try_end_c35
    .catchall {:try_start_bf6 .. :try_end_c35} :catchall_c33

    throw v4

    .line 3079
    .end local v59    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    .end local v66    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_c36
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerService;->rebootSafeMode(Z)V

    goto/16 :goto_7

    .line 2929
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v30    # "intent":Landroid/content/Intent;
    .restart local v42    # "deleteIntent":Landroid/content/Intent;
    .restart local v52    # "memLimit":J
    .restart local v62    # "procName":Ljava/lang/String;
    .restart local v69    # "reportPackage":Ljava/lang/String;
    .restart local v74    # "text":Ljava/lang/String;
    .restart local v77    # "uid":I
    .restart local v78    # "userId":I
    .restart local v79    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_c42
    move-exception v4

    goto/16 :goto_7

    .line 2851
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v42    # "deleteIntent":Landroid/content/Intent;
    .end local v52    # "memLimit":J
    .end local v62    # "procName":Ljava/lang/String;
    .end local v69    # "reportPackage":Ljava/lang/String;
    .end local v74    # "text":Ljava/lang/String;
    .end local v78    # "userId":I
    .end local v79    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v47    # "firstPacket":[B
    .restart local v48    # "i":I
    .restart local v61    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c45
    move-exception v4

    goto/16 :goto_7d7

    .line 2798
    .end local v47    # "firstPacket":[B
    .end local v48    # "i":I
    .end local v61    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "uid":I
    .restart local v66    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_c48
    move-exception v4

    goto/16 :goto_6e5

    .line 2655
    .end local v66    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    :catch_c4b
    move-exception v4

    goto/16 :goto_7

    .line 2638
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v41    # "context":Landroid/content/Context;
    .restart local v49    # "inm":Landroid/app/INotificationManager;
    .restart local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v71    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v74    # "text":Ljava/lang/String;
    :catch_c4e
    move-exception v4

    goto/16 :goto_7

    .line 2447
    nop

    :sswitch_data_c52
    .sparse-switch
        0x4 -> :sswitch_8
        0x5 -> :sswitch_1e
        0xc -> :sswitch_2f
        0xd -> :sswitch_72
        0x14 -> :sswitch_1e0
        0x15 -> :sswitch_24f
        0x16 -> :sswitch_264
        0x17 -> :sswitch_33b
        0x18 -> :sswitch_346
        0x19 -> :sswitch_434
        0x1b -> :sswitch_45b
        0x1c -> :sswitch_cf
        0x1d -> :sswitch_12c
        0x21 -> :sswitch_4a8
        0x22 -> :sswitch_4c0
        0x23 -> :sswitch_4fc
        0x24 -> :sswitch_517
        0x25 -> :sswitch_532
        0x26 -> :sswitch_563
        0x27 -> :sswitch_56c
        0x28 -> :sswitch_589
        0x29 -> :sswitch_59b
        0x2a -> :sswitch_648
        0x2b -> :sswitch_673
        0x2c -> :sswitch_6b9
        0x2d -> :sswitch_6eb
        0x2f -> :sswitch_707
        0x31 -> :sswitch_755
        0x32 -> :sswitch_791
        0x33 -> :sswitch_7e0
        0x34 -> :sswitch_941
        0x35 -> :sswitch_983
        0x37 -> :sswitch_990
        0x38 -> :sswitch_9a5
        0x39 -> :sswitch_9b2
        0x3a -> :sswitch_9d0
        0x3b -> :sswitch_233
        0x3c -> :sswitch_a2b
        0x3d -> :sswitch_b5a
        0x3f -> :sswitch_49c
        0x190 -> :sswitch_627
        0x1f4 -> :sswitch_601
        0x259 -> :sswitch_4db
        0x2bc -> :sswitch_bdf
        0x3e7 -> :sswitch_489
        0x3e8 -> :sswitch_c36
    .end sparse-switch
.end method
