.class public Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UniversalLockSplashActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;


# instance fields
.field _preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private isSharedDevice:Z

.field private mFeedback:Landroid/preference/PreferenceCategory;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSetBeep:Landroid/preference/SwitchPreference;

.field private mSetLockScreen:Landroid/preference/Preference;

.field private mSetVibration:Landroid/preference/SwitchPreference;

.field private mSetVisibility:Landroid/preference/SwitchPreference;

.field private mSetVoice:Landroid/preference/SwitchPreference;

.field private mShowDescription:Landroid/preference/Preference;

.field mSwitchStateObserver:Landroid/database/ContentObserver;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    .line 155
    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;-><init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 187
    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$2;-><init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private initPreferences()V
    .locals 7

    .prologue
    .line 105
    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    .line 106
    const-string v0, "lock_screen_visible"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    .line 107
    const-string v0, "lock_screen_vibration"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    .line 108
    const-string v0, "lock_screen_beep"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    .line 109
    const-string v0, "lock_screen_voice"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    .line 110
    const-string v0, "descriptionText"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0a7e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    const-string v0, "lock_screen_options_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mFeedback:Landroid/preference/PreferenceCategory;

    .line 114
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mFeedback:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0983

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0a7b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContext()Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 318
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    :cond_0
    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeVibrationPreference()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x136

    return v0
.end method

.method loadSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->toggleSettings()V

    .line 229
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "universal_lock_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 230
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "universal_lock_vibration"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "universal_lock_beep"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 233
    return-void

    :cond_0
    move v0, v2

    .line 229
    goto :goto_0

    :cond_1
    move v0, v2

    .line 230
    goto :goto_1

    :cond_2
    move v0, v2

    .line 231
    goto :goto_2

    :cond_3
    move v1, v2

    .line 232
    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    const-string v0, "UniversalLockSplashActivity"

    const-string v1, "onActivityCreated :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;-><init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 280
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->addPreferencesFromResource(I)V

    .line 249
    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    .line 250
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 251
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->initPreferences()V

    .line 252
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 389
    const-string v0, "UniversalLockSplashActivity"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 391
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 393
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 377
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 382
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 379
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->finish()V

    .line 380
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0e025a

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 291
    const-string v1, "UniversalLockSplashActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isVibrationSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->removeVibrationPreference()V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "universal_lock_vibration"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->setSummary()V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->loadSettings()V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->setListeners()V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 303
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    .line 305
    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    if-eqz v1, :cond_1

    .line 306
    sget-object v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 308
    const-string v1, "UniversalLockSplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch onResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "universal_lock_switch_state"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 148
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 149
    sget-object v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 150
    return-void
.end method

.method public setSummary()V
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getResIDForCurrentLockScreen()I

    move-result v0

    .line 338
    .local v0, "mResID":I
    if-nez v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const v0, 0x7f0e0283

    .line 345
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 347
    return-void

    .line 342
    :cond_1
    const v0, 0x7f0e0284

    goto :goto_0
.end method

.method public toggleSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "universal_lock_switch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 207
    .local v0, "switchState":Z
    :goto_0
    const-string v1, "UniversalLockSplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 214
    return-void

    .end local v0    # "switchState":Z
    :cond_0
    move v0, v1

    .line 205
    goto :goto_0
.end method
