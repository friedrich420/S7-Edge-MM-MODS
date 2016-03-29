.class public Lcom/android/settings/cloud/CloudDocumentSyncFragment;
.super Lcom/android/settings/cloud/SyncFragment;
.source "CloudDocumentSyncFragment.java"


# static fields
.field private static isDocumentSyncAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->isDocumentSyncAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "docSync"

    iget-object v3, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudDocumentSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "wifiOnlyType"

    const-string v3, "doc"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "wifiOnlyValue"

    iget-object v3, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "wifiOnly"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudPhotosSyncFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getPreferencesReference()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "pref_wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 45
    const-string v0, "sync_description"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    .line 47
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->addPreferencesFromResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->getPreferencesReference()V

    .line 33
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings/cloud/SyncFragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->isDocumentSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->updatePreferences()V

    .line 64
    return-void
.end method

.method protected toggleCheckbox(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 130
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/cloud/CloudSettings;->setWifiOnly(IZ)V

    .line 131
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 119
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/cloud/CloudSettings;->setDocumentSync(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->showDivider(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->updatePreferences()V

    .line 123
    return-void
.end method

.method protected updatePreferences()V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 70
    .local v0, "mPreferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudSettings;->isPhoneModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->isDocumentSync()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->isDocumentSyncAvailable:Z

    .line 72
    sget-boolean v1, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->isDocumentSyncAvailable:Z

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    iget-object v1, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/settings/cloud/CloudSettings;->isWifiOnly(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
