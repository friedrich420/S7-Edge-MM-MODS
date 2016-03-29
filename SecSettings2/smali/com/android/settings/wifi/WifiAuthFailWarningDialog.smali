.class public Lcom/android/settings/wifi/WifiAuthFailWarningDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiAuthFailWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mAuthFailDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 65
    new-instance v0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$1;-><init>(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 191
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 196
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 182
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 184
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->finish()V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    .line 74
    const-string v6, "WifiAuthFailWarningDialog"

    const-string v7, "WifiAuthFailWarningDialog : onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mContext:Landroid/content/Context;

    .line 80
    iget-object v6, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    const-string v6, "wifi_auth_fail_nId"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "nId":I
    const-string v6, "changeReason"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, "reason":I
    const v6, 0x7f0f0159

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->setTheme(I)V

    .line 87
    if-ne v1, v8, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 93
    .local v4, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v4, :cond_2

    .line 94
    const-string v6, "WifiAuthFailWarningDialog"

    const-string v7, "selected configuration is null !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 99
    const-string v6, "WifiAuthFailWarningDialog"

    const-string v7, "selected SSID is null !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v5, " "

    .line 105
    .local v5, "ssid":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 108
    .local v2, "newDialog":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e040f

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 109
    const v6, 0x7f0e053a

    new-instance v7, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;

    invoke-direct {v7, p0, v3, v1}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;-><init>(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;II)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance v6, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$3;-><init>(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    const v6, 0x7f0e0537

    new-instance v7, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$4;-><init>(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    .line 142
    iget-object v6, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 102
    .end local v2    # "newDialog":Landroid/app/AlertDialog$Builder;
    .end local v5    # "ssid":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "ssid":Ljava/lang/String;
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 176
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 157
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->setVisible(Z)V

    .line 152
    return-void
.end method
