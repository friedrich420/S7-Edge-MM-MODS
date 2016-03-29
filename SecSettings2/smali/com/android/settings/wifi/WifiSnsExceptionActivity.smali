.class public Lcom/android/settings/wifi/WifiSnsExceptionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiSnsExceptionActivity.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

.field mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showWifiSnsExceptionDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "newDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0517

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0518

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0e053a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0537

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v1, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "WifiSnsExceptionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiSnsExceptionActivity appears with SSID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    .line 70
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->setVisible(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->setupAlert()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "SSID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "AP"

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    .line 78
    :cond_0
    const-string v2, "WifiSnsExceptionActivity"

    const-string v3, "WifiSnsExceptionActivity created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v1, "mFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v2, "feature"

    .line 163
    .local v2, "featureKey":Ljava/lang/String;
    const-string v3, "SNSU"

    .line 164
    .local v3, "featureValue":Ljava/lang/String;
    const-string v1, "extra"

    .line 166
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 170
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    .line 176
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method
