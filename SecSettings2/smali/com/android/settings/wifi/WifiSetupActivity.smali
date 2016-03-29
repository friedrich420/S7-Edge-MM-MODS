.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;
    }
.end annotation


# instance fields
.field private mAllowSkip:Z

.field private mAutoFinishOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSelectedNetwork:Z

.field private mWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAllowSkip:Z

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 87
    new-instance v0, Lcom/android/settings/wifi/WifiSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSetupActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method private isNetworkConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 262
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 264
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v2

    .line 267
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 268
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isUsingWizardManager()Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private refreshConnectionState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 122
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 124
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    .local v0, "connected":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState(Z)V

    .line 127
    return-void

    .line 124
    .end local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshConnectionState(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    .line 131
    if-eqz p1, :cond_2

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "WifiSetupActivity"

    const-string v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->finishOrNext(I)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e01b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e01b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAllowSkip:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private sendResultsToSetupWizard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.wizard.NEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "nextIntent":Landroid/content/Intent;
    const-string v2, "scriptUri"

    const-string v3, "scriptUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "actionId"

    const-string v3, "actionId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "theme"

    const-string v3, "theme"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v2, "com.android.setupwizard.ResultCode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void
.end method


# virtual methods
.method public finishOrNext(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 197
    const-string v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishOrNext resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUsingWizardManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isUsingWizardManager()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isUsingWizardManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->sendResultsToSetupWizard(I)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish()V

    goto :goto_0
.end method

.method getWifiSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 184
    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method networkSelected()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "WifiSetupActivity"

    const-string v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 154
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "theme"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "themeName":Ljava/lang/String;
    const-string v1, "holo_light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "material_light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    :cond_0
    const p2, 0x7f0f0231

    .line 179
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 180
    return-void

    .line 175
    :cond_2
    const-string v1, "holo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "material"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_3
    const p2, 0x7f0f022f

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wifi_auto_finish_on_connect"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    .line 104
    const-string v3, "allowSkip"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAllowSkip:Z

    .line 106
    const-string v3, "wifi_require_user_network_selection"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 107
    return-void

    :cond_0
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->onBackPressed()V

    .line 242
    return-void
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->finishOrNext(I)V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0e044a

    .line 253
    .local v0, "message":I
    :goto_1
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0    # "message":I
    :cond_1
    const v0, 0x7f0e044b

    goto :goto_1
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 4
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    const/4 v3, 0x0

    .line 229
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "useImmersiveMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 232
    .local v0, "useImmersiveMode":Z
    invoke-virtual {p1, v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->setUseImmersiveMode(Z)V

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onPause()V

    .line 167
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    .line 161
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method
