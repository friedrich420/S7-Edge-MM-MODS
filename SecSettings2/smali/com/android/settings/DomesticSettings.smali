.class public Lcom/android/settings/DomesticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DomesticSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/settings/DomesticSettings$1;

    invoke-direct {v0}, Lcom/android/settings/DomesticSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x1f9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/settings/DomesticSettings;->addPreferencesFromResource(I)V

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "giga_lte"

    invoke-virtual {p0, v0}, Lcom/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 65
    const-string v1, "giga_lte"

    invoke-virtual {p0, v1}, Lcom/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 66
    .local v0, "mGiGALTE":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/DomesticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mptcp_value"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e0e92

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 70
    :cond_0
    return-void

    .line 68
    :cond_1
    const v1, 0x7f0e0e93

    goto :goto_0
.end method
