.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoCredentialAuthenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    .registers 2

    .prologue
    .line 1375
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthHeaderKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1388
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1384
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method
