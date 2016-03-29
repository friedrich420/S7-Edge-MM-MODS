.class public Lcom/android/settings/vpn2/VpnSettingsForATT;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettingsForATT.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdvVPN:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/settings/vpn2/VpnSettingsForATT$1;

    invoke-direct {v0}, Lcom/android/settings/vpn2/VpnSettingsForATT$1;-><init>()V

    sput-object v0, Lcom/android/settings/vpn2/VpnSettingsForATT;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

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
    .line 56
    const/16 v0, 0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "adv_vpn"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    .line 66
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.HiddenIPSecClient.launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettingsForATT;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 80
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isVpnAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, "isVpnAllowed":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 99
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/vpn2/VpnSettingsForATT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "isVpnAllowed":I
    :cond_0
    :goto_1
    return-void

    .line 99
    .restart local v1    # "isVpnAllowed":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .end local v1    # "isVpnAllowed":I
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
