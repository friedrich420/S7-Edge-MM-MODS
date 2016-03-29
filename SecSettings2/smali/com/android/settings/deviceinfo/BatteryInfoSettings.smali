.class public Lcom/android/settings/deviceinfo/BatteryInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryCapacity:Landroid/preference/Preference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryLife:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mFccId:Landroid/preference/Preference;

.field private mRated:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/android/settings/deviceinfo/BatteryInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings/deviceinfo/BatteryInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings$1;-><init>(Lcom/android/settings/deviceinfo/BatteryInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/BatteryInfoSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/BatteryInfoSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getBatteryLife()I

    move-result v0

    return v0
.end method

.method private static getBatteryLife()I
    .locals 7

    .prologue
    .line 166
    const-string v0, "/sys/class/power_supply/battery/fg_asoc"

    .line 168
    .local v0, "BATTER_LIFE_SYSFS_PATH":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "battery_life":I
    const/4 v2, 0x0

    .line 172
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 178
    if-eqz v3, :cond_0

    .line 179
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 184
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v1

    .line 181
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 183
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 175
    :catch_1
    move-exception v4

    .line 178
    :goto_1
    if-eqz v2, :cond_1

    .line 179
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 181
    :catch_2
    move-exception v4

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v4

    .line 178
    :goto_2
    if-eqz v2, :cond_2

    .line 179
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :cond_2
    :goto_3
    throw v4

    .line 181
    :catch_3
    move-exception v5

    goto :goto_3

    .line 177
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 175
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v6, 0x7f080022

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->addPreferencesFromResource(I)V

    .line 91
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLevel:Landroid/preference/Preference;

    .line 92
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    .line 93
    const-string v6, "battery_life"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    .line 96
    invoke-static {}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getBatteryLife()I

    move-result v1

    .line 97
    .local v1, "battery_life":I
    const-string v6, "BatteryInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "battery life : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-nez v6, :cond_1

    .line 99
    :cond_0
    const-string v6, "battery_life"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 111
    :goto_0
    const-string v6, "fcc_id"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mFccId:Landroid/preference/Preference;

    .line 112
    const-string v6, "rated_value"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mRated:Landroid/preference/Preference;

    .line 113
    const-string v6, "battery_capacity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryCapacity:Landroid/preference/Preference;

    .line 115
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "fccId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "ratedValue":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BATTERY_CAPACITY"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "batteryCapa":Ljava/lang/String;
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "productName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 120
    const-string v6, "fcc_id"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 131
    :goto_1
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 132
    const-string v6, "rated_value"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 136
    :goto_2
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 137
    const-string v6, "battery_capacity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 141
    :goto_3
    return-void

    .line 101
    .end local v0    # "batteryCapa":Ljava/lang/String;
    .end local v2    # "fccId":Ljava/lang/String;
    .end local v4    # "productName":Ljava/lang/String;
    .end local v5    # "ratedValue":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x50

    if-lt v1, v6, :cond_2

    .line 102
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v7, 0x7f0e154a

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 103
    :cond_2
    const/16 v6, 0x32

    if-lt v1, v6, :cond_3

    .line 104
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v7, 0x7f0e154b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v7, 0x7f0e154c

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 121
    .restart local v0    # "batteryCapa":Ljava/lang/String;
    .restart local v2    # "fccId":Ljava/lang/String;
    .restart local v4    # "productName":Ljava/lang/String;
    .restart local v5    # "ratedValue":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "a3x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "a5x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "a7x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 123
    :cond_5
    const-string v6, "fcc_id"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e155f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "fccIdStr":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/Utils;->hasDSModelNumberInOneAP(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFccIDDualSimSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 127
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mFccId:Landroid/preference/Preference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 129
    :cond_7
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mFccId:Landroid/preference/Preference;

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 134
    .end local v3    # "fccIdStr":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mRated:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 139
    :cond_9
    iget-object v6, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryCapacity:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method
