.class public Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;
.super Landroid/content/BroadcastReceiver;
.source "WifiIntentReciever.java"


# static fields
.field private static isWps:Z

.field private static mCountryChina:I

.field private static mSalesCodeCHM:I

.field private static prestate:Landroid/net/NetworkInfo$DetailedState;


# instance fields
.field private connMgr:Landroid/net/ConnectivityManager;

.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDoNotShow:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sput-object v0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    .line 39
    sput v1, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    .line 40
    sput v1, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private OnOffData(Z)V
    .locals 2
    .param p1, "mButton"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 206
    const-string v0, "ConnHandler "

    const-string v1, "The data service will be enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "ConnHandler "

    const-string v1, "ConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSIMCardReady(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "result":Z
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 231
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPrompt(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "isAirPlane":Z
    sget v7, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    if-ne v7, v8, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v2, v8

    .line 153
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isSIMCardReady(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    .line 156
    iget-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-nez v7, :cond_1

    .line 157
    sget v7, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    if-ne v7, v8, :cond_5

    .line 158
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mDoNotShow:Landroid/content/SharedPreferences;

    .line 159
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mBeforeValue:Landroid/content/SharedPreferences;

    .line 160
    iget-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string v10, "connhan_do_not_show"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    .local v0, "do_not_show_again":Z
    iget-object v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string v10, "connhan_value"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 162
    .local v3, "mValue":Z
    if-eqz v0, :cond_4

    .line 163
    const-string v7, "ConnHandler "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v3, :cond_3

    .line 165
    const-string v7, "ConnHandler "

    const-string v9, "Setted button is Connect"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->OnOffData(Z)V

    .line 202
    .end local v0    # "do_not_show_again":Z
    .end local v3    # "mValue":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v9

    .line 148
    goto :goto_0

    .line 168
    .restart local v0    # "do_not_show_again":Z
    .restart local v3    # "mValue":Z
    :cond_3
    const-string v7, "ConnHandler "

    const-string v8, "Setted button is Disconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->OnOffData(Z)V

    goto :goto_1

    .line 173
    :cond_4
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-direct {v4, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v4, "startIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    const/high16 v7, 0x2000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 178
    .end local v4    # "startIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "ConnHandler "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActivityNotFoundException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ConnHandler "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v0    # "do_not_show_again":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mValue":Z
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1371

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "strNotiToastWifiUnavailable":Ljava/lang/String;
    const-string v7, "ro.build.scafe.cream"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "white"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 189
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x103012b

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 191
    .local v6, "themeContext":Landroid/content/Context;
    invoke-static {v6, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 194
    .end local v6    # "themeContext":Landroid/content/Context;
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 48
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "Country"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "countryCode":Ljava/lang/String;
    const-string v13, "CHINA"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 50
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    .line 55
    .end local v5    # "countryCode":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "action":Ljava/lang/String;
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    .line 60
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "SalesCode"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "salesCode":Ljava/lang/String;
    const-string v13, "CHM"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 62
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    .line 68
    .end local v9    # "salesCode":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v13, "com.samsung.android.intent.action.WLAN_CHECK_WPS_OPERATION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 69
    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    .line 72
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 74
    .local v11, "value":I
    const-string v13, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 76
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v11, :cond_2

    .line 77
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 78
    .local v8, "msg":Landroid/os/Message;
    const/16 v13, 0xf

    iput v13, v8, Landroid/os/Message;->what:I

    .line 80
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, "args":Landroid/os/Bundle;
    const-string v14, "enable"

    sget-boolean v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    const-string v13, "ConnHandler "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WPS set KEY_WIFI_CONNECTION_TYPE acccording to the value of isWps = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v13

    if-eqz v13, :cond_2

    .line 86
    const-string v13, "ConnHandler "

    const-string v14, "KEY_WIFI_CONNECTION_TYPE config store error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "value":I
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_3
    return-void

    .line 52
    .restart local v5    # "countryCode":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    goto/16 :goto_0

    .line 64
    .end local v5    # "countryCode":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v9    # "salesCode":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    goto :goto_1

    .line 81
    .end local v9    # "salesCode":Ljava/lang/String;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v11    # "value":I
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 90
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "value":I
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 91
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 92
    .local v7, "mNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    .line 98
    .local v6, "currentState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v6, :cond_2

    .line 101
    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_7

    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_8

    :cond_7
    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_8
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_9

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_a

    .line 106
    :cond_9
    const-string v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "bssid":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 111
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->showPrompt(Landroid/content/Context;)V

    .line 112
    sput-object v6, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_3

    .line 113
    .end local v3    # "bssid":Ljava/lang/String;
    :cond_a
    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_b

    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_d

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_d

    :cond_b
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_c

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_d

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 118
    :cond_c
    const-string v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .restart local v3    # "bssid":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 123
    sput-object v6, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    .line 126
    .end local v3    # "bssid":Ljava/lang/String;
    :cond_d
    sput-object v6, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    .line 129
    .end local v6    # "currentState":Landroid/net/NetworkInfo$DetailedState;
    .end local v7    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_e
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const-string v13, "com.samsung.android.settings.WLAN_SSID_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, "connetiontype":I
    const/4 v13, 0x2

    if-ne v4, v13, :cond_2

    .line 135
    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v10, "startIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    const/high16 v13, 0x2000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method
