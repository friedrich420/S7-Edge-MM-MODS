.class public Lcom/android/systemui/tuner/TunerFragment;
.super Landroid/preference/PreferenceFragment;
.source "TunerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerFragment$SettingObserver;
    }
.end annotation


# instance fields
.field private mBatteryPct:Landroid/preference/SwitchPreference;

.field private final mBatteryPctChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mSettingObserver:Lcom/android/systemui/tuner/TunerFragment$SettingObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/tuner/TunerFragment$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerFragment$SettingObserver;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerFragment;->mSettingObserver:Lcom/android/systemui/tuner/TunerFragment$SettingObserver;

    .line 192
    new-instance v0, Lcom/android/systemui/tuner/TunerFragment$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerFragment$5;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerFragment;->mBatteryPctChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/TunerFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerFragment;->updateBatteryPct()V

    return-void
.end method

.method private registerPrefs(Landroid/preference/PreferenceGroup;)V
    .locals 7
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    .line 126
    .local v3, "tunerService":Lcom/android/systemui/tuner/TunerService;
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 127
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 128
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 129
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v4, v2, Lcom/android/systemui/tuner/StatusBarSwitch;

    if-eqz v4, :cond_1

    .line 130
    check-cast v2, Lcom/android/systemui/tuner/TunerService$Tunable;

    .end local v2    # "pref":Landroid/preference/Preference;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "icon_blacklist"

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 132
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/TunerFragment;->registerPrefs(Landroid/preference/PreferenceGroup;)V

    goto :goto_1

    .line 135
    :cond_2
    return-void
.end method

.method private unregisterPrefs(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    .line 139
    .local v3, "tunerService":Lcom/android/systemui/tuner/TunerService;
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 140
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 141
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 142
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v4, v2, Lcom/android/systemui/tuner/TunerService$Tunable;

    if-eqz v4, :cond_1

    .line 143
    check-cast v2, Lcom/android/systemui/tuner/TunerService$Tunable;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-virtual {v3, v2}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 145
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/TunerFragment;->registerPrefs(Landroid/preference/PreferenceGroup;)V

    goto :goto_1

    .line 148
    :cond_2
    return-void
.end method

.method private updateBatteryPct()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment;->mBatteryPct:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment;->mBatteryPct:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_show_battery_percent"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerFragment;->mBatteryPct:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment;->mBatteryPctChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerFragment;->setHasOptionsMenu(Z)V

    .line 68
    const-string v0, "qs_tuner"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/TunerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/TunerFragment$1;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    const-string v0, "demo_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/TunerFragment$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/TunerFragment$2;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    const-string v0, "battery_pct"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerFragment;->mBatteryPct:Landroid/preference/SwitchPreference;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "seen_tuner_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d039b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d039c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d039e

    new-instance v2, Lcom/android/systemui/tuner/TunerFragment$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/tuner/TunerFragment$3;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v0, 0x2

    const v1, 0x7f0d03a0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 170
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 159
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 162
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/tuner/TunerFragment$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/tuner/TunerFragment$4;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-static {v1, v2}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment;->mSettingObserver:Lcom/android/systemui/tuner/TunerFragment$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->unregisterPrefs(Landroid/preference/PreferenceGroup;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerFragment;->updateBatteryPct()V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerFragment;->mSettingObserver:Lcom/android/systemui/tuner/TunerFragment$SettingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->registerPrefs(Landroid/preference/PreferenceGroup;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 113
    return-void
.end method
