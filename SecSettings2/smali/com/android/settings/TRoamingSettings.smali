.class public Lcom/android/settings/TRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;,
        Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;,
        Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;,
        Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;,
        Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;,
        Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mBackgroundData:Landroid/preference/SwitchPreference;

.field private mCustomerService:Landroid/preference/Preference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mGuide:Landroid/preference/Preference;

.field private mHDVoiceRoaming:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJoinCancel:Landroid/preference/Preference;

.field private mMobileTRoaming:Landroid/preference/Preference;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRoamingAutoDial:Landroid/preference/Preference;

.field private mSelection:Landroid/preference/Preference;

.field private mUseDataRoaming:Landroid/preference/SwitchPreference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;

.field private mUseLTERoaming:Landroid/preference/SwitchPreference;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;

.field rtsStatusValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 837
    new-instance v0, Lcom/android/settings/TRoamingSettings$10;

    invoke-direct {v0}, Lcom/android/settings/TRoamingSettings$10;-><init>()V

    sput-object v0, Lcom/android/settings/TRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/TRoamingSettings;->rtsStatusValue:I

    .line 130
    new-instance v0, Lcom/android/settings/TRoamingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TRoamingSettings$1;-><init>(Lcom/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    .line 159
    new-instance v0, Lcom/android/settings/TRoamingSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TRoamingSettings$2;-><init>(Lcom/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v0, Lcom/android/settings/TRoamingSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TRoamingSettings$3;-><init>(Lcom/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 563
    new-instance v0, Lcom/android/settings/TRoamingSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/TRoamingSettings$7;-><init>(Lcom/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 825
    new-instance v0, Lcom/android/settings/TRoamingSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/TRoamingSettings$9;-><init>(Lcom/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TRoamingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/TRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/TRoamingSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TRoamingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/TRoamingSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/TRoamingSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/TRoamingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isRestrictBackgroundEnabled()Z

    move-result v0

    return v0
.end method

.method private getNetworkStateAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 577
    sget-object v7, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 578
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 579
    .local v2, "networkInfo_wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 580
    .local v1, "networkInfo_data":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 581
    .local v4, "networkState_wifi":Landroid/net/NetworkInfo$State;
    :goto_0
    if-nez v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 583
    .local v3, "networkState_mobile":Landroid/net/NetworkInfo$State;
    :goto_1
    const-string v7, "TRoamingSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWifistate : networkState_wifi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  networkState_mobile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v7, :cond_1

    :cond_0
    move v5, v6

    .line 588
    :cond_1
    return v5

    .line 580
    .end local v3    # "networkState_mobile":Landroid/net/NetworkInfo$State;
    .end local v4    # "networkState_wifi":Landroid/net/NetworkInfo$State;
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    goto :goto_0

    .line 581
    .restart local v4    # "networkState_wifi":Landroid/net/NetworkInfo$State;
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    goto :goto_1
.end method

.method private isInDomestic()Z
    .locals 4

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, "bRetVal":Z
    sget-object v2, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 376
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 380
    :cond_0
    return v0
.end method

.method private final isLTERoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_roaming_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 427
    .local v0, "result":Z
    :cond_0
    const-string v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLTERoamingEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0
.end method

.method private final isNetworkRegistered()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    const-string v5, "ril.skt.network_regist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "rilTemp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 404
    const-string v5, ";"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "rtsValues":[Ljava/lang/String;
    aget-object v5, v1, v3

    const-string v6, "Status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "statusValue":[Ljava/lang/String;
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/settings/TRoamingSettings;->rtsStatusValue:I

    .line 407
    const-string v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtsStatusValue Value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/TRoamingSettings;->rtsStatusValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget v5, p0, Lcom/android/settings/TRoamingSettings;->rtsStatusValue:I

    if-eq v5, v4, :cond_0

    iget v5, p0, Lcom/android/settings/TRoamingSettings;->rtsStatusValue:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    :cond_0
    move v3, v4

    .line 415
    .end local v1    # "rtsValues":[Ljava/lang/String;
    .end local v2    # "statusValue":[Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private final isRestrictBackgroundEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_powersaving_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 433
    .local v0, "result":Z
    :cond_0
    const-string v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestrictBackgroundEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v0
.end method

.method private final isRoamingDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 421
    .local v0, "result":Z
    :cond_0
    const-string v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamingDataEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v0
.end method

.method private updateCurrentRoaming()V
    .locals 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 337
    const-string v11, "key_roaming_current"

    invoke-virtual {p0, v11}, Lcom/android/settings/TRoamingSettings;->removePreference(Ljava/lang/String;)V

    .line 339
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/settings/TRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 340
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "operatorName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "operator":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isNetworkRegistered()Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 344
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 345
    move-object v3, v6

    .line 346
    .local v3, "operatorFullName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 347
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "operatorMCC":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "operatorMNC":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .end local v4    # "operatorMCC":Ljava/lang/String;
    .end local v5    # "operatorMNC":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {v11, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    .end local v3    # "operatorFullName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "data_roaming"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "dataRoamingValue":I
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lte_roaming_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 359
    .local v1, "lteRoamingValue":I
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hd_voice_roaming_enabled"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 360
    .local v8, "volteRoamingValue":I
    const-string v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KKK updateCurrentRoaming dataRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KKK updateCurrentRoaming lteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KKK updateCurrentRoaming volteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v11, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 364
    iget-object v11, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 365
    iget-object v11, p0, Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "hd_voice_roaming_enabled"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v9, :cond_3

    :goto_1
    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 366
    iget-object v9, p0, Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 367
    return-void

    .line 355
    .end local v0    # "dataRoamingValue":I
    .end local v1    # "lteRoamingValue":I
    .end local v8    # "volteRoamingValue":I
    :cond_2
    iget-object v11, p0, Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v0    # "dataRoamingValue":I
    .restart local v1    # "lteRoamingValue":I
    .restart local v8    # "volteRoamingValue":I
    :cond_3
    move v9, v10

    .line 365
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x1fb

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->finish()V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    .line 197
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 202
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->addPreferencesFromResource(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 205
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v1, "key_roaming_selection"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    .line 206
    const-string v1, "key_roaming_use_data_roaming"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    .line 207
    const-string v1, "key_roaming_use_lte_roaming"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    .line 208
    const-string v1, "key_roaming_background_data"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    .line 209
    const-string v1, "key_roaming_hd_voice_roaming"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    .line 210
    const-string v1, "key_roaming_auto_dial"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    .line 211
    const-string v1, "key_roaming_guide"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    .line 212
    const-string v1, "key_roaming_join_cancel"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    .line 213
    const-string v1, "key_roaming_mobile_t"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    .line 214
    const-string v1, "key_roaming_customer_service"

    invoke-virtual {p0, v1}, Lcom/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    .line 216
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e1269

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_c

    .line 235
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoDial()Z

    move-result v1

    if-nez v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-nez v1, :cond_7

    .line 245
    :cond_6
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 249
    :cond_8
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_9
    if-eqz p1, :cond_a

    .line 252
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    const-string v2, "mUseDataRoaming"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 254
    :cond_a
    return-void

    .line 222
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e14f7

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 237
    :cond_c
    sget-object v1, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 310
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    sget-object v1, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 325
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    .line 328
    :cond_1
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .line 441
    check-cast v2, Ljava/lang/Boolean;

    .line 442
    .local v2, "value":Ljava/lang/Boolean;
    const-string v5, "key_roaming_use_data_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 443
    const-string v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "data_roaming"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    :cond_0
    :goto_0
    return v4

    .line 448
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "i":Landroid/content/Intent;
    sget-object v3, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 452
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 454
    :cond_3
    const-string v5, "key_roaming_use_lte_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 455
    const-string v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange: mUseLTERoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    invoke-static {p0}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->show(Lcom/android/settings/TRoamingSettings;)V

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lte_roaming_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 461
    :cond_5
    const-string v5, "key_roaming_background_data"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 462
    const-string v3, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange: mBackgroundData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/TRoamingSettings;->setRestrictBackground(Z)V

    goto :goto_0

    .line 465
    :cond_6
    const-string v5, "key_roaming_hd_voice_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    const-string v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange: mHDVoiceRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hd_voice_roaming_enabled"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    .line 475
    if-nez p2, :cond_1

    .line 476
    const-string v6, "TRoamingSettings"

    const-string v7, "preference is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    :goto_0
    return v8

    .line 479
    :cond_1
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 481
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 485
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 490
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 492
    invoke-static {p0}, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Lcom/android/settings/TRoamingSettings;)V

    goto :goto_0

    .line 494
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.RoamingAutoDialSettings"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 499
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 500
    :catch_1
    move-exception v2

    .line 501
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 506
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 508
    .local v3, "guideIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 509
    :catch_2
    move-exception v2

    .line 510
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 512
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "guideIntent":Landroid/content/Intent;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 514
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    .local v5, "joinCancelIntent":Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 517
    :catch_3
    move-exception v2

    .line 518
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 520
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "joinCancelIntent":Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 521
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->getNetworkStateAvailable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 522
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "http://m.troaming.co.kr"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 524
    .restart local v5    # "joinCancelIntent":Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 525
    :catch_4
    move-exception v2

    .line 526
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 529
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "joinCancelIntent":Landroid/content/Intent;
    :cond_7
    invoke-static {p0}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Lcom/android/settings/TRoamingSettings;)V

    goto/16 :goto_0

    .line 531
    :cond_8
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 532
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e14f8

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 534
    const v6, 0x7f0e14f9

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 535
    const v6, 0x7f0e136f

    new-instance v7, Lcom/android/settings/TRoamingSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/TRoamingSettings$4;-><init>(Lcom/android/settings/TRoamingSettings;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/TRoamingSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/TRoamingSettings$5;-><init>(Lcom/android/settings/TRoamingSettings;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    new-instance v6, Lcom/android/settings/TRoamingSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/TRoamingSettings$6;-><init>(Lcom/android/settings/TRoamingSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 265
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "simState":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_roaming_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v0, "intFltr":Landroid/content/IntentFilter;
    const-string v3, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v3, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    sget-object v3, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    .line 278
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    .line 280
    .local v1, "rom":Landroid/app/enterprise/RoamingPolicy;
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 281
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 284
    .end local v1    # "rom":Landroid/app/enterprise/RoamingPolicy;
    :cond_0
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 291
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 293
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 296
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 297
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 299
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v3

    if-nez v3, :cond_5

    .line 300
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 302
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 303
    :cond_6
    const-string v3, "TRoamingSettings"

    const-string v4, "KKK onResume !isRoamingDataEnabled() || !isLTERoamingEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v3, p0, Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 306
    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    const-string v0, "mUseDataRoaming"

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 9
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 807
    .local v0, "context":Landroid/content/Context;
    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 808
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    move v2, p1

    .line 809
    .local v2, "mRestrictBackground":Z
    const-string v6, ""

    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0160

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    .line 810
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 811
    iget-object v6, p0, Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 812
    sget-object v6, Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_powersaving_mode"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 813
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings/TRoamingSettings$8;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/TRoamingSettings$8;-><init>(Lcom/android/settings/TRoamingSettings;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 822
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 823
    return-void

    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    move v4, v5

    .line 812
    goto :goto_0
.end method
