.class public Lcom/android/settings/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;,
        Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mEnablePrl:Z


# instance fields
.field private mDisplaySystemUpdateMenu:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEKM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

.field private mInstallTimeReceiver:Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;

.field private mNoChargeFota:Z

.field private mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

.field private mScheduledUpdatePref:Landroid/preference/Preference;

.field private mSoftwareUpdatePref:Landroid/preference/Preference;

.field private mWifiDedicated:Z

.field private mWifiOnlyPref:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    .line 603
    new-instance v0, Lcom/android/settings/SoftwareUpdateSettings$2;

    invoke-direct {v0}, Lcom/android/settings/SoftwareUpdateSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    .line 120
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    .line 122
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/Preference;

    .line 124
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    .line 125
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mInstallTimeReceiver:Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;

    .line 133
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 135
    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEKM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    .line 142
    iput-boolean v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mNoChargeFota:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiDedicated:Z

    .line 169
    return-void
.end method

.method private InitComponent()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 405
    const-string v3, "update"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    .line 406
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->addSoftwareUpdateBadge()V

    .line 408
    const-string v3, "scheduled_update"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/Preference;

    .line 435
    const-string v3, "wifi_only"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    .line 437
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 439
    iget-object v6, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 442
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/android/settings/SoftwareUpdateSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SoftwareUpdateSettings$1;-><init>(Lcom/android/settings/SoftwareUpdateSettings;)V

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 462
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "salesCode":Ljava/lang/String;
    const-string v3, "ro.product.model"

    const-string v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "model":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string v7, "Not_Define"

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "wifiDedicated":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "SMLDM_BEARER"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "wifi_dedicated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiDedicated:Z

    .line 476
    iget-boolean v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiDedicated:Z

    if-nez v3, :cond_2

    const-string v3, "XEF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 477
    :cond_2
    const-string v3, "Software Update"

    const-string v6, "Remove Wifi Only Option"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v6, "wifi_only"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SPR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "BST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    .line 486
    iget-boolean v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    if-nez v3, :cond_9

    .line 487
    const-string v3, "Software Update"

    const-string v4, "Only display Update Profile, Update PRL, UICC Unlock options for Samsung FOTA - Sprint devices."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "update_prl"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "update_profile"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "uicc_unlock"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    :cond_5
    :goto_3
    return-void

    .end local v0    # "model":Ljava/lang/String;
    .end local v1    # "salesCode":Ljava/lang/String;
    .end local v2    # "wifiDedicated":Ljava/lang/String;
    :cond_6
    move v3, v5

    .line 439
    goto/16 :goto_0

    .restart local v0    # "model":Ljava/lang/String;
    .restart local v1    # "salesCode":Ljava/lang/String;
    .restart local v2    # "wifiDedicated":Ljava/lang/String;
    :cond_7
    move v3, v4

    .line 471
    goto/16 :goto_1

    :cond_8
    move v4, v5

    .line 482
    goto :goto_2

    .line 493
    :cond_9
    const-string v3, "persist.sys.omadm_hfa_prl"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    .line 494
    const-string v3, "Software Update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is PRL enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-boolean v3, Lcom/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    if-nez v3, :cond_5

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "update_prl"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/settings/SoftwareUpdateSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoftwareUpdateSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SoftwareUpdateSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoftwareUpdateSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->updateInstallTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SoftwareUpdateSettings;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoftwareUpdateSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SoftwareUpdateSettings;->sendOmcUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    return v0
.end method

.method private addSoftwareUpdateBadge()V
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    const v1, 0x7f040193

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private sendOmcUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "bChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    .local v0, "context":Landroid/content/Context;
    const-string v2, "com.samsung.android.app.omcagent"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    const-string v2, "Software Update"

    const-string v3, "sendOmcUpdate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    const-string v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private setOTAMenu(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 396
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method private setOTAMenu(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 387
    const-string v0, "update"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Ljava/lang/String;Z)V

    .line 389
    const-string v0, "wifi_only"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Ljava/lang/String;Z)V

    .line 390
    const-string v0, "scheduled_update"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Ljava/lang/String;Z)V

    .line 391
    return-void
.end method

