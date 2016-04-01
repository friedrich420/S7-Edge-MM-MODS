.class Lcom/android/server/RCPManagerService$3;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .prologue
    .line 540
    iput-object p1, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 609
    const-string/jumbo v1, "onKnoxContainerLaunch"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    .line 611
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKnoxContainerLaunch() called for personaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_21
    iget-object v1, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_33

    .line 618
    :goto_2a
    iget-object v1, p0, this$0:Lcom/android/server/RCPManagerService;

    const-string/jumbo v2, "samsung.knox.intent.action.MODE_SWITCH_CHANGED"

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v1, v2, p1}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    .line 622
    return-void

    .line 615
    :catch_33
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public onPersonaActive(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 543
    const-string/jumbo v1, "onPersonaActive"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    .line 544
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPersonaActive called for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :try_start_20
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " IUserSwitchObserver : calling scanAndStartRCPProxy onPersonaActive "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    .line 550
    iget-object v1, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_37} :catch_38

    .line 561
    :goto_37
    return-void

    .line 551
    :catch_38
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ISystemPersonaObserver : Exception while scanAndStartRCPProxy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public onRemovePersona(I)V
    .registers 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    .line 565
    const-string/jumbo v3, "onRemovePersona"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    .line 566
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onRemovePersona called for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :try_start_21
    iget-object v3, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->removeItem(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_8a

    .line 572
    :goto_2a
    iget-object v3, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    .line 574
    iget-object v3, p0, this$0:Lcom/android/server/RCPManagerService;

    iget-object v3, v3, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 576
    .local v2, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v2, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v1

    .line 578
    .local v1, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemovePersona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v1, :cond_72

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_72

    .line 583
    iget-object v3, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    .line 587
    :cond_72
    iget-object v3, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/RCPManagerService;->unregisterObserver(I)V

    .line 590
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    .line 592
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v3, :cond_89

    .line 593
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxKioskMode"

    const-string/jumbo v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_89
    return-void

    .line 569
    .end local v1    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    :catch_8a
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public onResetPersona(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 601
    const-string/jumbo v0, "onResetPersona"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    .line 602
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    .line 604
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 9
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 627
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- onStateChange called for personaId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "personastate newState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/pm/PersonaState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "personastate oldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/PersonaState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-object v2, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    sget-object v2, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    sget-object v2, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 638
    :cond_70
    iget-object v2, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$800(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ISyncCallBack;

    .line 640
    .local v0, "callback":Landroid/content/ISyncCallBack;
    if-eqz v0, :cond_a0

    .line 642
    :try_start_83
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callig Owner Delete Persona Data of Persona :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-interface {v0, p1}, Landroid/content/ISyncCallBack;->deletePersonaData(I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_a0} :catch_d0

    .line 656
    :cond_a0
    :goto_a0
    iget-object v2, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 657
    :try_start_a7
    iget-object v2, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v2, p1}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 658
    iget-object v2, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_a7 .. :try_end_ba} :catchall_ec

    .line 666
    .end local v0    # "callback":Landroid/content/ISyncCallBack;
    :cond_ba
    sget-object v2, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p2, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    sget-object v2, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 668
    iget-object v2, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 670
    :cond_cf
    return-void

    .line 646
    .restart local v0    # "callback":Landroid/content/ISyncCallBack;
    :catch_d0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 659
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_ec
    move-exception v2

    :try_start_ed
    monitor-exit v3
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v2
.end method
