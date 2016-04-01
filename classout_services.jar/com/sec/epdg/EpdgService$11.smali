.class Lcom/sec/epdg/EpdgService$11;
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
    .line 1431
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
    .line 1434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 7
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1439
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v0, 0x1

    .line 1441
    .local v0, "isAirplaneModeEnabled":Z
    :goto_12
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAirplaneModeEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsAirplaneMode(Z)V

    .line 1443
    if-eqz v0, :cond_4a

    .line 1444
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2300()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1446
    iget-object v2, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgService;->access$2400(Lcom/sec/epdg/EpdgService;Z)Z

    .line 1448
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopCdmaProfiling()V

    .line 1449
    iget-object v2, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgService;->access$2500(Lcom/sec/epdg/EpdgService;Z)V

    .line 1451
    :cond_4a
    return-void

    .end local v0    # "isAirplaneModeEnabled":Z
    :cond_4b
    move v0, v1

    .line 1439
    goto :goto_12
.end method
