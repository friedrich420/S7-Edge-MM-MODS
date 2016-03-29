.class public Lcom/android/settings/applications/ManageAssist;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageAssist;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageAssist;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageAssist;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11
    .param p1, "newAssitPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 181
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 182
    .local v5, "selected":I
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    .line 184
    .local v0, "appLabel":Ljava/lang/CharSequence;
    const v7, 0x7f0e0efe

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "title":Ljava/lang/String;
    const v7, 0x7f0e0eff

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/applications/ManageAssist$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/applications/ManageAssist$2;-><init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 194
    .local v4, "onAgree":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e0f00

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e0f01

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 201
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 202
    return-void
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 175
    .local v1, "currentAssist":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 176
    .local v0, "activeService":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateUi()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/ManageAssist$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageAssist$1;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 207
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 148
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3}, Lcom/android/settings/voice/VoiceInputListPreference;->refreshVoiceInputs()V

    .line 150
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 151
    .local v0, "currentAssist":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 152
    .local v1, "hasAssistant":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 171
    :cond_0
    return-void

    .end local v1    # "hasAssistant":Z
    :cond_1
    move v1, v2

    .line 151
    goto :goto_0

    .line 156
    .restart local v1    # "hasAssistant":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0xc9

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultAssistPreference;->rotateSettingsListPreference()V

    .line 215
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 65
    const-string v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    const-string v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    .line 69
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assist_structure_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assist_screenshot_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v1, v2

    .line 74
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_structure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->postUpdateUi()V

    move v2, v3

    .line 134
    :cond_1
    :goto_0
    return v2

    .line 115
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_screenshot_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 118
    goto :goto_0

    .line 120
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_1

    move-object v1, p2

    .line 121
    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "newAssitPackage":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 124
    :cond_5
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v6, "isChangeAssistDefaultAppAllowed"

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v2, v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "isChangeAllowed":I
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/applications/DefaultAssistPreference;->setEnabled(Z)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setEnabled(Z)V

    .line 100
    return-void

    :cond_0
    move v2, v4

    .line 96
    goto :goto_0

    :cond_1
    move v3, v4

    .line 97
    goto :goto_1
.end method
