.class public Lcom/android/settings/spen/PenPointerHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenPointerHelp.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableAirCommandDialog:Landroid/app/AlertDialog;

.field private mEnableListViewDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTurnOnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/settings/spen/PenPointerHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v0, p0, Lcom/android/settings/spen/PenPointerHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 69
    iput-object v0, p0, Lcom/android/settings/spen/PenPointerHelp;->mEnableListViewDialog:Landroid/app/AlertDialog;

    .line 73
    iput-object v0, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/spen/PenPointerHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 106
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 107
    iget-object v1, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/spen/PenPointerHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/spen/PenPointerHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 87
    .local v1, "mActivity":Landroid/app/Activity;
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f040166

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/spen/PenPointerHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/spen/PenPointerHelp;->mContext:Landroid/content/Context;

    .line 97
    iget-object v2, p0, Lcom/android/settings/spen/PenPointerHelp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 99
    .local v0, "isKnox":Z
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/spen/PenPointerHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "pen_hovering_pointer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 116
    .local v1, "status":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 131
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/spen/PenPointerHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/PenPointerHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "pen_hovering_pointer"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
