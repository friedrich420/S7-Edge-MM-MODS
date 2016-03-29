.class public Lcom/android/settings/nearbyscan/NearbyScanning;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbyScanning.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mNearbyScannigBroadCastReciver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/android/settings/nearbyscan/NearbyScanning$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nearbyscan/NearbyScanning$1;-><init>(Lcom/android/settings/nearbyscan/NearbyScanning;)V

    iput-object v0, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mNearbyScannigBroadCastReciver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nearbyscan/NearbyScanning;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->updateSwitch()V

    return-void
.end method

.method private updateSwitch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 128
    const-string v2, "NearbyScanning"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 130
    .local v0, "statusValue":I
    iget-object v2, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 133
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 94
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 95
    iget-object v1, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v1, "NearbyScanning"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/settings/nearbyscan/NearbyScanning;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "ct":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-static {v0, v3}, Lcom/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    .line 80
    const-string v1, "Not Installed BeaconManager"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mNearbyScannigBroadCastReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 45
    const-string v0, "NearbyScanning"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearbyscan/NearbyScanning;->mNearbyScannigBroadCastReciver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.nearbyscanning"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->updateSwitch()V

    .line 51
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    .line 117
    .local v1, "statusValue":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    if-eqz p2, :cond_2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "ct":Landroid/content/Context;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    const/4 p2, 0x0

    .line 121
    const-string v3, "Not Installed BeaconManager"

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 123
    :cond_1
    if-eqz p2, :cond_3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    .line 125
    .end local v0    # "ct":Landroid/content/Context;
    :cond_2
    return-void

    .line 123
    .restart local v0    # "ct":Landroid/content/Context;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
