.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

.field final synthetic val$newState:Landroid/content/pm/PersonaState;

.field final synthetic val$oldState:Landroid/content/pm/PersonaState;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;I)V
    .registers 5

    .prologue
    .line 1310
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iput-object p2, p0, val$newState:Landroid/content/pm/PersonaState;

    iput-object p3, p0, val$oldState:Landroid/content/pm/PersonaState;

    iput p4, p0, val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1313
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, val$newState:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " old state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, val$oldState:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v15

    .line 1316
    .local v15, "info":Landroid/content/pm/PersonaInfo;
    if-nez v15, :cond_60

    .line 1317
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to get persona info for user "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, val$personaId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_5f
    :goto_5f
    return-void

    .line 1321
    :cond_60
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v20

    .line 1322
    .local v20, "ownerUid":I
    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1323
    .local v4, "userId":I
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v18, v0

    .line 1324
    .local v18, "isUserManaged":Z
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    move/from16 v16, v0

    .line 1325
    .local v16, "isKioskEnabled":Z
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v1

    sget-object v3, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v17

    .line 1327
    .local v17, "isSuperLocked":Z
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isUserManaged "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and user-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, val$personaId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and isKioskEnabled-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and isSuperLocked-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    move-object/from16 v0, p0

    iget-object v1, v0, val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190

    move-object/from16 v0, p0

    iget-object v1, v0, val$oldState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 1332
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v21

    .line 1333
    .local v21, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v21, :cond_166

    .line 1334
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    invoke-virtual/range {v21 .. v21}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    invoke-static {v1, v0, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1341
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_180

    .line 1342
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.created.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    .line 1356
    .end local v21    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_128
    :goto_128
    move-object/from16 v0, p0

    iget-object v1, v0, val$oldState:Landroid/content/pm/PersonaState;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Landroid/content/pm/PersonaState;)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(Landroid/content/pm/PersonaState;)I

    move-result v5

    .line 1357
    .local v5, "tOldState":I
    move-object/from16 v0, p0

    iget-object v1, v0, val$newState:Landroid/content/pm/PersonaState;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Landroid/content/pm/PersonaState;)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(Landroid/content/pm/PersonaState;)I

    move-result v6

    .line 1358
    .local v6, "tstate":I
    if-eq v6, v5, :cond_1d4

    .line 1359
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 1360
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_1c3

    .line 1361
    move-object/from16 v13, v22

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_150
    move/from16 v0, v19

    if-ge v14, v0, :cond_1d4

    aget-object v2, v13, v14

    .line 1362
    .local v2, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 1361
    add-int/lit8 v14, v14, 0x1

    goto :goto_150

    .line 1336
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v5    # "tOldState":I
    .end local v6    # "tstate":I
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "pkgNames":[Ljava/lang/String;
    .restart local v21    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_166
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onStateChange null params when switching from init to active. Removing container....."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto/16 :goto_5f

    .line 1344
    :cond_180
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.created.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto :goto_128

    .line 1347
    .end local v21    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_190
    move-object/from16 v0, p0

    iget-object v1, v0, val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 1348
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1b2

    .line 1349
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto/16 :goto_128

    .line 1351
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto/16 :goto_128

    .line 1365
    .restart local v5    # "tOldState":I
    .restart local v6    # "tstate":I
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, val$personaId:I

    move v10, v4

    move v11, v5

    move v12, v6

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 1370
    .end local v22    # "pkgNames":[Ljava/lang/String;
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v1, v0, val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ec

    move-object/from16 v0, p0

    iget-object v1, v0, val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1371
    :cond_1ec
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 1372
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_218

    .line 1373
    move-object/from16 v13, v22

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .restart local v19    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_202
    move/from16 v0, v19

    if-ge v14, v0, :cond_5f

    aget-object v2, v13, v14

    .line 1374
    .restart local v2    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    .line 1373
    add-int/lit8 v14, v14, 0x1

    goto :goto_202

    .line 1377
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v19    # "len$":I
    :cond_218
    move-object/from16 v0, p0

    iget-object v1, v0, this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v3, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    goto/16 :goto_5f
.end method
