.class public Lcom/android/settings/ethernet/EthernetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EthernetSettings.java"


# instance fields
.field private mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroid/preference/Preference;

.field private mEthDeviceStateReceiver:Landroid/database/ContentObserver;

.field private mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 120
    new-instance v0, Lcom/android/settings/ethernet/EthernetSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ethernet/EthernetSettings$1;-><init>(Lcom/android/settings/ethernet/EthernetSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetSettings;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ethernet/EthernetSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetSettings;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settings/ethernet/EthernetSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/ethernet/EthernetSettings;Lcom/android/settings/ethernet/EthernetConfigDialog;)Lcom/android/settings/ethernet/EthernetConfigDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetSettings;
    .param p1, "x1"    # Lcom/android/settings/ethernet/EthernetConfigDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    return-object p1
.end method

.method private initToggles()V
    .locals 5

    .prologue
    .line 92
    new-instance v2, Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v0, "ethernet"

    invoke-virtual {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    const-string v1, "toggle_eth"

    invoke-virtual {p0, v1}, Lcom/android/settings/ethernet/EthernetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const-string v4, "eth_config"

    invoke-virtual {p0, v4}, Lcom/android/settings/ethernet/EthernetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/settings/ethernet/EthernetEnabler;-><init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroid/preference/CheckBoxPreference;Landroid/preference/Preference;)V

    iput-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    .line 97
    new-instance v0, Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    .line 98
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/ethernet/EthernetEnabler;->setConfigDialog(Lcom/android/settings/ethernet/EthernetConfigDialog;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/ethernet/EthernetEnabler;->setEthernetSettings(Lcom/android/settings/ethernet/EthernetSettings;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/android/settings/ethernet/EthernetSettings;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const-string v1, "eth_config"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigPref:Landroid/preference/Preference;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->initToggles()V

    .line 74
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    .line 112
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ethernet/EthernetEnabler;->pause()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 42
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 43
    const-string v1, "ethernet"

    invoke-virtual {p0, v1}, Lcom/android/settings/ethernet/EthernetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    .line 45
    .local v0, "mEthManager":Landroid/net/EthernetManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e15d7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/ethernet/EthernetSettings;->showDialog(I)V

    .line 53
    .end local v0    # "mEthManager":Landroid/net/EthernetManager;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ethernet/EthernetEnabler;->resume()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eth_device_conn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    return-void
.end method

.method public showEthernetSettingsDialog(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/ethernet/EthernetSettings;->showDialog(I)V

    .line 118
    return-void
.end method
