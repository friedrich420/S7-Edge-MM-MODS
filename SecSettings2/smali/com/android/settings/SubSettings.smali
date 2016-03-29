.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/SettingsActivity;
.source "SubSettings.java"


# instance fields
.field private fromSearch:Z

.field private isLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "SubSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 45
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 53
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    const-string v2, "isLaunched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    .line 57
    const-string v2, "fromSearch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 61
    return-void
.end method

.method public onNavigateUp()Z
    .locals 2

    .prologue
    .line 65
    const-string v0, "SubSettings"

    const-string v1, "onNavigateUp() so finish "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPostResume()V

    .line 90
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->onBackPressed()V

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    if-nez v1, :cond_1

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "main_content2"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 96
    .local v0, "mCurrentFrag":Landroid/app/Fragment;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const-class v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    .line 104
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    goto :goto_1
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 109
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "isLaunched"

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string v0, "fromSearch"

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method
