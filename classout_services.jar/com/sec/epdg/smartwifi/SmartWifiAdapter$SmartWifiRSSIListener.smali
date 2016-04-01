.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;
.super Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartWifiRSSIListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1284
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 1285
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V

    .line 1286
    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1290
    const-string/jumbo v1, "newRssi"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1291
    .local v0, "newRssi":I
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi RSSI intent received -- newRssi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 6
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 1298
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 1299
    .local v0, "intState":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1303
    .local v1, "newRssi":I
    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v2, :cond_16

    .line 1304
    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiRssiIntentReceived:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v3

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 1306
    :cond_16
    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->handleWifiRssiIntent(I)V
    invoke-static {v2, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    .line 1307
    return-void
.end method
