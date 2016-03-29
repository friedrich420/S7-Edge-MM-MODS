.class public abstract Lcom/android/settings/cloud/SyncFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/cloud/CloudDialog$DialogListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private dialogFragment:Lcom/android/settings/cloud/CloudDialog;

.field protected mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

.field protected mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

.field protected syncDescriptionPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    .line 47
    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 50
    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract broadcastStatus(I)V
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 160
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCancelButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 211
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 226
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "type":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 236
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 204
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "type":I
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 200
    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 130
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0e1281

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 131
    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 141
    .local v0, "isCheck":Z
    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    .line 150
    .end local v0    # "isCheck":Z
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    move v3, v2

    .line 151
    goto :goto_1

    .line 144
    .restart local v0    # "isCheck":Z
    :cond_3
    const/4 v1, 0x3

    const v4, 0x7f0e1285

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    .line 146
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudDialog;->setCancelable(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings/cloud/CloudDialog;->show(Lcom/android/settings/cloud/SyncFragment;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x10

    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 65
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 67
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v3

    .line 68
    .local v3, "settings":Lcom/android/settings/cloud/CloudSettings;
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getContentPath()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getContentKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettings;->getInstance(Landroid/os/Bundle;)Lcom/android/settings/cloud/CloudSettings;

    .line 72
    instance-of v4, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 76
    .local v2, "padding":I
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 85
    .end local v2    # "padding":I
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const-string v0, "CloudSettings"

    const-string v3, "on Switch change callback"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0e1281

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    .line 114
    :cond_1
    if-eqz p2, :cond_2

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    .line 124
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_1

    .line 119
    :cond_2
    const/4 v0, 0x2

    const v1, 0x7f0e1292

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    .line 121
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/cloud/CloudDialog;->setCancelable(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/cloud/CloudDialog;->show(Lcom/android/settings/cloud/SyncFragment;)V

    goto :goto_2
.end method

.method protected abstract toggleCheckbox(Z)V
.end method

.method protected abstract togglePreferences(Z)V
.end method

.method protected updateScreen(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 166
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    .line 168
    .local v0, "settings":Lcom/android/settings/cloud/CloudSettings;
    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    goto :goto_0

    .line 176
    :cond_2
    if-nez p1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->togglePreferences(Z)V

    goto :goto_0

    .line 178
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->toggleCheckbox(Z)V

    goto :goto_0
.end method
