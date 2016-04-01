.class Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;
.super Landroid/content/ISyncCallBack$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBridgeSyncer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 1162
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/ISyncCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 1162
    invoke-direct {p0, p1}, <init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 12
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1228
    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1230
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 1232
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_84

    .line 1233
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1234
    .local v4, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "RemoteShortcuts"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1235
    new-instance v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    iget-object v8, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1236
    .local v6, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v0, v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1237
    .local v0, "fullServiceName":Ljava/lang/String;
    iget-object v3, v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1238
    .local v3, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Found fullServiceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for providerName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "RemoteShortcuts"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .end local v0    # "fullServiceName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :goto_83
    return-object v7

    .line 1245
    :cond_84
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find service name for providerName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v7, 0x0

    goto :goto_83
.end method


# virtual methods
.method public deletePersonaData(I)V
    .registers 19
    .param p1, "personaID"    # I

    .prologue
    .line 1183
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v15, "deletePersonaData"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v14, v15}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1184
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v14

    const-string v15, " IBridgeSyncer - deletePersonaData() "

    invoke-static {v14, v15}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1188
    .local v13, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 1189
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_126

    .line 1190
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_126

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1191
    .local v11, "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v11

    .line 1193
    .local v9, "pairs":Ljava/util/Map$Entry;
    if-eqz v9, :cond_3b

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3b

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3b

    .line 1194
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1196
    .local v12, "syncerName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " deletePersonaDataOfAllSyncers pairs.getKey() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1200
    .local v4, "i":Landroid/content/Intent;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " Sync during switch package+service == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v10, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v10, v15, v14}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1205
    .local v10, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v3, v10, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1206
    .local v3, "fullServiceName":Ljava/lang/String;
    iget-object v8, v10, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1207
    .local v8, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " Sync during switch package == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; service == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1212
    const-string/jumbo v14, "dowhat"

    const-string v15, "DELETE"

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    const-string/jumbo v14, "delete_synced_data_of_user"

    move/from16 v0, p1

    invoke-virtual {v4, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1215
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;
    invoke-static {v14}, Lcom/android/server/bridge/BridgeProxy;->access$2400(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1216
    .local v6, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v14, "proxy"

    invoke-virtual {v1, v14, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1217
    const-string v14, "binderBundle"

    invoke-virtual {v4, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1218
    const-string v14, "Notifications"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3b

    .line 1219
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_3b

    .line 1224
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "fullServiceName":Ljava/lang/String;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mProxyMessenger":Landroid/os/Messenger;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pairs":Ljava/util/Map$Entry;
    .end local v10    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    .end local v11    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "syncerName":Ljava/lang/String;
    :cond_126
    return-void
.end method

.method public doSync(Ljava/lang/String;I)V
    .registers 7
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    .line 1166
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "doSync"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1167
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IBridgeSyncer - doSync() syncType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , provider ID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$2300(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;-><init>(Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;Ljava/lang/String;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1179
    return-void
.end method
