.class public Lcom/android/settings/notification/VibrationsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VibrationsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceVibration:Landroid/preference/PreferenceScreen;

.field private mKeyboardVibration:Landroid/preference/SwitchPreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "VibrationsSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/VibrationsSettings;->DEBUG:Z

    .line 335
    new-instance v0, Lcom/android/settings/notification/VibrationsSettings$6;

    invoke-direct {v0}, Lcom/android/settings/notification/VibrationsSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/notification/VibrationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/notification/VibrationsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VibrationsSettings$1;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VibrationsSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrationsSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/VibrationsSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrationsSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrationsSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrationsSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrationsSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0800d2

    const/4 v6, 0x1

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    sput-object v4, Lcom/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/android/settings/notification/VibrationsSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 147
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/VibrationsSettings;->addPreferencesFromResource(I)V

    .line 148
    const-string v4, "phone_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    .line 149
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 150
    const-string v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    .line 151
    const-string v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    .line 152
    const-string v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    .line 154
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings/notification/VibrationsSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/VibrationsSettings$2;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings/notification/VibrationsSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/VibrationsSettings$3;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings/notification/VibrationsSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/VibrationsSettings$4;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    :cond_0
    const-string v4, "vibration_feedback_intensity"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 187
    const-string v4, "vibration_intensity_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 188
    const-string v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 189
    const-string v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 192
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v6, :cond_2

    .line 194
    const-string v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 195
    const-string v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "UPSM"

    invoke-static {v4, v7, v5}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 201
    .local v3, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "list":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/lang/String;
    .end local v3    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 208
    const-string v4, "phone_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 209
    const-string v4, "vibration_pattern_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 210
    const-string v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    .line 212
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "SVKV"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0e14ae

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 222
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 223
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v1, "mfilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/android/settings/notification/VibrationsSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/VibrationsSettings$5;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    iput-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    .end local v1    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 243
    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "vibrate_when_ringing"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 245
    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "haptic_feedback_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 247
    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "sip_key_feedback_vibration"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->updateDeviceVibrationName()V

    .line 249
    sget-object v2, Lcom/android/settings/notification/VibrationsSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 250
    .local v0, "bPowerSaving":Z
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 252
    if-nez v0, :cond_9

    .line 253
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const v5, 0x7f0e0e31

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 254
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 260
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    .line 262
    if-nez v0, :cond_a

    .line 263
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    const v4, 0x7f0e14ab

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 264
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 270
    :cond_5
    :goto_4
    return-void

    .end local v0    # "bPowerSaving":Z
    :cond_6
    move v2, v4

    .line 243
    goto :goto_0

    :cond_7
    move v2, v4

    .line 245
    goto :goto_1

    :cond_8
    move v2, v4

    .line 247
    goto :goto_2

    .line 256
    .restart local v0    # "bPowerSaving":Z
    :cond_9
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 266
    :cond_a
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 267
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 312
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
