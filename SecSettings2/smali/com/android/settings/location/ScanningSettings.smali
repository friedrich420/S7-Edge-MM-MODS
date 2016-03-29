.class public Lcom/android/settings/location/ScanningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScanningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 55
    :cond_0
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/settings/location/ScanningSettings;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/location/ScanningSettings;->initPreferences()V

    .line 58
    return-object v0
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    const-string v2, "wifi_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/settings/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 63
    .local v1, "wifiScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_scan_always_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 65
    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string v2, "bluetooth_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/settings/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 67
    .local v0, "bleScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "ble_scan_always_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 69
    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    return-void

    .end local v0    # "bleScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_0
    move v2, v4

    .line 63
    goto :goto_0

    .restart local v0    # "bleScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_1
    move v3, v4

    .line 67
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x83

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 77
    .local v1, "value":I
    :goto_0
    const-string v3, "wifi_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    :cond_0
    :goto_1
    return v2

    .line 75
    .end local v1    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    .restart local v1    # "value":I
    :cond_2
    const-string v3, "bluetooth_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/location/ScanningSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 48
    return-void
.end method
