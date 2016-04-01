.class Lcom/android/server/bridge/BridgeProxy$1;
.super Ljava/lang/Object;
.source "BridgeProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, "isExecuteCleauUpService":Z
    :try_start_1
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v6

    if-nez v6, :cond_8d

    .line 343
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v4

    .line 344
    .local v4, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_3b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 347
    .local v5, "mPersonaIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PersonaInfo;>;"
    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 348
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 349
    .restart local v3    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_20

    iget-boolean v6, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v6, :cond_20

    iget-boolean v6, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-nez v6, :cond_20

    iget-boolean v6, v3, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v6, :cond_20

    .line 353
    const/4 v2, 0x1

    .line 360
    .end local v3    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v5    # "mPersonaIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PersonaInfo;>;"
    :cond_3b
    :goto_3b
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isExecuteCleauUpService : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , mDelegateUserId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v2, :cond_8c

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v0, "cleanupIntent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.knox.rcp.components"

    const-string v8, "com.samsung.knox.rcp.components.contacts.syncer.CleanUpService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 367
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 368
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->doSyncForAllSyncers()V
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1100(Lcom/android/server/bridge/BridgeProxy;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8c} :catch_8f

    .line 373
    .end local v0    # "cleanupIntent":Landroid/content/Intent;
    :cond_8c
    :goto_8c
    return-void

    .line 358
    :cond_8d
    const/4 v2, 0x1

    goto :goto_3b

    .line 370
    :catch_8f
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c
.end method
