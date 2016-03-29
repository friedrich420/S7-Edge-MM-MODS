.class public Lcom/android/settings/wifi/WifiReset;
.super Ljava/lang/Object;
.source "WifiReset.java"


# static fields
.field private static final mIsDisableWifi:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsReboot:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiReset;->mIsDisableWifi:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiReset;->mIsReboot:Z

    .line 39
    new-instance v0, Lcom/android/settings/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiReset$1;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reboot"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiReset;->mIsReboot:Z

    .line 39
    new-instance v0, Lcom/android/settings/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiReset$1;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    .line 59
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiReset;->mIsReboot:Z

    .line 60
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiReset;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiReset;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiReset;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiReset;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiReset;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/settings/wifi/WifiReset;->mIsDisableWifi:Z

    return v0
.end method


# virtual methods
.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 83
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "wifi_internet_service_check_warning"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    const-string v2, "wifi_poor_connection_warning"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isPasspointDefaultOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    const-string v2, "wifi_hotspot20_enable"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    :goto_0
    const-string v2, "ssid"

    const-string v3, "rssi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    const-string v2, "wifi_ap_sort"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    :goto_1
    const-string v2, "DEFAULT_ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    :goto_2
    const-string v2, "ATT"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "wifi_auto_connecct"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 116
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1f

    iput v2, v1, Landroid/os/Message;->what:I

    .line 117
    const-string v2, "SKT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 122
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 124
    const-string v2, "hidden_ap_sinal_strength"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    const-string v2, "wifi_connection_monitor_enable"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_offload_network_notify"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_1
    const/16 v2, 0xf2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 134
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 136
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiReset;->mIsReboot:Z

    if-eqz v2, :cond_7

    .line 137
    new-instance v2, Lcom/android/settings/wifi/WifiReset$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiReset$2;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiReset$2;->start()V

    .line 156
    :goto_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 160
    :cond_2
    return-void

    .line 94
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v2, "wifi_hotspot20_enable"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 100
    :cond_4
    const-string v2, "wifi_ap_sort"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 106
    :cond_5
    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 120
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_6
    iput v5, v1, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 144
    :cond_7
    new-instance v2, Lcom/android/settings/wifi/WifiReset$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiReset$3;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiReset$3;->start()V

    goto :goto_4
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 64
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiReset;->mIsReboot:Z

    if-ne v2, v5, :cond_0

    .line 65
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e035e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiReset;->mIsReboot:Z

    if-ne v2, v5, :cond_1

    .line 71
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 72
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xe6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 73
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .end local v0    # "intent":Landroid/content/IntentFilter;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiReset;->reset()V

    goto :goto_0
.end method
