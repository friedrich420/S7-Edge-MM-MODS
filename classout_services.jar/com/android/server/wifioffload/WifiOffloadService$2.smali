.class Lcom/android/server/wifioffload/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 2

    .prologue
    .line 708
    iput-object p1, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 712
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 757
    :cond_c
    :goto_c
    return-void

    .line 717
    :cond_d
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 718
    const-string/jumbo v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 721
    .local v2, "currentWifiState":I
    iget-object v6, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/4 v7, 0x2

    if-eq v2, v7, :cond_25

    const/4 v7, 0x3

    if-ne v2, v7, :cond_5e

    :cond_25
    :goto_25
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v6, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 722
    iget-object v4, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 723
    iget-object v4, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z
    invoke-static {v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 725
    :cond_35
    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wi-Fi status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentWifiState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_5e
    move v4, v5

    .line 721
    goto :goto_25

    .line 729
    .end local v2    # "currentWifiState":I
    :cond_60
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 731
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 734
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_84

    .line 735
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 737
    iget-object v5, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v5, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 743
    :cond_84
    :goto_84
    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wi-Fi network state change, connected ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->access$500(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 738
    :cond_a4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 740
    iget-object v4, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    goto :goto_84

    .line 748
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b6
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 750
    const-string/jumbo v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 753
    .local v1, "currentAPState":I
    iget-object v6, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/16 v7, 0xc

    if-eq v1, v7, :cond_d1

    const/16 v7, 0xd

    if-ne v1, v7, :cond_d2

    :cond_d1
    move v5, v4

    :cond_d2
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v6, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 754
    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mobile Hotspot setting changed, Enabled ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
