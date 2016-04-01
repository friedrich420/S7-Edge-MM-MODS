.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .registers 2

    .prologue
    .line 1416
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1419
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 1420
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    const-string v2, "LegacyVpnRunner"

    const-string/jumbo v3, "mCredentialResetFilter update vpn state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    if-eqz v0, :cond_4b

    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4b

    .line 1424
    :try_start_17
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1425
    .local v1, "keystore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmptyForSystemCredential()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1426
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 1427
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    const-string v3, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mUserHandle:I
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/ConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4b} :catch_4c

    .line 1433
    .end local v1    # "keystore":Landroid/security/KeyStore;
    :cond_4b
    :goto_4b
    return-void

    .line 1429
    :catch_4c
    move-exception v2

    goto :goto_4b
.end method
