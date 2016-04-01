.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;
.super Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartWifiCaptiveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1311
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 1312
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V

    .line 1313
    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1317
    const-string/jumbo v2, "show_wifi_icon_captive_not_login"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1318
    .local v0, "notLogin":Z
    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v0, :cond_30

    :goto_c
    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z
    invoke-static {v2, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4102(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1319
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCaptiveAuthenticated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const/4 v1, 0x0

    return-object v1

    .line 1318
    :cond_30
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 5
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 1325
    const-string v0, "[SMARTWIFI]"

    const-string v1, "Polling Captive AP"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1327
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addReading(Ljava/lang/Integer;)V

    .line 1328
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ReadCurrentRssiRunnable;

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ReadCurrentRssiRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1334
    :cond_36
    :goto_36
    return-void

    .line 1329
    :cond_37
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1330
    const-string v0, "[SMARTWIFI]"

    const-string v1, "AP is now a captive portal, posting mWifi Off"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4202(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1332
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    goto :goto_36
.end method