.method private updateInstallTime()V
    .locals 12

    .prologue
    const v11, 0x7f0e134f

    const/4 v10, 0x1

    .line 357
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/Preference;

    if-nez v3, :cond_0

    .line 384
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v2, ""

    .line 364
    .local v2, "summary":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 365
    .local v4, "time":J
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "SOFTWARE_UPDATE_SET_INSTALL_EVERYDAY"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "everyday":I
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e134f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 382
    .end local v1    # "everyday":I
    .end local v4    # "time":J
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 370
    .restart local v1    # "everyday":I
    .restart local v4    # "time":J
    :cond_1
    if-ne v1, v10, :cond_2

    .line 371
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e1351

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e1350

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 378
    .end local v1    # "everyday":I
    .end local v4    # "time":J
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateLastCheckedDate()V
    .locals 12

    .prologue
    .line 305
    iget-object v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    if-nez v7, :cond_0

    .line 355
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v2, ""

    .line 310
    .local v2, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "salesCode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 315
    .local v4, "time":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-lez v7, :cond_6

    .line 316
    :cond_1
    const-string v7, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1349

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 336
    .end local v4    # "time":J
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_SyncML_DisableWarning4DataCostDuringFota"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "TMO"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_2
    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mNoChargeFota:Z

    .line 340
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string v9, "Not_Define"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "wifiDedicated":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SMLDM_BEARER"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "wifi_dedicated"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_3
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiDedicated:Z

    .line 348
    iget-boolean v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mNoChargeFota:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mWifiDedicated:Z

    if-eqz v7, :cond_a

    .line 349
    :cond_4
    iget-object v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 320
    .end local v6    # "wifiDedicated":Ljava/lang/String;
    .restart local v4    # "time":J
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1348

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 323
    :cond_6
    const-string v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e134b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 327
    .end local v4    # "time":J
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1349

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 332
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1348

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 336
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 343
    .restart local v6    # "wifiDedicated":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    .line 352
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e134a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "summary_charge":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->setHasOptionsMenu(Z)V

    .line 196
    const-string v0, "Software Update"

    const-string v1, "onCreate Software Update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->InitComponent()V

    .line 200
    new-instance v0, Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;-><init>(Lcom/android/settings/SoftwareUpdateSettings;Lcom/android/settings/SoftwareUpdateSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    new-instance v0, Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;-><init>(Lcom/android/settings/SoftwareUpdateSettings;Lcom/android/settings/SoftwareUpdateSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mInstallTimeReceiver:Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mInstallTimeReceiver:Lcom/android/settings/SoftwareUpdateSettings$InstallTimeBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "sec.fota.intent.SET_INSTALL_TIME"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 208
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEKM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    .line 210
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x1

    .line 505
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 506
    const/4 v1, 0x0

    .line 509
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v2, v5, :cond_0

    .line 512
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0e0f6f

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02013e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Software Update"

    const-string v3, "NameNotFoundException in onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mReceiver:Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 553
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 525
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "helphub:appid"

    const-string v5, "update_your_device"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 531
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Software Update"

    const-string v4, "ActivityNotFoundException in onOptionsItemSelected"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    .line 538
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 541
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 542
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "helphub:section"

    const-string v5, "upgrade"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 547
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 548
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Software Update"

    const-string v4, "NameNotFoundException in onOptionsItemSelected"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v4, 0x20

    .line 561
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "key":Ljava/lang/String;
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    const-string v2, "Software Update"

    const-string v3, "Software Update Checked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    const-string v2, "com.samsung.omcagent.intent.USER_UPDATE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/SoftwareUpdateSettings;->sendOmcUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 597
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 573
    :cond_1
    const-string v2, "wifi_only"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    const-string v2, "Software Update"

    const-string v3, "Wifi only is Changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_2
    const-string v2, "scheduled_update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    const-string v2, "Software Update"

    const-string v3, "Scheduled update Checked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sec.fota.action.SCHEDULED_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 580
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "update_prl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 581
    const-string v2, "Software Update"

    const-string v3, "Update PRL is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_PRL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v2, "update_profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 586
    const-string v2, "Software Update"

    const-string v3, "Update Profile is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_DP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v2, "uicc_unlock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    const-string v2, "Software Update"

    const-string v3, "UICC Unlock is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.SIM_UNLOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 229
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->updateInstallTime()V

    .line 235
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isFirmwareRecoveryAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    :cond_0
    const-string v3, "Software Update"

    const-string v4, "OTA is disabled."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    if-nez v3, :cond_2

    .line 243
    const-string v3, "Software Update"

    const-string v4, "finish Software Update by RestrictionPolicy"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SOFTWARE_UPDATE_AUTO_UPDATE"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, "currentAutoUpdateState":I
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 269
    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.AUTOUPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "changed_data"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    .end local v0    # "currentAutoUpdateState":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 247
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v3, "Software Update"

    const-string v4, "OTA is enabled."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Z)V

    goto :goto_0

    .line 273
    .restart local v0    # "currentAutoUpdateState":I
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v0, v6, :cond_1

    .line 275
    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.AUTOUPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "changed_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
