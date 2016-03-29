.class public Lcom/android/settings/GlobalRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GlobalRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonBackgroundData:Landroid/preference/SwitchPreference;

.field private mButtonDataRoaming:Landroid/preference/SwitchPreference;

.field private mButtonRoamingEnv:Landroid/preference/PreferenceScreen;

.field private mDirectCustomerService:Landroid/preference/Preference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingNetworkSettings:Landroid/preference/Preference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/android/settings/GlobalRoamingSettings$5;

    invoke-direct {v0}, Lcom/android/settings/GlobalRoamingSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/GlobalRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    new-instance v0, Lcom/android/settings/GlobalRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GlobalRoamingSettings$1;-><init>(Lcom/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/android/settings/GlobalRoamingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GlobalRoamingSettings$2;-><init>(Lcom/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/settings/GlobalRoamingSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/GlobalRoamingSettings$3;-><init>(Lcom/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/android/settings/GlobalRoamingSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/GlobalRoamingSettings$4;-><init>(Lcom/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/GlobalRoamingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/GlobalRoamingSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/GlobalRoamingSettings;->toogleBackgroundDataToast(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/GlobalRoamingSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/GlobalRoamingSettings;->toogleDataRoamingToast(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GlobalRoamingSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getDataRoamingState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 368
    sget-object v2, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private toggleBackgroundData(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 391
    const-string v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBackgroundData : enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 397
    return-void
.end method

.method private toggleDataRoaming(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 378
    sget-object v0, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    return-void

    .line 378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toogleBackgroundDataToast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 400
    sget-object v1, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x7f0e152c

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 404
    return-void

    .line 400
    :cond_0
    const v0, 0x7f0e152d

    goto :goto_0
.end method

.method private toogleDataRoamingToast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 385
    sget-object v0, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0e152a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    return-void
.end method

.method private updateCurrentRoamingNetwork()V
    .locals 11

    .prologue
    .line 283
    sget-object v9, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 284
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 286
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v9

    if-nez v9, :cond_2

    .line 287
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings/GlobalRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 288
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "operatorName":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "operator":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 292
    move-object v3, v6

    .line 293
    .local v3, "operatorFullName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 294
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "operatorMCC":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "operatorMNC":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .end local v4    # "operatorMCC":Ljava/lang/String;
    .end local v5    # "operatorMNC":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "operatorFullName":Ljava/lang/String;
    .end local v6    # "operatorName":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    iget-object v9, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x1f6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->finish()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 196
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 201
    :cond_1
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/settings/GlobalRoamingSettings;->addPreferencesFromResource(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e1269

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 203
    const-string v0, "button_data_roaming"

    invoke-virtual {p0, v0}, Lcom/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    .line 204
    const-string v0, "button_background_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;

    .line 205
    const-string v0, "button_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    .line 206
    const-string v0, "button_roaming_env"

    invoke-virtual {p0, v0}, Lcom/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonRoamingEnv:Landroid/preference/PreferenceScreen;

    .line 207
    const-string v0, "button_direct_call_customer_service"

    invoke-virtual {p0, v0}, Lcom/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mDirectCustomerService:Landroid/preference/Preference;

    .line 209
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 267
    sget-object v1, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 270
    sget-object v1, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    move-object v4, p2

    .line 311
    check-cast v4, Ljava/lang/Boolean;

    .line 312
    .local v4, "value":Ljava/lang/Boolean;
    const/4 v3, 0x1

    .line 314
    .local v3, "result":Z
    const-string v5, "button_data_roaming"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 315
    const-string v5, "GlobalRoaming"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    iget-object v5, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "i":Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/settings/GlobalRoamingSettings;->toggleDataRoaming(Z)V

    .line 322
    invoke-direct {p0, v8}, Lcom/android/settings/GlobalRoamingSettings;->toggleBackgroundData(Z)V

    goto :goto_0

    .line 324
    :cond_2
    const-string v5, "button_background_data"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    const-string v5, "GlobalRoaming"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange: mButtonBackgroundData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v1, Landroid/content/Intent;

    const-string v5, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "ENABLED"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    iget-object v6, p0, Lcom/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xc8

    :goto_1
    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const/16 v5, 0x12c

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    .line 337
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "key":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    sget-object v3, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "insertSimPopup":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e13d6

    invoke-virtual {p0, v3}, Lcom/android/settings/GlobalRoamingSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM"

    const-string v5, "USIM"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e13d7

    invoke-virtual {p0, v4}, Lcom/android/settings/GlobalRoamingSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    const-string v6, "USIM"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    const/4 v3, 0x1

    .line 361
    .end local v0    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :goto_0
    return v3

    .line 348
    :cond_1
    const-string v3, "button_direct_call_customer_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "+82234167010"

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    const-string v3, "RADDialOption"

    const-string v4, "korea"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    :cond_2
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/settings/GlobalRoamingSettings;->startActivity(Landroid/content/Intent;)V

    .line 361
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 356
    :cond_4
    const-string v3, "button_add_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://m.roaming.uplus.co.kr"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/GlobalRoamingSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 217
    sget-object v2, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_roaming"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GlobalRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    const v5, 0x7f0e152b

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 229
    :goto_0
    iget-object v5, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 232
    sget-object v2, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/GlobalRoamingSettings;->updateCurrentRoamingNetwork()V

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    sget-object v2, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    return-void

    .line 227
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    const v5, 0x7f0e152a

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 229
    goto :goto_1

    .line 236
    :cond_3
    sget-object v2, Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    .line 239
    .local v1, "rom":Landroid/app/enterprise/RoamingPolicy;
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 245
    .end local v1    # "rom":Landroid/app/enterprise/RoamingPolicy;
    :goto_3
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 240
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 243
    :cond_5
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 247
    :cond_6
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method
