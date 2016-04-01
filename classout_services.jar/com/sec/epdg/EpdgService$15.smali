.class Lcom/sec/epdg/EpdgService$15;
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
    .line 1532
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
    .line 1535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1541
    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 1542
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.commands.ipcall.setting"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1543
    .local v4, "settingType":I
    const-string v5, "com.sec.commands.ipcall.state"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1544
    .local v3, "on":Z
    const/4 v5, 0x7

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1546
    .local v1, "imsInterface":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-nez v4, :cond_4a

    .line 1547
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 1548
    .local v0, "current":Z
    if-eq v0, v3, :cond_37

    .line 1550
    if-eqz v3, :cond_38

    .line 1551
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 1552
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1571
    .end local v0    # "current":Z
    :cond_37
    :goto_37
    return-void

    .line 1554
    .restart local v0    # "current":Z
    :cond_38
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    .line 1555
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_37

    .line 1558
    .end local v0    # "current":Z
    :cond_4a
    if-ne v4, v8, :cond_5c

    .line 1559
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 1560
    .restart local v0    # "current":Z
    if-eq v0, v3, :cond_37

    .line 1562
    if-eqz v3, :cond_58

    .line 1563
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    goto :goto_37

    .line 1565
    :cond_58
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    goto :goto_37

    .line 1569
    .end local v0    # "current":Z
    :cond_5c
    const-string v5, "[EPDGService]"

    const-string v6, "Received unknown command"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method
