.class public Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 40
    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 44
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 45
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 47
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 48
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    .line 74
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 76
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 77
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "mRvfMode":I
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 453
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 454
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 455
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 456
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 458
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 461
    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    const-string v2, "WifiApBroadcastReceiver"

    const-string v3, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_2
    const-string v2, "WifiApBroadcastReceiver"

    const-string v3, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "mProvisionApp":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 473
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 493
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 494
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 496
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 497
    .local v1, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 498
    const-string v2, "WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 489
    :goto_0
    return v1

    .line 483
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 484
    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiApBroadcastReceiver"

    const-string v3, "Wifi Sharing provider not defined"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 489
    goto :goto_0
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 422
    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 398
    const-string v1, "WifiApBroadcastReceiver"

    const-string v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 401
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 402
    const-string v1, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method private startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 408
    const-string v1, "WifiApBroadcastReceiver"

    const-string v2, "startHotspotProvisioningRequest for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 411
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string v1, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v1, "wifiap_provision_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 416
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 446
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0e0465

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 448
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "action":Ljava/lang/String;
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onReceive: action "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-nez v5, :cond_1

    .line 90
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "action is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v28, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 95
    const-string v28, "wifi_state"

    const/16 v29, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 96
    .local v8, "apState":I
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 172
    :pswitch_1
    const/16 v28, 0x0

    sput v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 173
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 176
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 177
    sget-object v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v29, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    const-string v28, "hotspot"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 100
    :pswitch_2
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 103
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 104
    sget-object v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v29, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    const-string v28, "hotspot"

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 112
    const-string v28, "ATT"

    sget-object v29, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 113
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    .line 114
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 116
    :cond_4
    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 119
    .local v9, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v28, "wifi_ap_saved_state"

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 120
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 121
    const-string v28, "wifi_ap_saved_state"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 128
    .end local v9    # "cr":Landroid/content/ContentResolver;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    if-nez v28, :cond_6

    .line 129
    const-string v28, "SAMSUNG_HOTSPOT"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 132
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    const-string v29, "PROVISIONING_RESULT"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 133
    .local v24, "tempProvisonResult":I
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "value of provisioning result is  and flag value "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-boolean v30, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_b

    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v28, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v28

    if-nez v28, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    .line 136
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 137
    .local v27, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 138
    if-nez v24, :cond_a

    .line 139
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 140
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v28, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    .line 152
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_7
    :goto_2
    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v28, :cond_8

    .line 153
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 154
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 155
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 156
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 160
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    if-nez v28, :cond_9

    .line 161
    const-string v28, "SAMSUNG_HOTSPOT"

    const/16 v29, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 163
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 165
    .local v12, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v28, "PROVISIONING_RESULT"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 143
    .end local v12    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_a
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_2

    .line 149
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_b
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_2

    .line 185
    .end local v8    # "apState":I
    .end local v24    # "tempProvisonResult":I
    :cond_c
    const-string v28, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 186
    const-string v28, "wifiap_power_mode_alarm_option"

    const/16 v29, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 188
    .local v19, "option":I
    if-nez v19, :cond_12

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 191
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_d

    const-string v28, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 194
    :cond_d
    :try_start_1
    const-string v28, "wifi_ap_plugged_type"

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    .line 198
    .local v21, "pluggedType":I
    :goto_3
    const-string v28, "TMO"

    sget-object v29, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_e

    const-string v28, "NEWCO"

    sget-object v29, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    :cond_e
    if-nez v21, :cond_0

    .line 201
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v23

    .line 202
    .local v23, "powermode_value":I
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ALARM_START : set "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " sec"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v23, :cond_10

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v14, v28, v30

    .line 206
    .local v14, "expireTime":J
    new-instance v6, Landroid/content/Intent;

    const-string v28, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, "alarm_intent":Landroid/content/Intent;
    const-string v28, "wifiap_power_mode_alarm_option"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const/16 v28, 0x0

    const/high16 v29, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 210
    .local v20, "pending":Landroid/app/PendingIntent;
    const-string v28, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 211
    .local v7, "am":Landroid/app/AlarmManager;
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v14, v15, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 213
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 214
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 195
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v14    # "expireTime":J
    .end local v20    # "pending":Landroid/app/PendingIntent;
    .end local v21    # "pluggedType":I
    .end local v23    # "powermode_value":I
    :catch_0
    move-exception v10

    .line 196
    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v21, 0x0

    .restart local v21    # "pluggedType":I
    goto/16 :goto_3

    .line 216
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v23    # "powermode_value":I
    :cond_10
    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v28, :cond_11

    .line 217
    new-instance v6, Landroid/content/Intent;

    const-string v28, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string v28, "wifiap_power_mode_alarm_option"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const/16 v28, 0x0

    const/high16 v29, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 221
    .restart local v20    # "pending":Landroid/app/PendingIntent;
    const-string v28, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 222
    .restart local v7    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 224
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v20    # "pending":Landroid/app/PendingIntent;
    :cond_11
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 227
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v21    # "pluggedType":I
    .end local v23    # "powermode_value":I
    :cond_12
    const/16 v28, 0x4

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 228
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v28, :cond_0

    .line 230
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 233
    :cond_13
    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 234
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "ALARM_EXPIRE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 236
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 237
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 240
    const-string v28, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PowerManager;

    .line 241
    .local v22, "pm":Landroid/os/PowerManager;
    const/16 v28, 0x1

    const-string v29, "MobileAPCloseService"

    move-object/from16 v0, v22

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    .line 243
    .local v16, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    :goto_4
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 250
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v25

    .line 251
    .local v25, "wifiApState":I
    const/16 v26, 0x0

    .line 252
    .local v26, "wifiSavedState":I
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v23

    .line 254
    .restart local v23    # "powermode_value":I
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 255
    .local v17, "msg":Landroid/os/Message;
    const/16 v28, 0x3

    move/from16 v0, v28

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 256
    const/16 v18, 0x0

    .line 258
    .local v18, "num":I
    :try_start_3
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v18

    .line 262
    :goto_5
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "powermode_value = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v18, :cond_16

    const/16 v28, 0xd

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    if-eqz v23, :cond_16

    .line 264
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "--> ap disable"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 266
    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 267
    const v28, 0x7f0e0446

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 269
    :cond_14
    const-string v28, "ATT"

    sget-object v29, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 270
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    .line 272
    :cond_15
    :try_start_4
    const-string v28, "wifi_saved_state"

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v26

    .line 276
    :goto_6
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 278
    const-wide/16 v28, 0x258

    :try_start_5
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 282
    :goto_7
    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 283
    const-string v28, "wifi_saved_state"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    :cond_16
    if-eqz v16, :cond_0

    .line 289
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 290
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 244
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "num":I
    .end local v23    # "powermode_value":I
    .end local v25    # "wifiApState":I
    .end local v26    # "wifiSavedState":I
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v10

    .line 245
    .local v10, "e":Ljava/lang/Throwable;
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 259
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v17    # "msg":Landroid/os/Message;
    .restart local v18    # "num":I
    .restart local v23    # "powermode_value":I
    .restart local v25    # "wifiApState":I
    .restart local v26    # "wifiSavedState":I
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v10

    .line 260
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 279
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v10

    .line 280
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 291
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v10

    .line 292
    .local v10, "e":Ljava/lang/Throwable;
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cannot release wake lock ~~"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v16    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "num":I
    .end local v22    # "pm":Landroid/os/PowerManager;
    .end local v23    # "powermode_value":I
    .end local v25    # "wifiApState":I
    .end local v26    # "wifiSavedState":I
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_17
    const/16 v28, 0x2

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 296
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "ALARM_STOP"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v28, :cond_0

    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v28, :cond_0

    .line 298
    new-instance v6, Landroid/content/Intent;

    const-string v28, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string v28, "wifiap_power_mode_alarm_option"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const/16 v28, 0x0

    const/high16 v29, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 301
    .restart local v20    # "pending":Landroid/app/PendingIntent;
    const-string v28, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 302
    .restart local v7    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 303
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 306
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v19    # "option":I
    .end local v20    # "pending":Landroid/app/PendingIntent;
    :cond_18
    const-string v28, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 307
    const-string v28, "wifiap_plug_state_changed_option"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 308
    .restart local v19    # "option":I
    if-nez v19, :cond_19

    .line 309
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "Unplugged"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 311
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v25

    .line 312
    .restart local v25    # "wifiApState":I
    const/16 v28, 0xd

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    sget v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v28, :cond_0

    .line 313
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 316
    .end local v25    # "wifiApState":I
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_19
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "Plugged"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v28, :cond_0

    sget-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v28, :cond_0

    .line 318
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 321
    .end local v19    # "option":I
    :cond_1a
    const-string v28, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 322
    const-string v28, "NUM"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 323
    .local v4, "ClientNum":I
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-gez v4, :cond_1b

    .line 325
    const/4 v4, 0x0

    .line 328
    :cond_1b
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 329
    sget v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v28

    if-le v4, v0, :cond_1e

    .line 330
    sget-object v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v29, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1c
    :goto_8
    if-nez v4, :cond_1f

    sget v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v28, :cond_1f

    .line 338
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 342
    :cond_1d
    :goto_9
    sput v4, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 331
    :cond_1e
    sget v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v28

    if-ge v4, v0, :cond_1c

    .line 332
    sget-object v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v29, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 339
    :cond_1f
    if-lez v4, :cond_1d

    .line 340
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_9

    .line 343
    .end local v4    # "ClientNum":I
    :cond_20
    const-string v28, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 344
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 345
    :cond_21
    const-string v28, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 346
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 348
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 349
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 351
    const-wide/16 v28, 0x258

    :try_start_7
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 355
    :goto_a
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 356
    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 352
    :catch_5
    move-exception v10

    .line 353
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 358
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_22
    const-string v28, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 359
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 361
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 362
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 363
    .restart local v17    # "msg":Landroid/os/Message;
    const/16 v28, 0xc5

    move/from16 v0, v28

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 364
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 365
    .end local v17    # "msg":Landroid/os/Message;
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    :cond_23
    const-string v28, "reset_provider"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 367
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "wifi_ap_wifi_sharing"

    const/16 v30, 0xa

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "WIFI_AP_WIFI_SHARING provider value after putting 10"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "wifi_ap_wifi_sharing"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 369
    :catch_6
    move-exception v11

    .line 370
    .local v11, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error in putting off provider value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    .end local v11    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_24
    const-string v28, "enable_provider"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 373
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "vzw calling enable method "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-boolean v30, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-boolean v28, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v28, :cond_0

    .line 375
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 376
    .local v13, "mManager":Landroid/net/wifi/WifiManager;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/net/wifi/WifiManager;->enableWifiSharing(Z)Z

    goto/16 :goto_0

    .line 378
    .end local v13    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_25
    const-string v28, "disable_provider"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_26

    .line 379
    const-string v28, "WifiApBroadcastReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "vzw calling disable method "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-boolean v30, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-boolean v28, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v28, :cond_0

    .line 381
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 382
    .restart local v13    # "mManager":Landroid/net/wifi/WifiManager;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/net/wifi/WifiManager;->enableWifiSharing(Z)Z

    goto/16 :goto_0

    .line 384
    .end local v13    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_26
    const-string v28, "com.samsung.intent.action.START_PROVISIONING"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 386
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 387
    const-string v28, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 388
    .restart local v13    # "mManager":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()Z

    move-result v28

    if-nez v28, :cond_0

    .line 389
    const-string v28, "WifiApBroadcastReceiver"

    const-string v29, "Start provisioning Wifi Sharing"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v28, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 273
    .end local v13    # "mManager":Landroid/net/wifi/WifiManager;
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .restart local v17    # "msg":Landroid/os/Message;
    .restart local v18    # "num":I
    .restart local v19    # "option":I
    .restart local v22    # "pm":Landroid/os/PowerManager;
    .restart local v23    # "powermode_value":I
    .restart local v25    # "wifiApState":I
    .restart local v26    # "wifiSavedState":I
    .restart local v27    # "wm":Landroid/net/wifi/WifiManager;
    :catch_7
    move-exception v28

    goto/16 :goto_6

    .line 123
    .end local v16    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "num":I
    .end local v19    # "option":I
    .end local v22    # "pm":Landroid/os/PowerManager;
    .end local v23    # "powermode_value":I
    .end local v25    # "wifiApState":I
    .end local v26    # "wifiSavedState":I
    .end local v27    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v8    # "apState":I
    :catch_8
    move-exception v28

    goto/16 :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0e0465

    const/4 v6, 0x0

    .line 430
    const v1, 0x108008a

    .line 431
    .local v1, "icon":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "title":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 436
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 437
    .local v2, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 439
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 440
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 441
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 442
    return-void
.end method
