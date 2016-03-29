.class public Lcom/android/settings/SwipeLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SwipeLockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private isKioskContainer:Z

.field private mActionMemo:Landroid/preference/SwitchPreference;

.field private mUnlockEffect:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/settings/SwipeLockSettings$1;

    invoke-direct {v0}, Lcom/android/settings/SwipeLockSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/SwipeLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SwipeLockSettings;->isKioskContainer:Z

    return-void
.end method

.method private InitPreferences()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    const-string v4, "unlock_effect_with_preview"

    invoke-virtual {p0, v4}, Lcom/android/settings/SwipeLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    .line 75
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 78
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    sget-object v7, Lcom/android/settings/UnlockEffect;->EffectName:[I

    aget v7, v7, v3

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 81
    .end local v3    # "value":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 82
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    sget-object v4, Lcom/android/settings/SwipeLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_wallpaper"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_7

    move v1, v5

    .line 91
    .local v1, "isLiveWallpaper":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "isMotionLock":I
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v6

    .line 95
    .local v0, "isAnimationWallpaperEnabled":Z
    :goto_2
    if-nez v1, :cond_2

    if-gtz v2, :cond_2

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 104
    .end local v0    # "isAnimationWallpaperEnabled":Z
    .end local v1    # "isLiveWallpaper":Z
    .end local v2    # "isMotionLock":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/SwipeLockSettings;->isKioskContainer:Z

    .line 105
    iget-boolean v4, p0, Lcom/android/settings/SwipeLockSettings;->isKioskContainer:Z

    if-eqz v4, :cond_4

    .line 106
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_4

    .line 107
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 112
    :cond_4
    const-string v4, "action_meno_on_lock_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/SwipeLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    .line 113
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    .line 114
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_quick_note"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    :goto_3
    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    :cond_5
    return-void

    .line 86
    :cond_6
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    move v1, v6

    .line 89
    goto :goto_1

    .restart local v1    # "isLiveWallpaper":Z
    .restart local v2    # "isMotionLock":I
    :cond_8
    move v0, v5

    .line 93
    goto :goto_2

    .end local v1    # "isLiveWallpaper":Z
    .end local v2    # "isMotionLock":I
    :cond_9
    move v6, v5

    .line 114
    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/android/settings/SwipeLockSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SwipeLockSettings;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "result":Z
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 135
    .local v1, "value":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_quick_note"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    const-string v2, "SwipeLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange mActionMemo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return v0

    .line 134
    .end local v1    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.UnlockEffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/SwipeLockSettings;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SwipeLockSettings;->InitPreferences()V

    .line 71
    return-void
.end method
