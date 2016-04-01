.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;
.super Landroid/os/Handler;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProxyAuthenticationHandler"
.end annotation


# static fields
.field private static final ACTION_ABORT_ALL_THREADS:I = 0x3

.field private static final ACTION_AUTHORIZE_WAITING_THREADS:I = 0x1

.field private static final ACTION_ON_CREDENTIALS_RECEIVED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 1351
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .line 1352
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1353
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1357
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_28

    .line 1372
    :goto_5
    return-void

    .line 1359
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1360
    .local v1, "cred":Ljava/lang/String;
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authorizeWaitingThreads(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;)V

    goto :goto_5

    .line 1363
    .end local v1    # "cred":Ljava/lang/String;
    :pswitch_10
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;

    .line 1364
    .local v2, "info":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1365
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->getCallback()Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    move-result-object v0

    .line 1366
    .local v0, "callback":Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->_onCredentialReceived(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    invoke-static {v4, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V

    goto :goto_5

    .line 1369
    .end local v0    # "callback":Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;
    .end local v2    # "info":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_22
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->abortAllWaitingThreads()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    goto :goto_5

    .line 1357
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_22
    .end packed-switch
.end method
