.class public Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TrafficSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static enableOfTrafficSettings:Z

.field public static isEnable:Z

.field public static simSlot:I

.field public static subId:I


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private restrictData:Landroid/preference/SwitchPreference;

.field private setDataLimit:Landroid/preference/PreferenceScreen;

.field private setPackageStartDate:Landroid/preference/PreferenceScreen;

.field private setWarning:Landroid/preference/ListPreference;

.field private shp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 53
    const-string v0, "settings/TrafficSettings"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    .line 86
    sput v1, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    .line 88
    sput v1, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 501
    const/16 v0, 0x25

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 226
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 227
    sget-boolean v2, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    if-nez v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 229
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget v2, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-nez v2, :cond_2

    .line 230
    const-string v2, "switch_traffic_settings"

    sget-boolean v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "switch_traffic_settings"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    sget-boolean v2, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    sput-boolean v2, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    .line 241
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget-boolean v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 243
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget-boolean v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 245
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 246
    return-void

    .line 234
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    sget v2, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 235
    const-string v2, "switch_traffic_settings_1"

    sget-boolean v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "switch_traffic_settings_1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v6, 0x7f0800c7

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->addPreferencesFromResource(I)V

    .line 99
    sput-boolean v10, Lcom/android/settings/DataUsageSummary;->isFromTrafficStings:Z

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e16a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(MB)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "setDataLimitTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 104
    .local v2, "mTotal":Ljava/lang/String;
    const-string v5, "off"

    .line 105
    .local v5, "warningValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .local v3, "restrictOn":Z
    const/4 v1, 0x1

    .line 107
    .local v1, "mStartDay":I
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set_data_limit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_warning_set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "off"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restrict_data_check_box"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 110
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set_package_start_date_value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 111
    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-nez v6, :cond_c

    .line 112
    const-string v6, "set_data_limit"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v6, "data_warning_set"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v6, "restrict_data_check_box"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v6, "set_package_start_date_value"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    const-string v6, "set_data_limit"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    .line 120
    const-string v6, "restrict_data_check_box"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    .line 121
    const-string v6, "data_warning_set"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    .line 123
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-nez v6, :cond_b

    .line 124
    const-string v6, "set_package_start_date"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    sget-object v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "for sim1 so remove sim2 preference  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "set_data_limit_1"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "data_warning_set_1"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "restrict_data_check_box_1"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "set_package_start_date_1"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switch_traffic_settings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    .line 177
    :goto_1
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    .line 181
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    :cond_0
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 184
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    :cond_1
    sget-object v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->simSlot<-----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-boolean v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    if-eqz v6, :cond_f

    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-eq v6, v10, :cond_2

    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-nez v6, :cond_f

    .line 188
    :cond_2
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    .line 189
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 191
    :cond_3
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    .line 192
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 193
    :cond_4
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    if-eqz v6, :cond_5

    const-string v6, "max"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 194
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 195
    :cond_5
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_6

    .line 196
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 209
    :cond_6
    :goto_2
    sget-boolean v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    if-nez v6, :cond_a

    .line 210
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_7

    .line 211
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 213
    :cond_7
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_8

    .line 214
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 215
    :cond_8
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    if-eqz v6, :cond_9

    .line 216
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 217
    :cond_9
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_a

    .line 218
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 220
    :cond_a
    return-void

    .line 127
    :cond_b
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "package_start_cate"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 142
    :cond_c
    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-ne v6, v10, :cond_e

    .line 143
    const-string v6, "set_data_limit_1"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v6, "data_warning_set_1"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v6, "restrict_data_check_box_1"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string v6, "set_package_start_date_1"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    const-string v6, "set_data_limit_1"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    .line 151
    const-string v6, "restrict_data_check_box_1"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    .line 152
    const-string v6, "data_warning_set_1"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    .line 154
    :try_start_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-nez v6, :cond_d

    .line 155
    const-string v6, "set_package_start_date_1"

    invoke-virtual {p0, v6}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    :goto_3
    sget-object v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "for sim2 so remove sim1 preference  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "set_data_limit"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "data_warning_set"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "restrict_data_check_box"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "set_package_start_date"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->shp:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switch_traffic_settings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    goto/16 :goto_1

    .line 157
    :cond_d
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "package_start_cate_1"

    invoke-virtual {p0, v7}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 159
    :catch_1
    move-exception v6

    goto :goto_3

    .line 175
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->finish()V

    goto/16 :goto_1

    .line 197
    :cond_f
    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-eq v6, v10, :cond_10

    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-nez v6, :cond_6

    .line 198
    :cond_10
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_11

    .line 199
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 201
    :cond_11
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_12

    .line 202
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 203
    :cond_12
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    if-eqz v6, :cond_13

    .line 204
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 205
    :cond_13
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_6

    .line 206
    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 325
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 335
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 477
    sget-object v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    const-string v4, "---->onPreferenceClick<-----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-ne p1, v3, :cond_1

    .line 480
    sget v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 481
    .local v2, "temp":I
    sget v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    sput v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 482
    sget v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    sput v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    .line 483
    new-instance v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;

    invoke-direct {v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;-><init>()V

    .line 484
    .local v0, "cycleEditor":Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DatePickDialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 491
    .end local v0    # "cycleEditor":Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;
    .end local v2    # "temp":I
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    if-ne p1, v3, :cond_0

    .line 486
    sget v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    sput v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 487
    sget v3, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    sput v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    .line 488
    new-instance v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;

    invoke-direct {v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;-><init>()V

    .line 489
    .local v1, "limitEditor":Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DataLimitDialog"

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 249
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 253
    .local v4, "sharedpre":Landroid/content/SharedPreferences;
    if-nez v4, :cond_0

    .line 317
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v2, 0x0

    .line 258
    .local v2, "mTotal":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set_data_limit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "max"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_DATA_LIMIT:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    const-string v8, "max"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 265
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    sget-boolean v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->isEnable:Z

    if-eqz v8, :cond_1

    .line 267
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :cond_1
    :goto_1
    const-string v7, "off"

    .line 277
    .local v7, "warningValue":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data_warning_set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "off"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 282
    const/4 v6, -0x1

    .line 284
    .local v6, "showValue":I
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .line 289
    :goto_2
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0e0e93

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 294
    :goto_3
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_WARNING:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_2
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 300
    :goto_4
    const/4 v3, 0x0

    .line 301
    .local v3, "restrictOn":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restrict_data_check_box"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 302
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 304
    const/4 v1, 0x1

    .line 306
    .local v1, "mStartDay":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set_package_start_date_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 310
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_PACKAGE_START_DATE mStartDay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0e0c93

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "showDay":Ljava/lang/String;
    :try_start_3
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/LPF"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_PACKAGE_START_DATE Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mStartDay":I
    .end local v3    # "restrictOn":Z
    .end local v5    # "showDay":Ljava/lang/String;
    .end local v6    # "showValue":I
    .end local v7    # "warningValue":Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 272
    :catch_1
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_DATA_LIMIT Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "showValue":I
    .restart local v7    # "warningValue":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 286
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/LPF"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_DATA_LIMIT Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v6, -0x1

    goto/16 :goto_2

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 297
    :catch_3
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/LPF"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_WARNING Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 391
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---->onSharedPreferenceChanged<-----:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 393
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "set_data_limit"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "set_data_limit_1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 394
    :cond_0
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    const-string v9, "KEY_SET_DATA_LIMIT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v3, "max"

    .line 396
    .local v3, "mTotal":Ljava/lang/String;
    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-ne v8, v11, :cond_8

    .line 397
    const-string v8, "set_data_limit_1"

    const-string v9, "max"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set_data_limit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    :try_start_0
    const-string v8, "max"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 405
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v3    # "mTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "data_warning_set"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "data_warning_set_1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 416
    :cond_2
    const-string v7, "off"

    .line 417
    .local v7, "warningValue":Ljava/lang/String;
    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-ne v8, v11, :cond_a

    .line 418
    const-string v8, "data_warning_set_1"

    const-string v9, "off"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 422
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data_warning_set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    const/4 v6, -0x1

    .line 426
    .local v6, "showValue":I
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 431
    :goto_3
    const/4 v8, -0x1

    if-ne v6, v8, :cond_b

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0e0e93

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 436
    :goto_4
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_WARNING:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :try_start_2
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 444
    .end local v6    # "showValue":I
    .end local v7    # "warningValue":Ljava/lang/String;
    :cond_3
    :goto_5
    const-string v8, "set_package_start_date_value"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "set_package_start_date_value_1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 446
    :cond_4
    const/4 v2, 0x1

    .line 447
    .local v2, "mStartDay":I
    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-ne v8, v11, :cond_c

    .line 448
    const-string v8, "set_package_start_date_value_1"

    invoke-interface {p1, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 452
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set_package_start_date_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 454
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_PACKAGE_START_DATE mStartDay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0e0c93

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, "showDay":Ljava/lang/String;
    :try_start_3
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 462
    .end local v2    # "mStartDay":I
    .end local v5    # "showDay":Ljava/lang/String;
    :cond_5
    :goto_7
    const-string v8, "restrict_data_check_box"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "restrict_data_check_box_1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 464
    :cond_6
    const/4 v4, 0x0

    .line 465
    .local v4, "restrictOn":Z
    sget v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-ne v8, v11, :cond_d

    .line 466
    const-string v8, "restrict_data_check_box_1"

    invoke-interface {p1, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 470
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restrict_data_check_box"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    .end local v4    # "restrictOn":Z
    :cond_7
    return-void

    .line 399
    .restart local v3    # "mTotal":Ljava/lang/String;
    :cond_8
    const-string v8, "set_data_limit"

    const-string v9, "max"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 408
    :cond_9
    :try_start_4
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_DATA_LIMIT Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "mTotal":Ljava/lang/String;
    .restart local v7    # "warningValue":Ljava/lang/String;
    :cond_a
    const-string v8, "data_warning_set"

    const-string v9, "off"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 427
    .restart local v6    # "showValue":I
    :catch_1
    move-exception v0

    .line 428
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/LPF"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v6, -0x1

    goto/16 :goto_3

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 440
    :catch_2
    move-exception v0

    .line 441
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_WARNING Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "showValue":I
    .end local v7    # "warningValue":Ljava/lang/String;
    .restart local v2    # "mStartDay":I
    :cond_c
    const-string v8, "set_package_start_date_value"

    invoke-interface {p1, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_6

    .line 458
    .restart local v5    # "showDay":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 459
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_SET_PACKAGE_START_DATE Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mStartDay":I
    .end local v5    # "showDay":Ljava/lang/String;
    .restart local v4    # "restrictOn":Z
    :cond_d
    const-string v8, "restrict_data_check_box"

    invoke-interface {p1, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto/16 :goto_8
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 9
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 342
    .local v1, "isTrue":I
    if-eqz p2, :cond_1

    .line 343
    const/4 v1, 0x1

    .line 348
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_traffic_settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch_traffic_settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 360
    .local v3, "sharedpre":Landroid/content/SharedPreferences;
    if-nez v3, :cond_2

    .line 387
    :cond_0
    :goto_1
    return-void

    .line 345
    .end local v3    # "sharedpre":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 363
    .restart local v3    # "sharedpre":Landroid/content/SharedPreferences;
    :cond_2
    const/4 v2, 0x0

    .line 365
    .local v2, "mTotal":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set_data_limit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "max"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    sget-object v4, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_SET_DATA_LIMIT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz p2, :cond_5

    sget v4, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-eq v4, v7, :cond_3

    sget v4, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-nez v4, :cond_5

    .line 372
    :cond_3
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 374
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 375
    const-string v4, "max"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 376
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 377
    :cond_4
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 379
    :cond_5
    sget v4, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-eq v4, v7, :cond_6

    sget v4, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    if-nez v4, :cond_0

    .line 380
    :cond_6
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setDataLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 382
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->restrictData:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setWarning:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 384
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 385
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method
