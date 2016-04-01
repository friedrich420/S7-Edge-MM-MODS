.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ReadCurrentRssiRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadCurrentRssiRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 2

    .prologue
    .line 1337
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1340
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Read current RSSI"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1343
    :try_start_17
    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_26} :catch_3d

    .line 1347
    :goto_26
    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1350
    :cond_3c
    return-void

    .line 1344
    :catch_3d
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[SMARTWIFI]"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
