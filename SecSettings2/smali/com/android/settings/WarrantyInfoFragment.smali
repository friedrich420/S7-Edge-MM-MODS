.class public Lcom/android/settings/WarrantyInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WarrantyInfoFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v1, 0x7f0800d8

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/WarrantyInfoFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 106
    .local v0, "parentPreference":Landroid/preference/PreferenceScreen;
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 111
    const-string v1, "general_terms"

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 124
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 115
    :cond_1
    const-string v1, "warranty_exceptions"

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "Option"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v1, "product_warranty"

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "Option"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
