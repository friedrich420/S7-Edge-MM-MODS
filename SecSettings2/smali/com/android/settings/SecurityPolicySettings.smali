.class public Lcom/android/settings/SecurityPolicySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecurityPolicySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

.field private mManualUpdatePolicy:Landroid/preference/PreferenceScreen;

.field private mUseWifiOnly:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/android/settings/SecurityPolicySettings$1;

    invoke-direct {v0}, Lcom/android/settings/SecurityPolicySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/SecurityPolicySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 164
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 72
    :cond_0
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 75
    const-string v1, "auto_policy_update"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    .line 76
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string v1, "use_wifi_only"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mUseWifiOnly:Landroid/preference/SwitchPreference;

    .line 78
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mUseWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    const-string v1, "manual_updates"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mManualUpdatePolicy:Landroid/preference/PreferenceScreen;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "use_wifi_only"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecurityPolicySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "key":Ljava/lang/String;
    const-string v4, "use_wifi_only"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 139
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    .line 140
    .local v3, "value":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SecurityPolicySettings;->mUseWifiOnly:Landroid/preference/SwitchPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "use_wifi_only_db"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.policydm.intent.action.WIFIONLY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "changed_data"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "value":I
    :cond_0
    :goto_1
    return v6

    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    move v3, v6

    .line 139
    goto :goto_0

    .line 146
    :cond_2
    const-string v4, "auto_policy_update"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 147
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v5

    .line 148
    .restart local v3    # "value":I
    :goto_2
    iget-object v7, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "security_update_db"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    if-ne v3, v5, :cond_3

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.policydm.intent.action.EULA_AGREEMENT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.policydm.intent.action.AUTOUPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "AutoUpdateIntent":Landroid/content/Intent;
    const-string v4, "changed_data"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0    # "AutoUpdateIntent":Landroid/content/Intent;
    .end local v3    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    move v3, v6

    .line 147
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "key":Ljava/lang/String;
    const-string v2, "manual_updates"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.policydm.intent.action.PULL_RECEIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "security_update_db"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "setValue":I
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_wifi_only_db"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mUseWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    :goto_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mManualUpdatePolicy:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mManualUpdatePolicy:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mManualUpdatePolicy:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mManualUpdatePolicy:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mUseWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
