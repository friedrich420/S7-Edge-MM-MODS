.class public Lcom/android/settings/bluetooth/BluetoothScanDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static mScanBtn:Landroid/widget/Button;


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field p:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothScanDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    .line 73
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0e02c3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0e0860

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0e01ba

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->p:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->setupAlert()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    .line 83
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 145
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 146
    const-string v0, "BluetoothScanDialog"

    const-string v1, "onBluetoothStateChanged :: BluetoothScanDialog will finish by bluetooth disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 149
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 162
    .local v1, "fragmentHeight":I
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 163
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "fragmentHeight":I
    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 50
    const-string v0, "BluetoothScanDialog"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 55
    const-string v0, "BluetoothScanDialog"

    const-string v1, "onCreate :: Can\'t lunch Scandialog, Bluetooth is not ON state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 150
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 115
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->updateScanButton()V

    .line 126
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 127
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 129
    :cond_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 141
    const-string v0, "BluetoothScanDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged :: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->updateScanButton()V

    .line 143
    return-void
.end method

.method public updateScanButton()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0e0860

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
