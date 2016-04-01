.class Lcom/android/server/bridge/BridgeProxy$RunnableCallback;
.super Landroid/os/IRunnableCallback$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 2231
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/IRunnableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 2231
    invoke-direct {p0, p1}, <init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 18
    .param p1, "bdl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2236
    const-string v13, "MoveTo"

    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4a

    .line 2237
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action:MoveTo "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v13, "rawContact"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/CustomCursor;

    const-string v14, "contactData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/CustomCursor;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;
    invoke-static {v15, v13, v14}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;

    move-result-object v10

    .line 2325
    :cond_49
    :goto_49
    return-object v10

    .line 2240
    :cond_4a
    const-string v13, "RequestProxy"

    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    .line 2241
    const-string/jumbo v13, "queryPersonaInfos"

    const-string v14, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c1

    .line 2242
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2244
    .local v10, "resp":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v13

    if-eqz v13, :cond_49

    .line 2245
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getSize()I

    move-result v11

    .line 2246
    .local v11, "size":I
    if-lez v11, :cond_49

    .line 2247
    new-array v8, v11, [Ljava/lang/String;

    .line 2248
    .local v8, "personaTypes":[Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/String;

    .line 2249
    .local v7, "personaNames":[Ljava/lang/String;
    new-array v6, v11, [I

    .line 2252
    .local v6, "personaIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8f
    if-ge v3, v11, :cond_ae

    .line 2253
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    move-result-object v4

    .line 2254
    .local v4, "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    if-eqz v4, :cond_ab

    .line 2255
    iget-object v13, v4, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    aput-object v13, v8, v3

    .line 2256
    iget v13, v4, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    aput v13, v6, v3

    .line 2257
    iget-object v13, v4, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    aput-object v13, v7, v3

    .line 2252
    :cond_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 2265
    .end local v4    # "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    :cond_ae
    const-string/jumbo v13, "personaIds"

    invoke-virtual {v10, v13, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2266
    const-string/jumbo v13, "personaTypes"

    invoke-virtual {v10, v13, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2267
    const-string/jumbo v13, "personaNames"

    invoke-virtual {v10, v13, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_49

    .line 2274
    .end local v3    # "i":I
    .end local v6    # "personaIds":[I
    .end local v7    # "personaNames":[Ljava/lang/String;
    .end local v8    # "personaTypes":[Ljava/lang/String;
    .end local v10    # "resp":Landroid/os/Bundle;
    .end local v11    # "size":I
    :cond_c1
    const-string v13, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/bridge/BridgeProxy;->isBridgeCmd(Ljava/lang/String;)Z
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ec

    .line 2275
    const-string v13, "callerPkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/bridge/BridgeProxy;->isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4300(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e9

    .line 2276
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/bridge/BridgeProxy;->bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v13, v0}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_49

    .line 2279
    :cond_e9
    const/4 v10, 0x0

    goto/16 :goto_49

    .line 2280
    :cond_ec
    const-string/jumbo v13, "notifysync"

    const-string v14, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18e

    .line 2282
    const-string v13, "callerPkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/bridge/BridgeProxy;->isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4300(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18e

    .line 2284
    const-string v13, "contentIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 2286
    .local v5, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2288
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/app/Command;

    invoke-direct {v2}, Landroid/app/Command;-><init>()V

    .line 2289
    .local v2, "command":Landroid/app/Command;
    const-string/jumbo v13, "personaId"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v2, Landroid/app/Command;->personaId:I

    .line 2290
    const-string v13, "contentIntent"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    iput-object v13, v2, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    .line 2291
    const-string v13, "commandType"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/app/Command;->type:Ljava/lang/String;

    .line 2292
    const-string/jumbo v13, "intent"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    iput-object v13, v2, Landroid/app/Command;->intent:Landroid/content/Intent;

    .line 2294
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "personaId"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "contentIntent"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "commandType"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/os/RCPManager;->executeCommandForPersona(Landroid/app/Command;)V

    .line 2325
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "command":Landroid/app/Command;
    .end local v5    # "intent":Landroid/app/PendingIntent;
    :cond_18e
    :goto_18e
    const/4 v10, 0x0

    goto/16 :goto_49

    .line 2302
    :cond_191
    const-string v13, "UpdateBadgeCount"

    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b9

    .line 2303
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v13

    if-eqz v13, :cond_18e

    .line 2304
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateShortcutBadgeCount(Landroid/os/Bundle;)V

    goto :goto_18e

    .line 2306
    :cond_1b9
    const-string v13, "RequestUpdateBadgeCount"

    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e1

    .line 2307
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v13

    if-eqz v13, :cond_18e

    .line 2308
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->trySync(Landroid/os/Bundle;)V

    goto :goto_18e

    .line 2310
    :cond_1e1
    const-string v13, "RequestBadgeInfo"

    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21a

    .line 2311
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v13

    if-eqz v13, :cond_18e

    .line 2312
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;
    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/bridge/BridgeProxy;->access$1200(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getBadgeInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_49

    .line 2315
    :cond_21a
    const-string v13, "GetExportPolicy"

    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18e

    .line 2316
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2317
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v13, "syncerName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2318
    .local v12, "syncerName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " get export policy for"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v14, "knox-export-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v13, v12, v14}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2322
    .local v9, "policy":Ljava/lang/String;
    const-string/jumbo v13, "policyValue"

    invoke-virtual {v1, v13, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v1

    .line 2323
    goto/16 :goto_49
.end method
