.class public Lcom/android/settings/rcs/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreferencePartialBranded:Landroid/preference/Preference;

.field private mPreferenceRcse:Landroid/preference/Preference;

.field private mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/preference/Preference;

    .line 22
    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/preference/Preference;

    .line 25
    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 31
    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 41
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

    .line 43
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string v1, "rcs_settings_partial_branded"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/preference/Preference;

    .line 45
    return-void
.end method


# virtual methods
.method public disableAllRcsSettingsPreference()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v1, "disableAllRcsSettingsPreference: disable for all brand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    return-void
.end method

.method public updateRcsSettingsVisibility()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "rcsEnabledInCsc":Z
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v2, "updateRcsSettingsVisibility: RCS is not enabled in CSC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v2, "updateRcsSettingsVisibility: update for RCSe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 67
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v2, "updateRcsSettingsVisibility: update for Partial Branded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 72
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v2, "updateRcsSettingsVisibility: update for Full Branded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 77
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
