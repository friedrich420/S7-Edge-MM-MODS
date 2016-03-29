.class public Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiMaliciousHotspotDetectionActivity.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSsid:Ljava/lang/String;

.field private mWifiMalicioudHotspotDetectionDialog:Landroid/app/AlertDialog;

.field mWifiMaliciousHotspotDetectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mSsid:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$2;-><init>(Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMaliciousHotspotDetectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->handleDisconnect()V

    return-void
.end method

.method private handleDisconnect()V
    .locals 6

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 104
    .local v1, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "bssid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addToSBlacklist(Ljava/lang/String;)Z

    move-result v2

    .line 108
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 109
    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 110
    sget-boolean v3, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiMaliciousHotspotDetectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to blacklist. result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getSBlacklist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMaliciousHotspotDetectionDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 65
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 66
    .local v0, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mSsid:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mSsid:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "AP"

    iput-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mSsid:Ljava/lang/String;

    .line 68
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "newDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0528

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0529

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mSsid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e052c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMaliciousHotspotDetectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e052a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMaliciousHotspotDetectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    new-instance v2, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$1;-><init>(Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMalicioudHotspotDetectionDialog:Landroid/app/AlertDialog;

    .line 82
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMalicioudHotspotDetectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMalicioudHotspotDetectionDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 84
    const-string v2, "WifiMaliciousHotspotDetectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiMaliciousHotspotDetectionActivity appears with SSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiMalicioudHotspotDetectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iput-object p0, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->setVisible(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->setupAlert()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMaliciousHotspotDetectionActivity"

    const-string v2, "WifiMaliciousHotspotDetectionActivity created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->showMaliciousHotspotDetectionDialog()V

    .line 62
    return-void
.end method
