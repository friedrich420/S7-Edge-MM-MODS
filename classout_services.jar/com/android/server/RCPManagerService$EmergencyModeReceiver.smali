.class public Lcom/android/server/RCPManagerService$EmergencyModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .prologue
    .line 1377
    iput-object p1, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 1381
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " EmergencyModeReceiver onReceive() "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_93

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " action = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_31
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 1387
    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1388
    .local v6, "reason":I
    const/4 v7, 0x5

    if-ne v6, v7, :cond_b6

    .line 1390
    :try_start_4a
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, " EmergencyModeReceiver : calling scanAndStartRCPProxy EMERGENCY_STATE_CHANGED reason = MODE_DISABLED "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    iget-object v7, v7, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 1394
    .local v5, "personaManager":Landroid/os/PersonaManager;
    if-eqz v5, :cond_83

    .line 1395
    # getter for: Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$1400()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    .line 1397
    .local v4, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_83

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_83

    .line 1399
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$1400()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1402
    .end local v4    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_83
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    const-string v8, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    # getter for: Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$1400()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v7, v8, v9}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_92} :catch_96

    .line 1445
    .end local v5    # "personaManager":Landroid/os/PersonaManager;
    .end local v6    # "reason":I
    :cond_92
    :goto_92
    return-void

    .line 1381
    :cond_93
    const-string v7, " intent is null "

    goto :goto_31

    .line 1405
    .restart local v6    # "reason":I
    :catch_96
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " BootReceiver : Exception while scanAndStartRCPProxy() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1410
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b6
    const/4 v7, 0x3

    if-ne v6, v7, :cond_92

    .line 1412
    :try_start_b9
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, " EmergencyModeReceiver : calling scanAndStartRCPProxy EMERGENCY_STATE_CHANGED reason = MODE_ENABLED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->getAllPersonas()[I
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$2000(Lcom/android/server/RCPManagerService;)[I

    move-result-object v2

    .line 1417
    .local v2, "ids":[I
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeRedesign:Z
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$1500(Lcom/android/server/RCPManagerService;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 1418
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d7} :catch_14f

    .line 1419
    :try_start_d7
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_102

    .line 1420
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v7, v9}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 1421
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/RCPManagerService;->unregisterPacakgeReceiver(I)V
    invoke-static {v7, v9}, Lcom/android/server/RCPManagerService;->access$2100(Lcom/android/server/RCPManagerService;I)V

    .line 1422
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_102
    monitor-exit v8
    :try_end_103
    .catchall {:try_start_d7 .. :try_end_103} :catchall_14c

    .line 1425
    if-eqz v2, :cond_92

    .line 1426
    :try_start_105
    array-length v3, v2

    .line 1427
    .local v3, "idslength":I
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$1600(Lcom/android/server/RCPManagerService;)Z

    move-result v7

    if-eqz v7, :cond_127

    .line 1428
    const-string v7, "Bridge_PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "personas present size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_128
    if-ge v1, v3, :cond_92

    .line 1430
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_131} :catch_14f

    .line 1431
    :try_start_131
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v7, v1}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 1432
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->unregisterPacakgeReceiver(I)V
    invoke-static {v7, v1}, Lcom/android/server/RCPManagerService;->access$2100(Lcom/android/server/RCPManagerService;I)V

    .line 1433
    iget-object v7, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    monitor-exit v8
    :try_end_149
    .catchall {:try_start_131 .. :try_end_149} :catchall_16c

    .line 1429
    add-int/lit8 v1, v1, 0x1

    goto :goto_128

    .line 1424
    .end local v1    # "i":I
    .end local v3    # "idslength":I
    :catchall_14c
    move-exception v7

    :try_start_14d
    monitor-exit v8
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    :try_start_14e
    throw v7
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_14f} :catch_14f

    .line 1439
    .end local v2    # "ids":[I
    :catch_14f
    move-exception v0

    .line 1440
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 1434
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "ids":[I
    .restart local v3    # "idslength":I
    :catchall_16c
    move-exception v7

    :try_start_16d
    monitor-exit v8
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    :try_start_16e
    throw v7
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_16f} :catch_14f
.end method
