.class public Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockAndSecuritySettingsActivity"
.end annotation


# instance fields
.field private fromSearch:Z

.field private isLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 217
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 218
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    .line 226
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 229
    const-string v2, "isLaunched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    .line 230
    const-string v2, "fromSearch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    .line 232
    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPostResume()V

    .line 239
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-boolean v1, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->onBackPressed()V

    .line 242
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    if-nez v1, :cond_1

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "main_content2"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 245
    .local v0, "mCurrentFrag":Landroid/app/Fragment;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
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

    .line 248
    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    .line 253
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    goto :goto_0

    .line 251
    :cond_3
    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    goto :goto_1
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 258
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 263
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
