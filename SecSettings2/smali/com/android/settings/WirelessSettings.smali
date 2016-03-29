.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mTetheredDataML:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEthernetStateReceiver:Landroid/database/ContentObserver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNearbyScanning:Landroid/preference/PreferenceScreen;

.field private mNearbyScanningObserver:Landroid/database/ContentObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

.field private mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

.field private mSmartBonding:Landroid/preference/PreferenceScreen;

.field private mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mTetheredData:I

.field private mTetheringSettings:Landroid/preference/PreferenceScreen;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/WirelessSettings;->DBG:Z

    .line 116
    sput v1, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    .line 707
    new-instance v0, Lcom/android/settings/WirelessSettings$6;

    invoke-direct {v0}, Lcom/android/settings/WirelessSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/WirelessSettings;->mTetheredData:I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 144
    new-instance v0, Lcom/android/settings/WirelessSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 162
    new-instance v0, Lcom/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    .line 180
    new-instance v0, Lcom/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$3;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 273
    new-instance v0, Lcom/android/settings/WirelessSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$4;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 90
    sput p0, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 1
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    const/4 v0, 0x0

    .line 916
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private isHotspotTestMode()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 857
    const/4 v6, 0x0

    .line 858
    .local v6, "isTestMode":Z
    const/4 v8, 0x0

    .line 859
    .local v8, "testModeintent":Z
    const-string v12, "wifi"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 860
    .local v9, "wm":Landroid/net/wifi/WifiManager;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 861
    .local v7, "msg":Landroid/os/Message;
    const/16 v12, 0xbf

    iput v12, v7, Landroid/os/Message;->what:I

    .line 863
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-ne v12, v10, :cond_1

    .line 864
    const/4 v8, 0x1

    .line 869
    :goto_0
    sget-boolean v12, Lcom/android/settings/WirelessSettings;->DBG:Z

    if-eqz v12, :cond_4

    .line 870
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 871
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 872
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 875
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 878
    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v12, v5

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    const-string v12, "ATT_HOTSPOT"

    const/4 v13, 0x0

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 881
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-ne v12, v10, :cond_2

    move v6, v10

    :goto_2
    goto :goto_1

    .line 866
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    .restart local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_2
    move v6, v11

    .line 881
    goto :goto_2

    .line 888
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 889
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 897
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    move v11, v10

    :cond_6
    return v11

    .line 891
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 892
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 884
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 885
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 888
    if-eqz v1, :cond_4

    .line 889
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 891
    :catch_2
    move-exception v4

    .line 892
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 887
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 888
    :goto_5
    if-eqz v1, :cond_7

    .line 889
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 893
    :cond_7
    :goto_6
    throw v10

    .line 891
    :catch_3
    move-exception v4

    .line 892
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 887
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 884
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private registerForObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 903
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 701
    const v0, 0x7f0e0d74

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 309
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 692
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 693
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 696
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 697
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 314
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    const-string v19, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 318
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 320
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 321
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 323
    const-string v19, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 324
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    .line 328
    const v19, 0x7f0800ea

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 330
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 331
    .local v12, "myUserId":I
    if-eqz v12, :cond_19

    const/4 v8, 0x1

    .line 333
    .local v8, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 335
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v14

    .line 337
    .local v14, "nsValue":I
    if-eqz v8, :cond_1a

    .line 338
    const-string v19, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 348
    :cond_1
    :goto_1
    const-string v19, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 349
    const-string v19, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 353
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    .line 355
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 358
    .local v16, "toggleable":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string v20, "no_config_vpn"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 363
    :cond_3
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 364
    const-string v19, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 368
    :cond_4
    if-eqz v16, :cond_5

    const-string v19, "bluetooth"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 374
    :cond_5
    if-nez v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string v20, "no_config_mobile_networks"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 376
    :cond_6
    const-string v19, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 379
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "sSalesCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 381
    :cond_8
    const-string v19, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 384
    :cond_9
    const-string v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 385
    const-string v19, "media_share_category_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 386
    .local v13, "nearbyCategory":Landroid/preference/PreferenceCategory;
    const-string v19, "nearby_setting_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    .end local v13    # "nearbyCategory":Landroid/preference/PreferenceCategory;
    :cond_a
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 392
    .local v11, "msg":Landroid/os/Message;
    const/16 v19, 0x15

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->what:I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/WirelessSettings;->mTetheredData:I

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v19, v0

    sput v19, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    .line 396
    const-string v19, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    .line 397
    const-string v19, "connectivity"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 399
    .local v3, "cm":Landroid/net/ConnectivityManager;
    if-nez v8, :cond_b

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string v20, "no_config_tethering"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "SBM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 402
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_c
    :goto_2
    const-string v19, "WirelessSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KEY_TETHER_SETTINGS isSecondaryUser: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cm:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " wifi:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mTetherdData"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.ipsec.vpnclient"

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 427
    .local v6, "hasAdvVpn":Z
    if-eqz v6, :cond_1f

    .line 428
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 435
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "wfc_settings_holder_key"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 437
    .local v17, "wfcHolder":Landroid/preference/Preference;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 438
    if-nez v8, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 439
    const/16 v18, 0x0

    .line 442
    .local v18, "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f0800d9

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 444
    const-string v19, "wfc_settings_key"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getOrder()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setOrder(I)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v18    # "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/rcs/RcsUtils;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

    .line 461
    new-instance v19, Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "com.samsung.rcs"

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 464
    .local v7, "hasSecRcsPackage":Z
    if-nez v7, :cond_20

    .line 465
    const-string v19, "WirelessSettings"

    const-string v20, "RCS application is not installed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 472
    :goto_5
    const-string v19, "MTR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 478
    .local v9, "isSupportMirrorLink":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.samsung.android.app.mirrorlink"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    if-eqz v9, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    sget v19, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 487
    :cond_f
    const-string v19, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 494
    :cond_10
    :goto_6
    const-string v19, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_11

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v19

    if-nez v19, :cond_24

    .line 504
    const-string v19, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 513
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 514
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 515
    const-string v19, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 519
    :cond_13
    if-nez v8, :cond_14

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 521
    :cond_14
    const-string v19, "network_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 524
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v19

    if-nez v19, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v19

    if-eqz v19, :cond_17

    :cond_16
    if-eqz v8, :cond_25

    .line 526
    :cond_17
    const-string v19, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 533
    :cond_18
    :goto_8
    return-void

    .line 331
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "hasAdvVpn":Z
    .end local v7    # "hasSecRcsPackage":Z
    .end local v8    # "isSecondaryUser":Z
    .end local v9    # "isSupportMirrorLink":Z
    .end local v11    # "msg":Landroid/os/Message;
    .end local v14    # "nsValue":I
    .end local v15    # "sSalesCode":Ljava/lang/String;
    .end local v16    # "toggleable":Ljava/lang/String;
    .end local v17    # "wfcHolder":Landroid/preference/Preference;
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 340
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v8    # "isSecondaryUser":Z
    .restart local v14    # "nsValue":I
    :cond_1a
    const-string v19, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_1b

    const v19, 0x7f0e0e92

    :goto_9
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    :cond_1b
    const v19, 0x7f0e0e93

    goto :goto_9

    .line 406
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v15    # "sSalesCode":Ljava/lang/String;
    .restart local v16    # "toggleable":Ljava/lang/String;
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->isHotspotTestMode()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f0e074c

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f0e13ab

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 411
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f0e074b

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_1e

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_1e
    const/16 v19, 0x0

    goto :goto_a

    .line 430
    .restart local v6    # "hasAdvVpn":Z
    :cond_1f
    const-string v19, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 447
    .restart local v17    # "wfcHolder":Landroid/preference/Preference;
    .restart local v18    # "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v5

    .line 448
    .local v5, "exc":Ljava/lang/RuntimeException;
    const-string v19, "WirelessSettings"

    const-string v20, "cannot add WfcSwitchPreference"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 469
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    .end local v18    # "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v7    # "hasSecRcsPackage":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_5

    .line 479
    .restart local v9    # "isSupportMirrorLink":Z
    :catch_1
    move-exception v4

    .line 480
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v19, "WirelessSettings"

    const-string v20, "MirrorLink application is not installed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    const/4 v9, 0x0

    .line 483
    if-eqz v9, :cond_21

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    sget v19, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 487
    :cond_21
    const-string v19, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 483
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v19

    if-eqz v9, :cond_22

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_23

    sget v20, Lcom/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_23

    .line 487
    :cond_22
    const-string v20, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_23
    throw v19

    .line 506
    :cond_24
    const-string v19, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_7

    .line 527
    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 528
    const-string v19, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 529
    .local v10, "mbandLTE":Landroid/preference/PreferenceScreen;
    const v19, 0x7f0e0ff7

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 530
    const-string v19, "com.android.settings.GigaLteSettings"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 287
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/WirelessSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/WirelessSettings$5;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 683
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 688
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick: preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 15

    .prologue
    .line 537
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 539
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string v12, "no_config_tethering"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 540
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 545
    :cond_0
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string v12, "no_config_vpn"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 546
    const-string v11, "vpn_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 547
    const-string v11, "vpn_settings_for_att"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "nearby_scanning_enabled"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/settings/WirelessSettings;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 553
    const-string v11, "VZW"

    sget-object v12, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 554
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_e

    .line 555
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0e0503

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 563
    :cond_2
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string v12, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v13, "isVpnAllowed"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 564
    .local v0, "VpnAllowed":I
    const/4 v11, 0x1

    if-ne v0, v11, :cond_f

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 565
    .local v5, "isVpnAllowed":Ljava/lang/Boolean;
    const/4 v11, -0x1

    if-eq v0, v11, :cond_4

    .line 566
    const-string v11, "vpn_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 567
    const-string v11, "vpn_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 569
    :cond_3
    const-string v11, "vpn_settings_for_att"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 570
    const-string v11, "vpn_settings_for_att"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "VpnAllowed":I
    .end local v5    # "isVpnAllowed":Ljava/lang/Boolean;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 581
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v11, :cond_5

    .line 582
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v11}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onResume()V

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 589
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v12

    invoke-static {v1, v12}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 608
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "com.samsung.rcs"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 609
    .local v3, "hasSecRcsPackage":Z
    if-nez v3, :cond_11

    .line 610
    const-string v11, "WirelessSettings"

    const-string v12, "RCS application is not installed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v11}, Lcom/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 625
    :goto_4
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_toggleable_radios"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 628
    .local v10, "toggleable":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 629
    :cond_6
    const-string v11, "vpn_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_12

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 631
    :cond_7
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_8

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v8

    .line 633
    .local v8, "nsValue":I
    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;

    const/4 v11, 0x1

    if-ne v8, v11, :cond_13

    const v11, 0x7f0e0e92

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 636
    .end local v8    # "nsValue":I
    :cond_8
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_9

    .line 637
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->isNoSIM()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 638
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0e0e93

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 644
    :cond_9
    :goto_7
    const-string v11, "multi_path"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 645
    .local v7, "mMPTCP":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_a

    .line 646
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mptcp_value"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_16

    const v11, 0x7f0e0e92

    :goto_8
    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 650
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->registerForObserver()V

    .line 655
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v9, v11

    .line 656
    .local v9, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v13, "isWifiEnabled"

    invoke-static {v11, v12, v13, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 658
    .local v6, "isWiFiEnabled":I
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v13, "isCellularDataAllowed"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 661
    .local v4, "isCellularDataAllowed":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    if-nez v4, :cond_d

    .line 664
    :cond_c
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_d

    .line 665
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 670
    :cond_d
    return-void

    .line 557
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "hasSecRcsPackage":Z
    .end local v4    # "isCellularDataAllowed":I
    .end local v6    # "isWiFiEnabled":I
    .end local v7    # "mMPTCP":Landroid/preference/PreferenceScreen;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "toggleable":Ljava/lang/String;
    :cond_e
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0e0504

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 564
    .restart local v0    # "VpnAllowed":I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 574
    .end local v0    # "VpnAllowed":I
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 595
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_10
    const-string v11, "wifi_calling_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 614
    .restart local v3    # "hasSecRcsPackage":Z
    :cond_11
    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v11}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_4

    .line 629
    .restart local v10    # "toggleable":Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 633
    .restart local v8    # "nsValue":I
    :cond_13
    const v11, 0x7f0e0e93

    goto/16 :goto_6

    .line 640
    .end local v8    # "nsValue":I
    :cond_14
    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "smart_bonding"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_15

    const v11, 0x7f0e0e92

    :goto_9
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    :cond_15
    const v11, 0x7f0e0e93

    goto :goto_9

    .line 647
    .restart local v7    # "mMPTCP":Landroid/preference/PreferenceScreen;
    :cond_16
    const v11, 0x7f0e0e93

    goto :goto_8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 674
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_0
    return-void
.end method
