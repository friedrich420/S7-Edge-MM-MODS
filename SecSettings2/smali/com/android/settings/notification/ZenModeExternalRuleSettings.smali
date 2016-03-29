.class public Lcom/android/settings/notification/ZenModeExternalRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeExternalRuleSettings.java"


# instance fields
.field private mConfigure:Landroid/preference/Preference;

.field private mType:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method public static getRuleInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 7
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v2, 0x0

    .line 110
    if-eqz p0, :cond_0

    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "automatic.ruleType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "ruleType":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "automatic.defaultConditionId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "defaultConditionId":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "automatic.configurationActivity"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "configurationActivity":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 115
    new-instance v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v2}, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 116
    .local v2, "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 117
    const-string v4, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v4, v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 118
    iput-object v3, v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->caption:Ljava/lang/String;

    .line 119
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->configurationActivity:Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected getEnabledToastText()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x91

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 100
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 101
    const-string v1, "automatic.conditionId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 102
    .local v0, "conditionId":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 107
    .end local v0    # "conditionId":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreateInternal()V
    .locals 6

    .prologue
    .line 67
    const v3, 0x7f0800f0

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 69
    .local v1, "root":Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v3, v4, v5}, Lcom/android/settings/notification/ServiceListing;->findService(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 71
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    sget-boolean v3, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->getRuleInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v0

    .line 73
    .local v0, "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    sget-boolean v3, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuleInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    const-string v3, "type"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mType:Landroid/preference/Preference;

    .line 75
    if-nez v0, :cond_3

    .line 76
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mType:Landroid/preference/Preference;

    const v4, 0x7f0e0e5d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 81
    :goto_0
    const-string v3, "configure"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mConfigure:Landroid/preference/Preference;

    .line 82
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mConfigure:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 94
    :goto_1
    return-void

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mType:Landroid/preference/Preference;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->caption:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_4
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mConfigure:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeExternalRuleSettings;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method protected setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
