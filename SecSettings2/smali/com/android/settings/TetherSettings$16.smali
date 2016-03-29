.class final Lcom/android/settings/TetherSettings$16;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1575
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "connectivity"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1580
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-eqz v12, :cond_9

    move v8, v10

    .line 1581
    .local v8, "wifiAvailable":Z
    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-eqz v12, :cond_a

    move v7, v10

    .line 1582
    .local v7, "usbAvailable":Z
    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-eqz v12, :cond_b

    move v0, v10

    .line 1587
    .local v0, "bluetoothAvailable":Z
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1588
    const-string v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 1589
    .local v9, "wm":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1590
    .local v4, "msg":Landroid/os/Message;
    const/16 v10, 0x15

    iput v10, v4, Landroid/os/Message;->what:I

    .line 1591
    invoke-virtual {v9, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    .line 1593
    .local v6, "tetheredData":I
    const/4 v10, 0x3

    if-ge v6, v10, :cond_0

    .line 1594
    const/4 v7, 0x0

    .line 1595
    :cond_0
    const/4 v10, 0x2

    if-ge v6, v10, :cond_1

    .line 1596
    const/4 v0, 0x0

    .line 1600
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "tetheredData":I
    .end local v9    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    const/4 v3, 0x0

    .line 1601
    .local v3, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v2

    .line 1602
    .local v2, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v2, :cond_2

    .line 1603
    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v3

    .line 1605
    :cond_2
    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_3

    .line 1606
    const/4 v8, 0x0

    .line 1608
    :cond_3
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_4

    .line 1609
    const/4 v0, 0x0

    .line 1613
    :cond_4
    if-nez v8, :cond_5

    .line 1614
    const-string v10, "wifi_ap_settings"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    :cond_5
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1617
    :cond_6
    const-string v10, "usb_tether_settings"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    :cond_7
    if-nez v0, :cond_8

    .line 1620
    const-string v10, "enable_bluetooth_tethering"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_8
    return-object v5

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .end local v3    # "knoxCustomSettingsState":I
    .end local v7    # "usbAvailable":Z
    .end local v8    # "wifiAvailable":Z
    :cond_9
    move v8, v11

    .line 1580
    goto :goto_0

    .restart local v8    # "wifiAvailable":Z
    :cond_a
    move v7, v11

    .line 1581
    goto :goto_1

    .restart local v7    # "usbAvailable":Z
    :cond_b
    move v0, v11

    .line 1582
    goto :goto_2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1566
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1567
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 1568
    const v1, 0x7f0800c4

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1569
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
