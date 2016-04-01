.class Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;
.super Landroid/content/IProviderCallBack$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBridgeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 1288
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IProviderCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 1288
    invoke-direct {p0, p1}, <init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1288
    invoke-direct {p0, p1}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 12
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1530
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

    .line 1532
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 1534
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_76

    .line 1535
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1536
    .local v4, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1537
    new-instance v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    iget-object v8, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1538
    .local v6, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v0, v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1539
    .local v0, "fullServiceName":Ljava/lang/String;
    iget-object v3, v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1540
    .local v3, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " package name of provider sync service ==  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; service == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .end local v0    # "fullServiceName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :goto_75
    return-object v7

    .line 1546
    :cond_76
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

    .line 1547
    const/4 v7, 0x0

    goto :goto_75
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1512
    const/16 v2, 0x90

    .line 1513
    .local v2, "maxSize":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1514
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1515
    .local v1, "height":I
    if-ne v1, v3, :cond_f

    if-ne v3, v2, :cond_f

    .line 1525
    .end local p1    # "image":Landroid/graphics/Bitmap;
    :goto_e
    return-object p1

    .line 1517
    .restart local p1    # "image":Landroid/graphics/Bitmap;
    :cond_f
    int-to-float v4, v3

    int-to-float v5, v1

    div-float v0, v4, v5

    .line 1518
    .local v0, "bitmapRatio":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_22

    .line 1519
    move v3, v2

    .line 1520
    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v1, v4

    .line 1525
    :goto_1c
    const/4 v4, 0x1

    invoke-static {p1, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_e

    .line 1522
    :cond_22
    move v1, v2

    .line 1523
    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-int v3, v4

    goto :goto_1c
.end method


# virtual methods
.method public getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 12
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v5, "getCallerInfoDetails"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1402
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getCallerInfoDetails() called"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v4, "Contacts"

    invoke-direct {p0, v4}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1406
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_cb

    .line 1407
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProviderNames MATCH, we will now sync up"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-class v5, Lcom/android/server/bridge/BridgeProxy;

    monitor-enter v5

    .line 1410
    :try_start_26
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v6, " SyncToAsyncService I am waiting now"

    invoke-static {v4, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1412
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1415
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "action"

    const-string v6, "CALLER_INFO"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v4, "contactRefUriAsString"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v4, "messenger"

    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1419
    const-string v4, "binderBundle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1421
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1422
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IProviderCallBack.Stub before result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_8f} :catch_c6
    .catchall {:try_start_26 .. :try_end_8f} :catchall_cd

    .line 1424
    :try_start_8f
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v8, 0x7530

    invoke-virtual {v4, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 1425
    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_c3

    .line 1427
    :try_start_9b
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IProviderCallBack.Stub after result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    :try_end_c0
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_c0} :catch_c6
    .catchall {:try_start_9b .. :try_end_c0} :catchall_cd

    move-result-object v4

    :try_start_c1
    monitor-exit v5
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_cd

    .line 1434
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_c2
    return-object v4

    .line 1425
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catchall_c3
    move-exception v4

    :try_start_c4
    monitor-exit v6
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw v4
    :try_end_c6
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c6} :catch_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_cd

    .line 1429
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_c6
    move-exception v2

    .line 1430
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_c7
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1432
    monitor-exit v5

    .line 1434
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_cb
    const/4 v4, 0x0

    goto :goto_c2

    .line 1432
    :catchall_cd
    move-exception v4

    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_cd

    throw v4
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1441
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v7, "handleShortcut"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1442
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "createShortcut()"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v6, "RemoteShortcuts"

    invoke-direct {p0, v6}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1446
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_192

    .line 1447
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProviderNames MATCH, we will now sync up"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :try_start_23
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " SyncToAsyncService I am waiting now"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1451
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1452
    if-eqz p4, :cond_66

    .line 1453
    invoke-direct {p0, p4}, getResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1454
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " before startservice intent shortcutIcon.getWidth():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shortcutIcon.getHeight(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_66
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1462
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "userId"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1463
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string/jumbo v6, "packageLabel"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v6, "shortcutIcon"

    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1466
    const-string/jumbo v6, "shortcutIntentUri"

    invoke-virtual {v0, v6, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string/jumbo v6, "createOrRemove"

    invoke-virtual {v0, v6, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string/jumbo v6, "create"

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 1470
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2900(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1a3

    .line 1471
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2900(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_193

    .line 1472
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " preinstalled Package name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string/jumbo v6, "isPreInstalledPackage"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1481
    :cond_e7
    :goto_e7
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v6

    if-eqz v6, :cond_177

    .line 1482
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1484
    .local v4, "req":Landroid/os/Bundle;
    const-string v6, "action"

    const-string v7, "RequestBadgeInfo"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, p1, v4}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1489
    .local v5, "resp":Landroid/os/Bundle;
    if-eqz v5, :cond_177

    .line 1490
    const-string/jumbo v6, "pkg_names"

    const-string/jumbo v7, "pkg_names"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string v6, "class_names"

    const-string v7, "class_names"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const-string v6, "counts"

    const-string v7, "counts"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1494
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BadgeInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "pkg_names"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "class_names"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "counts"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    .end local v4    # "req":Landroid/os/Bundle;
    .end local v5    # "resp":Landroid/os/Bundle;
    :cond_177
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1502
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " before startservice intent"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1509
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_192
    :goto_192
    return-void

    .line 1475
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_193
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " set does not contain package"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_19c} :catch_19e

    goto/16 :goto_e7

    .line 1504
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_19e
    move-exception v2

    .line 1505
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_192

    .line 1477
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1a3
    :try_start_1a3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " set is null "

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1ac} :catch_19e

    goto/16 :goto_e7
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 34
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    const-string/jumbo v21, "queryProvider"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v20 .. v21}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1295
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v21, " IBridgeProvider queryProvider() called"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1299
    .local v14, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    .line 1300
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_321

    .line 1301
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_32a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1302
    .local v17, "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v12, v17

    .line 1304
    .local v12, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_41

    .line 1305
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ProviderNames MATCH, we will now sync up for providerName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string/jumbo v15, "false"

    .line 1309
    .local v15, "sanitizeData":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1312
    .local v18, "syncOnlyFavoritesContactsPolicy":Z
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_13e

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Contacts"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Calendar"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "CallLog"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Bookmarks"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13e

    .line 1317
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "knox-export-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v20 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1319
    .local v13, "policy":Ljava/lang/String;
    if-eqz v13, :cond_e6

    const-string/jumbo v20, "false"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e6

    .line 1320
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Blocked EXPORT_DATA by  policy."

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/16 v20, 0x0

    .line 1394
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "pairs":Ljava/util/Map$Entry;
    .end local v13    # "policy":Ljava/lang/String;
    .end local v15    # "sanitizeData":Ljava/lang/String;
    .end local v17    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "syncOnlyFavoritesContactsPolicy":Z
    :goto_e5
    return-object v20

    .line 1323
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "pairs":Ljava/util/Map$Entry;
    .restart local v13    # "policy":Ljava/lang/String;
    .restart local v15    # "sanitizeData":Ljava/lang/String;
    .restart local v17    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "syncOnlyFavoritesContactsPolicy":Z
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "knox-sanitize-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v20 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1327
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Contacts"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13e

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getSyncPolicy()Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v19

    .line 1330
    .local v19, "syncPolicy":Ljava/lang/String;
    const-string/jumbo v20, "fav_contacts"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_120

    .line 1331
    const/16 v18, 0x1

    .line 1333
    :cond_120
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Contacts: syncOnlyFavoritesContactsPolicy = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .end local v13    # "policy":Ljava/lang/String;
    .end local v19    # "syncPolicy":Ljava/lang/String;
    :cond_13e
    const-class v21, Lcom/android/server/bridge/BridgeProxy;

    monitor-enter v21

    .line 1339
    :try_start_141
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v22, " SyncToAsyncService I am waiting now"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1341
    .local v8, "i":Landroid/content/Intent;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " SyncToAsyncService  package+fullServiceName == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    new-instance v16, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1345
    .local v16, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1346
    .local v7, "fullServiceName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1347
    .local v11, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Sync during switch package == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; service == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "package name of provider sync service == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    .local v5, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1355
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1356
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v20, "messenger"

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1359
    const-string/jumbo v20, "providerName"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string/jumbo v20, "resourceName"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v20, "containerId"

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    const-string/jumbo v20, "projection"

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1363
    const-string/jumbo v20, "selection"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string/jumbo v20, "selectionArgs"

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1365
    const-string/jumbo v20, "sortOrder"

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string/jumbo v20, "sanitizeData"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string/jumbo v20, "syncOnlyFavoritesContactsPolicy"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1370
    const-string v20, "binderBundle"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1372
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IProviderCallBack.Stub before result: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_2ae
    .catch Ljava/lang/InterruptedException; {:try_start_141 .. :try_end_2ae} :catch_31a
    .catchall {:try_start_141 .. :try_end_2ae} :catchall_314

    .line 1374
    :try_start_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v20

    const-wide/16 v24, 0x7530

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1375
    monitor-exit v22
    :try_end_2c2
    .catchall {:try_start_2ae .. :try_end_2c2} :catchall_317

    .line 1378
    :try_start_2c2
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IProviderCallBack.Stub after result: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v20

    if-eqz v20, :cond_307

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    .line 1382
    :cond_307
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    :try_end_310
    .catch Ljava/lang/InterruptedException; {:try_start_2c2 .. :try_end_310} :catch_31a
    .catchall {:try_start_2c2 .. :try_end_310} :catchall_314

    move-result-object v20

    :try_start_311
    monitor-exit v21

    goto/16 :goto_e5

    .line 1387
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "fullServiceName":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v16    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catchall_314
    move-exception v20

    monitor-exit v21
    :try_end_316
    .catchall {:try_start_311 .. :try_end_316} :catchall_314

    throw v20

    .line 1375
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "fullServiceName":Ljava/lang/String;
    .restart local v8    # "i":Landroid/content/Intent;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v16    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catchall_317
    move-exception v20

    :try_start_318
    monitor-exit v22
    :try_end_319
    .catchall {:try_start_318 .. :try_end_319} :catchall_317

    :try_start_319
    throw v20
    :try_end_31a
    .catch Ljava/lang/InterruptedException; {:try_start_319 .. :try_end_31a} :catch_31a
    .catchall {:try_start_319 .. :try_end_31a} :catchall_314

    .line 1384
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "fullServiceName":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v16    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catch_31a
    move-exception v6

    .line 1385
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_31b
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1387
    monitor-exit v21
    :try_end_31f
    .catchall {:try_start_31b .. :try_end_31f} :catchall_314

    goto/16 :goto_41

    .line 1391
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "pairs":Ljava/util/Map$Entry;
    .end local v15    # "sanitizeData":Ljava/lang/String;
    .end local v17    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "syncOnlyFavoritesContactsPolicy":Z
    :cond_321
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v21, "No services registered to provide. (prefs empty)"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_32a
    const/16 v20, 0x0

    goto/16 :goto_e5
.end method
