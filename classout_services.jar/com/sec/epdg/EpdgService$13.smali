.class Lcom/sec/epdg/EpdgService$13;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .registers 2

    .prologue
    .line 1485
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 1493
    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 1495
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "oem_request"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 1496
    .local v1, "data":[B
    const/4 v6, 0x4

    aget-byte v3, v1, v6

    .line 1497
    .local v3, "prefMode":B
    const/4 v6, 0x5

    aget-byte v5, v1, v6

    .line 1498
    .local v5, "status":B
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreferedModeIntent has"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    if-ne v5, v9, :cond_7d

    .line 1500
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 1508
    .local v4, "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_32
    if-eqz v4, :cond_7c

    .line 1509
    new-array v0, v10, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "ims"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "mms"

    aput-object v7, v0, v6

    const-string v6, "cbs"

    aput-object v6, v0, v9

    .line 1510
    .local v0, "apnList":[Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 1513
    .end local v0    # "apnList":[Ljava/lang/String;
    :cond_7c
    return-void

    .line 1501
    .end local v4    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_7d
    if-ne v3, v9, :cond_82

    .line 1502
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v4    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_32

    .line 1503
    .end local v4    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_82
    if-ne v3, v10, :cond_87

    .line 1504
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v4    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_32

    .line 1506
    .end local v4    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_87
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v4    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_32
.end method
