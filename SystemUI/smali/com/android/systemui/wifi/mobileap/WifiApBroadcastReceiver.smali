.class public Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;
    }
.end annotation


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final SUPPORTMOBILEAPWPSPBC:Z

.field private static final SUPPORTMOBILEAPWPSPIN:Z

.field static currentMccMnc:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field private static mIsBootComplete:Z

.field public static mIsForegroundWifiSettings:Z

.field static mPingThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 39
    sput-boolean v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 40
    sput-boolean v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    .line 66
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    .line 68
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPIN:Z

    .line 69
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    return-void

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 384
    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const-string v3, "SystemUI_WifiApBroadcastReceiver"

    const-string v4, "getRvfMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "mRvfMode":I
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 303
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 304
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 305
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 306
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 308
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 313
    const-string v3, "SystemUI_WifiApBroadcastReceiver"

    const-string v4, "Returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return v1

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 316
    const-string v1, "SystemUI_WifiApBroadcastReceiver"

    const-string v3, "Returning false"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 317
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getting provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 322
    goto :goto_0
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    const-string v6, "SystemUI_WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 239
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "extra_type":I
    const-string v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, "req_type":I
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 243
    .local v5, "wifiApState":I
    const/4 v6, 0x4

    if-ne p2, v6, :cond_4

    .line 245
    if-nez v2, :cond_1

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 288
    .end local v5    # "wifiApState":I
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local v5    # "wifiApState":I
    :cond_1
    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    add-int v6, v0, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    .line 274
    :cond_2
    :goto_1
    const-string v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 275
    .local v4, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v4, :cond_3

    .line 276
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 278
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v3, "startDialogIntent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    const-string v6, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    .end local v3    # "startDialogIntent":Landroid/content/Intent;
    .end local v4    # "statusBar":Landroid/app/StatusBarManager;
    :cond_4
    const/4 v6, 0x5

    if-ne p2, v6, :cond_5

    .line 253
    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 256
    :cond_5
    const/16 v6, 0x32

    if-ne p2, v6, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 259
    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    .line 261
    const-string v6, "SystemUI_WifiApBroadcastReceiver"

    const-string v7, "Wifi AP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_6
    const/16 v6, 0xc

    if-eq v5, v6, :cond_7

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 269
    :cond_7
    const-string v6, "SystemUI_WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_1
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    sget-boolean v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "wifiApIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    .end local v0    # "wifiApIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getClientInfo(Landroid/content/Context;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 336
    const-string v13, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "staList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 338
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 339
    .local v11, "tok":[Ljava/lang/String;
    array-length v12, v11

    .line 342
    .local v12, "tokLength":I
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    const-string v14, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v13, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x2000

    invoke-direct {v2, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufReadLine":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 344
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "dhcpLeaseInfo":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    .line 346
    array-length v13, v5

    const/4 v14, 0x4

    if-lt v13, v14, :cond_1

    const/4 v13, 0x0

    aget-object v13, v5, v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    aget-object v13, v5, v13

    if-eqz v13, :cond_1

    const/4 v13, 0x2

    aget-object v13, v5, v13

    if-eqz v13, :cond_1

    const/4 v13, 0x3

    aget-object v13, v5, v13

    if-eqz v13, :cond_1

    .line 348
    if-ge v7, v12, :cond_1

    aget-object v13, v11, v7

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    aget-object v13, v5, v13

    aget-object v14, v11, v7

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 350
    const/4 v13, 0x3

    aget-object v13, v5, v13

    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 351
    const-string v4, "deviceName"

    .line 355
    .local v4, "deviceName":Ljava/lang/String;
    :goto_1
    aget-object v13, v11, v7

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "mac":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v8, v5, v13

    .line 357
    .local v8, "ip":Ljava/lang/String;
    sget-object v13, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-direct {v14, p0, v8, v9}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;-><init>(Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v8    # "ip":Ljava/lang/String;
    .end local v9    # "mac":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 353
    :cond_2
    const/4 v13, 0x3

    aget-object v4, v5, v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v4    # "deviceName":Ljava/lang/String;
    goto :goto_1

    .line 368
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v5    # "dhcpLeaseInfo":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 369
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v1, v2

    .line 374
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return-void

    .line 370
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 371
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 373
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 362
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 363
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    if-eqz v1, :cond_5

    .line 369
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 370
    :catch_2
    move-exception v6

    .line 371
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 364
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 365
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    if-eqz v1, :cond_5

    .line 369
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 370
    :catch_4
    move-exception v6

    .line 371
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 367
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 368
    :goto_5
    if-eqz v1, :cond_6

    .line 369
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 372
    :cond_6
    :goto_6
    throw v13

    .line 370
    :catch_5
    move-exception v6

    .line 371
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 367
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 364
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 362
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "action":Ljava/lang/String;
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onReceive: action "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez v5, :cond_1

    .line 80
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    const-string v24, "action is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v23, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 85
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    .line 88
    :cond_2
    const-string v23, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 90
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 91
    .local v12, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 92
    .local v15, "msg":Landroid/os/Message;
    const/16 v23, 0x4d

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 93
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v6, "args":Landroid/os/Bundle;
    const-string v23, "feature"

    const-string v24, "HOTS"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v23, "extra"

    const-string v24, "Hotspot_conn"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object v6, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    invoke-virtual {v12, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 99
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    const-string v24, "onReceive: WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v12    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_3
    const-string v23, "com.samsung.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 101
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :cond_4
    const-string v23, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, "com.samsung.android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 103
    :cond_5
    const-string v23, "SPRINT"

    sget-object v24, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 104
    const-string v23, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 105
    const-string v23, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "mipErrorCode":Ljava/lang/String;
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mipErrorCode : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz v14, :cond_0

    const-string v23, "67"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 108
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 109
    .end local v14    # "mipErrorCode":Ljava/lang/String;
    :cond_6
    const-string v23, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 110
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 112
    :cond_7
    sget-boolean v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v23, :cond_8

    const-string v23, "Provisioning.disable"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 113
    :cond_8
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    :cond_9
    const-string v23, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 117
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 118
    :cond_a
    const-string v23, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 120
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 121
    const/16 v23, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    :cond_b
    const-string v23, "req_type"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v23, "extra_type"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v23, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 128
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    const-string v24, "onReceive: WIFIAP_ENABLE_WARNING"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    :cond_d
    const-string v23, "SPRINT"

    sget-object v24, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    const-string v23, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 131
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 132
    .local v22, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    .line 133
    .local v20, "wifiApState":I
    const/16 v23, 0xc

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    const/16 v23, 0xd

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 135
    :cond_e
    const-string v23, "phoneName"

    const/16 v24, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 136
    .local v18, "phoneType":I
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Receive android.intent.action.RADIO_TECHNOLOGY, phoneType = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 138
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string v23, "phone"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 139
    .local v17, "phone":Lcom/android/internal/telephony/ITelephony;
    const/16 v13, 0xa

    .line 142
    .local v13, "maxClientNum":I
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 143
    :try_start_0
    const-string v23, "chameleon_gsmmaxuser"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 158
    :cond_f
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_11

    .line 161
    :goto_2
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "maxClientNum = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 164
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0xe

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 165
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v7, "b":Landroid/os/Bundle;
    const-string v23, "maxClient"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iput-object v7, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 144
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 150
    :try_start_1
    const-string v23, "chameleon_maxuser"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    goto :goto_1

    .line 154
    :catch_0
    move-exception v9

    .line 155
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v13, 0xa

    goto :goto_1

    .line 160
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_2

    .line 171
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "maxClientNum":I
    .end local v17    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v18    # "phoneType":I
    .end local v20    # "wifiApState":I
    .end local v22    # "wm":Landroid/net/wifi/WifiManager;
    :cond_12
    sget-boolean v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v23, :cond_13

    const-string v23, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 172
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 173
    :cond_13
    sget-object v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    if-eqz v23, :cond_14

    sget-object v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string v24, "turn off"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const-string v23, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 174
    sget-boolean v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    if-eqz v23, :cond_0

    .line 177
    const-string v23, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 178
    .local v19, "szSimState":Ljava/lang/String;
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Recieve Sim State Changed : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v23, "IMSI"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 180
    const-string v23, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 181
    .local v11, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 182
    .restart local v22    # "wm":Landroid/net/wifi/WifiManager;
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ,  new = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    .line 185
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 187
    .end local v11    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v19    # "szSimState":Ljava/lang/String;
    .end local v22    # "wm":Landroid/net/wifi/WifiManager;
    :cond_14
    const-string v23, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    const-string v23, "ATT"

    sget-object v24, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 189
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 190
    .restart local v22    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 191
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 192
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    const-string v24, "Mobile AP turned off"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    .end local v22    # "wm":Landroid/net/wifi/WifiManager;
    :cond_15
    const-string v23, "com.samsung.intent.action.PROVISION_DIALOG_DISMISSED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 198
    const/16 v21, 0x0

    .line 200
    .local v21, "wifiSavedState":I
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "wifi_saved_state"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    .line 204
    :goto_3
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 205
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    const-string v24, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 207
    .restart local v22    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "wifi_saved_state"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 201
    .end local v22    # "wm":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v9

    .line 202
    .restart local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    const-string v24, "SettingNotFoundException"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 210
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v21    # "wifiSavedState":I
    :cond_16
    const-string v23, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 211
    sget-boolean v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v23, :cond_0

    .line 212
    const-string v23, "NUM"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 213
    .local v4, "ClientNum":I
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MHSPing WIFI_AP_STA_STATUS_CHANGED_ACTION ClientNum "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v16, "/sdcard/mhspingstop"

    .line 215
    .local v16, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 217
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MHSPing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is exist!!! pingClear"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0

    .line 220
    :cond_17
    const-string v23, "SystemUI_WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MHSPing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is NOT exist"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-lez v4, :cond_18

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingStart(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 225
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0

    .line 229
    .end local v4    # "ClientNum":I
    .end local v10    # "file":Ljava/io/File;
    .end local v16    # "path":Ljava/lang/String;
    :cond_19
    const-string v23, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 230
    sget-boolean v23, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v23, :cond_0

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0
.end method

.method public pingClear()V
    .locals 4

    .prologue
    .line 325
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHSPing pingClear() mPingThread size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 330
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-virtual {v1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->stopPing()V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    :cond_1
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public pingStart(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getClientInfo(Landroid/content/Context;I)V

    .line 377
    const-string v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHSPing pingStart() size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-virtual {v1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->start()V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method
