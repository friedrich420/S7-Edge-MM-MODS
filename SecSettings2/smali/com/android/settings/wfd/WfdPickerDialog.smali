.class public Lcom/android/settings/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ischangedevice:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field mLastConnectedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWfdTitle:Landroid/widget/TextView;

.field mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

.field protected mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 43
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mLastConnectedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 47
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 48
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WfdPickerDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public IsChangeDevice()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createWfdPickerDialog()V
    .locals 7

    .prologue
    .line 67
    const-string v5, "WfdPickerDialog"

    const-string v6, "createWfdPickerDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 70
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f040234

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "progressbarview":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 74
    const v5, 0x7f0d053a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    .line 75
    const v5, 0x7f0d00ea

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 77
    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v6, 0x7f0e10d4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 80
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    .line 87
    :goto_0
    const v5, 0x7f0e01ba

    new-instance v6, Lcom/android/settings/wfd/WfdPickerDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wfd/WfdPickerDialog$1;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v6, 0x7f040233

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "dialoglayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0d0539

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "actionIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 102
    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/wfd/WfdPickerDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wfd/WfdPickerDialog$2;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void

    .line 82
    .end local v0    # "actionIntent":Landroid/content/Intent;
    .end local v2    # "dialoglayout":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v6, 0x7f0e10d3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "WfdPickerDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->setDefaultKeyMode(I)V

    .line 59
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 61
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->createWfdPickerDialog()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    const-string v0, "WfdPickerDialog"

    const-string v1, "onDestroy() dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 117
    .local v0, "handled":Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 120
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    return-void
.end method

.method public showProgressBar(Z)V
    .locals 2
    .param p1, "showMode"    # Z

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
