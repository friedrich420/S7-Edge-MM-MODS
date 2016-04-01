.class Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;
.super Landroid/os/CountDownTimer;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RssiStrengthChecker"
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 4

    .prologue
    const-wide/16 v0, 0x7d0

    .line 1806
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 1807
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1808
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 9

    .prologue
    .line 1815
    const-string v5, "[SMARTWIFI]"

    const-string v6, "RssiStrengthChecker finished"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiStrengthCheckerRunning()Z
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1817
    const-string v5, "[SMARTWIFI]"

    const-string v6, "RssiStrengthChecker is already finished"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_16
    :goto_16
    return-void

    .line 1820
    :cond_17
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v6, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;
    invoke-static {v5, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5202(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    .line 1821
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1823
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1824
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v0, 0x0

    .line 1825
    .local v0, "currentRssi":I
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 1826
    .local v1, "mMaxRssiValue":I
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    .line 1828
    .local v2, "mMinRssiValue":I
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiOnlyCase()Z
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1829
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbWifiOnlyValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5400()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 1830
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbWifiOnlyValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5500()I

    move-result v2

    .line 1833
    :cond_4d
    if-eqz v3, :cond_16

    .line 1834
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 1835
    const-string v5, "[SMARTWIFI]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RssiStrengthChecker currentRssi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z
    invoke-static {v5, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 1838
    const-string v5, "[SMARTWIFI]"

    const-string v6, "RssiStrengthChecker check again after 2 sec"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    sget-boolean v5, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    if-eqz v5, :cond_16

    .line 1840
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startRssiStrengthChecker()V
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    goto :goto_16

    .line 1842
    :cond_84
    if-ge v1, v0, :cond_9a

    .line 1843
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addReading(Ljava/lang/Integer;)V

    .line 1844
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopRssiStrengthChecker()V
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    goto/16 :goto_16

    .line 1845
    :cond_9a
    if-le v2, v0, :cond_16

    .line 1846
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiOnlyCase()Z
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 1847
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startImsDeRegister()V
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    .line 1851
    :goto_a9
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopRssiStrengthChecker()V
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    goto/16 :goto_16

    .line 1849
    :cond_b0
    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addReading(Ljava/lang/Integer;)V

    goto :goto_a9
.end method

.method public onTick(J)V
    .registers 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1811
    const-string v0, "[SMARTWIFI]"

    const-string v1, "RssiStrengthChecker tick"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    return-void
.end method
