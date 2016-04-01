.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.super Ljava/lang/Thread;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_DETECTION_FAILED:I = -0x2

.field private static final AUTHENTICATION_IN_PROGRESS_FROM_RESPONSE:I = 0x0

.field private static final AUTHENTICATION_IN_PROGRESS_FROM_STATE:I = 0x2

.field private static final AUTHENTICATION_NOT_REQUIRED:I = -0x1

.field private static final AUTHENTICATION_REQUIRED_ADD:I = 0x1

.field private static final BUNDLE_ENTRY_BASE64_ENCODE:Ljava/lang/String; = "base64credentials"

.field private static final BUNDLE_ENTRY_PASSWORD:Ljava/lang/String; = "password"

.field private static final BUNDLE_ENTRY_USERNAME:Ljava/lang/String; = "username"

.field private static final CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final DBG:Z

.field private static final ERROR_BACK_CODE:I = -0x3

.field private static final ERROR_CANCEL_CODE:I = -0x2

.field private static final ERROR_INVALID_CRED_CODE:I = -0x4

.field private static final ERROR_RETURN_CODE:I = -0x1

.field private static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HEADER_PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final HTTP_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "HTTP/1.1 500 Internal Server Error\r\n"

.field private static final HTTP_OK:Ljava/lang/String; = "HTTP/1.1 200 OK\n"

.field private static final INVALID_FD:I = -0x1

.field private static final NO_ERROR:I = 0x0

.field private static final PROXY:Ljava/lang/String; = "PROXY "

.field private static final PROXY_AUTHENTICATION_ACTION:Ljava/lang/String; = "vpn.knoxvpn.proxy-authentication-action"

.field private static final PROXY_AUTHENTICATION_RESULT:Ljava/lang/String; = "vpn.knoxvpn.proxy-authentication-result"

.field private static final SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProxyServer"


# instance fields
.field private CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field private USER_PROXY_CREDENTIAL:Ljava/lang/String;

.field private authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;",
            ">;"
        }
    .end annotation
.end field

.field private credentialSyncObject:Ljava/lang/Object;

.field private isCredentialsPredefined:Z

.field private mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

.field private mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRunning:Z

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

.field private stateSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    iput-boolean v3, p0, mIsRunning:Z

    .line 94
    const/4 v1, -0x1

    iput v1, p0, mPort:I

    .line 95
    iput-object v2, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 96
    iput-object v2, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    .line 97
    iput-object v2, p0, mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    iput-object v2, p0, mServerSocket:Ljava/net/ServerSocket;

    .line 99
    iput-object v2, p0, mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    .line 100
    iput-object v2, p0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 101
    iput-object v2, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 102
    iput-object v2, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 103
    iput-object v2, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 104
    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 105
    iput-object v2, p0, mProfileName:Ljava/lang/String;

    .line 106
    iput-object v2, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 107
    iput-object v2, p0, authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    iput-boolean v3, p0, isCredentialsPredefined:Z

    .line 111
    iput-object v2, p0, stateSyncObject:Ljava/lang/Object;

    .line 112
    iput-object v2, p0, credentialSyncObject:Ljava/lang/Object;

    .line 156
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 157
    iput-object p3, p0, mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    .line 158
    iput-object p2, p0, mProfileName:Ljava/lang/String;

    .line 159
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, stateSyncObject:Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, credentialSyncObject:Ljava/lang/Object;

    .line 161
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 162
    invoke-direct {p0}, initializeHandlerThread()V

    .line 163
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v1}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 164
    iput-object v2, p0, USER_PROXY_CREDENTIAL:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iget-object v2, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 166
    .local v0, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isproxyCredentialsPreDefined()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 167
    invoke-direct {p0, v0}, processPredefinedCredentials(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    .line 169
    :cond_61
    return-void
.end method

.method private _getRequiredAuthenticationType(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 368
    .local v2, "returnValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 370
    .local v0, "authenticationRequired":Z
    :cond_4
    invoke-direct {p0, p1}, getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 371
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_24

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: read line = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5c

    if-eqz v0, :cond_5c

    .line 373
    const-string v3, "Proxy-Authenticate:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 374
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 375
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_5c

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: ProxyAuth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_94

    const-string v3, "HTTP/1."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 379
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string v4, "407"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 380
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_94

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: authentication retuired = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 383
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: out of loop. retValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v2
.end method

.method private _onCredentialReceived(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1068
    .local v8, "action":Ljava/lang/String;
    const-string v2, "PROFILE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1069
    .local v13, "profile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mProfileName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1190
    :cond_16
    :goto_16
    :pswitch_16
    return-void

    .line 1072
    :cond_17
    const-string v2, "RETURN_BUNDLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 1073
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "RESULT"

    const/4 v3, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1074
    .local v14, "resultCode":I
    const-string v2, "THREAD_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1076
    .local v5, "threadId":Ljava/lang/String;
    const-string/jumbo v2, "vpn.knoxvpn.proxy-authentication-result"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1077
    packed-switch v14, :pswitch_data_2b8

    goto :goto_16

    .line 1081
    :pswitch_3d
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Cancel error received from the UIDialog. Breaking and aborting all threads."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, sendMessageToHandler(ILjava/lang/Object;)V

    goto :goto_16

    .line 1089
    :pswitch_4c
    if-nez p2, :cond_4e

    .line 1092
    :cond_4e
    if-nez v9, :cond_58

    .line 1093
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ", received bundle null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1096
    :cond_58
    const-string/jumbo v2, "username"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1097
    .local v19, "username":Ljava/lang/String;
    const-string/jumbo v2, "password"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1098
    .local v12, "password":Ljava/lang/String;
    const-string v2, "base64credentials"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1100
    .local v4, "base64Credential":Ljava/lang/String;
    if-nez v5, :cond_87

    .line 1101
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ". Invalid/null threadId"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1103
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, sendMessageToHandler(ILjava/lang/Object;)V

    goto :goto_16

    .line 1106
    :cond_87
    if-eqz v19, :cond_8d

    if-eqz v12, :cond_8d

    if-nez v4, :cond_9c

    .line 1108
    :cond_8d
    :try_start_8d
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "callback due to null username/password/base64"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    if-eqz p2, :cond_9c

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onFail(I)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_9c} :catch_106

    .line 1114
    :cond_9c
    :goto_9c
    invoke-direct/range {p0 .. p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    .line 1115
    .local v17, "stateCache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    if-nez v17, :cond_118

    .line 1116
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stateCache == null for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :try_start_c1
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authentication return for threadID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " since cache is null"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    if-eqz p2, :cond_e4

    invoke-interface/range {p2 .. p2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_e4} :catch_10f

    .line 1123
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, setUserCredential(Ljava/lang/String;)V

    .line 1124
    invoke-direct/range {p0 .. p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v16

    .line 1125
    .local v16, "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 1126
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1128
    :cond_fe
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_16

    .line 1110
    .end local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .end local v17    # "stateCache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :catch_106
    move-exception v10

    .line 1111
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Remote exception occured during callback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 1120
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v17    # "stateCache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :catch_10f
    move-exception v10

    .line 1121
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Remote exception occured during callback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 1132
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_118
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ": Verifying again if credentials are correct..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v2, 0x2

    :try_start_120
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getUrlStringForAuth()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHttpVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    .line 1135
    .local v18, "urlInfo":[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v2, :cond_1ca

    .line 1137
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "In _onCredentialReceived: mAuthenticator = null. Aborting this thread."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    const-string v3, "HTTP/1.1 500 Internal Server Error\r\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1140
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1141
    invoke-direct/range {p0 .. p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, sendMessageToHandler(ILjava/lang/Object;)V
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_179} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_179} :catch_245

    goto/16 :goto_16

    .line 1158
    .end local v18    # "urlInfo":[Ljava/lang/String;
    :catch_17b
    move-exception v10

    .line 1159
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Remote exception occured during callback"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_183
    :goto_183
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ": Re-Verification success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->start()V

    .line 1181
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, setUserCredential(Ljava/lang/String;)V

    .line 1182
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1183
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, sendMessageToHandler(ILjava/lang/Object;)V

    .line 1184
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuthenticationState.AUTHORIZED? =  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1145
    .restart local v18    # "urlInfo":[Ljava/lang/String;
    :cond_1ca
    :try_start_1ca
    move-object/from16 v0, p0

    iget-object v2, v0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v2, v4, v3, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_280

    .line 1146
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-authentication failed for threadID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ". Restarting UI activity with callback"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Resetting connection to server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v15

    .line 1149
    .local v15, "server":Ljava/net/Socket;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1150
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->setDestinationSocket(Ljava/net/Socket;)V

    .line 1151
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_23b

    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketException in _onCredentialReceived. Server = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_23b
    if-eqz p2, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onFail(I)V
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_1ca .. :try_end_243} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_243} :catch_245

    goto/16 :goto_16

    .line 1160
    .end local v15    # "server":Ljava/net/Socket;
    .end local v18    # "urlInfo":[Ljava/lang/String;
    :catch_245
    move-exception v11

    .line 1161
    .local v11, "ex":Ljava/lang/Exception;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Exception occured during callback"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    invoke-direct/range {p0 .. p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v16

    .line 1163
    .restart local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    if-eqz v4, :cond_28e

    .line 1164
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, setUserCredential(Ljava/lang/String;)V

    .line 1165
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1166
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1167
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1168
    invoke-direct/range {p0 .. p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_16

    .line 1155
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .restart local v18    # "urlInfo":[Ljava/lang/String;
    :cond_280
    :try_start_280
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Re-authentication Success. Sending to dialog app."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-eqz p2, :cond_183

    invoke-interface/range {p2 .. p2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_28c
    .catch Landroid/os/RemoteException; {:try_start_280 .. :try_end_28c} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_28c} :catch_245

    goto/16 :goto_183

    .line 1171
    .end local v18    # "urlInfo":[Ljava/lang/String;
    .restart local v11    # "ex":Ljava/lang/Exception;
    .restart local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    :cond_28e
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1172
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1173
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, closeServerSocket(Ljava/net/Socket;)V

    .line 1174
    invoke-direct/range {p0 .. p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_16

    .line 1077
    nop

    :pswitch_data_2b8
    .packed-switch -0x4
        :pswitch_16
        :pswitch_16
        :pswitch_3d
        :pswitch_16
        :pswitch_4c
    .end packed-switch
.end method

.method private abortAllWaitingThreads()V
    .registers 10

    .prologue
    .line 1215
    const-string v5, "KnoxVpnProxyServer"

    const-string v6, "Aborting all threads."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1218
    .local v4, "threadId":Ljava/lang/Object;
    :try_start_1d
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    .line 1219
    .local v0, "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    if-eqz v0, :cond_40

    .line 1220
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v3

    .line 1221
    .local v3, "source":Ljava/net/Socket;
    const-string v2, "HTTP/1.1 500 Internal Server Error\r\n"

    .line 1222
    .local v2, "returnLine":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-direct {p0, v5}, closeServerSocket(Ljava/net/Socket;)V

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-direct {p0, v5}, closeServerSocket(Ljava/net/Socket;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_60
    .catchall {:try_start_1d .. :try_end_40} :catchall_81

    .line 1228
    .end local v2    # "returnLine":Ljava/lang/String;
    .end local v3    # "source":Ljava/net/Socket;
    :cond_40
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing from cache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1226
    .end local v0    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :catch_60
    move-exception v5

    .line 1228
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing from cache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1228
    :catchall_81
    move-exception v5

    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing from cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    .line 1232
    .end local v4    # "threadId":Ljava/lang/Object;
    :cond_a2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v5}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1233
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_c7

    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In abortAllWaitingThreads: resetting state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_c7
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, generateRandomNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Ljava/net/Socket;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 65
    invoke-direct {p0, p1}, getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 65
    invoke-direct {p0, p1}, closeServerSocket(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, getUserCredential()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    iget-object v0, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .prologue
    .line 65
    iput-object p1, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 65
    invoke-direct {p0, p1}, isSocketOperational(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .prologue
    .line 65
    invoke-direct {p0, p1}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, authorizeWaitingThreads(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, _onCredentialReceived(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, abortAllWaitingThreads()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 65
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 65
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # Ljava/net/Socket;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, isAuthenticationRequired(Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private authorizeWaitingThreads(Ljava/lang/String;)V
    .registers 10
    .param p1, "cred"    # Ljava/lang/String;

    .prologue
    .line 1209
    invoke-direct {p0}, getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1210
    .local v7, "threadId":Ljava/lang/Object;
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->start()V

    goto :goto_c

    .line 1212
    .end local v7    # "threadId":Ljava/lang/Object;
    :cond_26
    return-void
.end method

.method private closeServerSocket(Ljava/net/Socket;)V
    .registers 5
    .param p1, "serverSocket"    # Ljava/net/Socket;

    .prologue
    .line 572
    if-eqz p1, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 573
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_c

    .line 578
    :cond_b
    :goto_b
    return-void

    .line 575
    :catch_c
    move-exception v0

    .line 576
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KnoxVpnProxyServer"

    const-string v2, "Exception occured while closing the serverSocket "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private generateRandomNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 904
    const/4 v7, 0x0

    .line 906
    .local v7, "resolvedHostName":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, p2}, getMarkForInterface(Ljava/lang/String;)I

    move-result v5

    .line 907
    .local v5, "isKnoxNetId":I
    if-eqz p2, :cond_6a

    const/4 v9, -0x1

    if-eq v5, v9, :cond_6a

    .line 908
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_26

    const-string v9, "KnoxVpnProxyServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The host name to resolve is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_26
    new-instance v3, Landroid/system/StructAddrinfo;

    invoke-direct {v3}, Landroid/system/StructAddrinfo;-><init>()V

    .line 910
    .local v3, "hints":Landroid/system/StructAddrinfo;
    sget v9, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v9, v3, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 911
    sget v9, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v9, v3, Landroid/system/StructAddrinfo;->ai_family:I

    .line 912
    sget v9, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v9, v3, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 913
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p1, v3, v5}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v8

    .line 914
    .local v8, "socketAddresses":[Ljava/net/InetAddress;
    if-eqz v8, :cond_6a

    .line 915
    move-object v1, v8

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_42
    if-ge v4, v6, :cond_6a

    aget-object v0, v1, v4

    .line 916
    .local v0, "add":Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    if-eqz v9, :cond_6b

    .line 917
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 918
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_6a

    const-string v9, "KnoxVpnProxyServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The resolved host address is a ipv4 address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6a} :catch_6e

    .line 927
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "hints":Landroid/system/StructAddrinfo;
    .end local v4    # "i$":I
    .end local v5    # "isKnoxNetId":I
    .end local v6    # "len$":I
    .end local v8    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_6a
    :goto_6a
    return-object v7

    .line 915
    .restart local v0    # "add":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "hints":Landroid/system/StructAddrinfo;
    .restart local v4    # "i$":I
    .restart local v5    # "isKnoxNetId":I
    .restart local v6    # "len$":I
    .restart local v8    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 924
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "hints":Landroid/system/StructAddrinfo;
    .end local v4    # "i$":I
    .end local v5    # "isKnoxNetId":I
    .end local v6    # "len$":I
    .end local v8    # "socketAddresses":[Ljava/net/InetAddress;
    :catch_6e
    move-exception v2

    .line 925
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "KnoxVpnProxyServer"

    const-string v10, "Exception occured while trying to resolve the address for the host "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method

.method private getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_b

    .line 184
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    .line 185
    :cond_b
    iget-object v0, p0, authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .registers 6
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "authTypeCheckConnection":Ljava/net/Socket;
    :try_start_1
    iget-object v1, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v1, :cond_16

    .line 421
    const-string v1, "KnoxVpnProxyServer"

    const-string v2, "In getAuthenticator: Resetting connection to server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0, p1}, getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    .line 423
    invoke-direct {p0, v0, p2}, getRequiredAuthenticationType(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v1

    iput-object v1, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1d
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    .line 427
    :cond_16
    invoke-direct {p0, v0}, closeServerSocket(Ljava/net/Socket;)V

    .line 428
    const/4 v0, 0x0

    .line 430
    :goto_1a
    iget-object v1, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object v1

    .line 425
    :catch_1d
    move-exception v1

    .line 427
    invoke-direct {p0, v0}, closeServerSocket(Ljava/net/Socket;)V

    .line 428
    const/4 v0, 0x0

    .line 429
    goto :goto_1a

    .line 427
    :catchall_23
    move-exception v1

    invoke-direct {p0, v0}, closeServerSocket(Ljava/net/Socket;)V

    .line 428
    const/4 v0, 0x0

    throw v1
.end method

.method private getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .registers 3

    .prologue
    .line 131
    iget-object v1, p0, stateSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_3
    iget-object v0, p0, CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v0, :cond_a

    .line 204
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 206
    :cond_a
    iget-object v0, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    return-object v0
.end method

.method private getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_c

    .line 211
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 213
    :cond_c
    iget-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object v0
.end method

.method private getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_c

    .line 197
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 199
    :cond_c
    iget-object v0, p0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 558
    .local v1, "byteBuffer":I
    if-gez v1, :cond_e

    .line 559
    const-string v2, ""

    .line 567
    :goto_d
    return-object v2

    .line 561
    :cond_e
    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    .line 562
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 564
    :cond_16
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 565
    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    if-gez v1, :cond_e

    .line 567
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 894
    const/4 v0, -0x1

    .line 895
    .local v0, "knoxNetworkMark":I
    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 896
    const/16 v0, 0x64

    .line 900
    :cond_c
    :goto_c
    return v0

    .line 897
    :cond_d
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 898
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    goto :goto_c
.end method

.method private getRequiredAuthenticationType(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .registers 11
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "In getRequiredAuthenticationType"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v4, "HEAD "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    array-length v4, p2

    if-le v4, v6, :cond_88

    aget-object v4, p2, v7

    :goto_19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    array-length v4, p2

    if-le v4, v6, :cond_8c

    aget-object v4, p2, v6

    :goto_26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v4, "Connection: keep-alive"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v4, "Proxy-Connection: keep-alive"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_62

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending line to determine auth type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 403
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, v2}, _getRequiredAuthenticationType(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "authType":Ljava/lang/String;
    if-eqz v0, :cond_8f

    const-string v4, "Basic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 405
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "Returning authType Basic"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    .end local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-direct {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;-><init>()V

    .line 414
    .restart local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    :goto_87
    return-object v3

    .line 392
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_88
    const/4 v4, 0x0

    aget-object v4, p2, v4

    goto :goto_19

    .line 394
    :cond_8c
    aget-object v4, p2, v7

    goto :goto_26

    .line 407
    .restart local v0    # "authType":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_8f
    if-eqz v0, :cond_a6

    const-string v4, "NTLM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 408
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "Returning authType NTLM"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    .end local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-direct {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;-><init>()V

    .restart local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    goto :goto_87

    .line 411
    :cond_a6
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "Returning authType None!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;

    .end local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    .restart local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    goto :goto_87
.end method

.method private getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 12
    .param p1, "resolvedHostName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 940
    const/4 v1, 0x0

    .line 942
    .local v1, "returnValue":Ljava/net/Socket;
    :try_start_2
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_133
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_153

    .line 943
    .end local v1    # "returnValue":Ljava/net/Socket;
    .local v2, "returnValue":Ljava/net/Socket;
    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v2, v6}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 944
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_3d

    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The socket is bounded to the local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_3d
    invoke-virtual {v2}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 946
    .local v3, "socketFd":Ljava/io/FileDescriptor;
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v6

    iget-object v7, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 947
    .local v4, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f4

    .line 948
    if-eqz v4, :cond_d5

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d5

    .line 949
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_87

    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Type: The socket is binded to the interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_87
    invoke-direct {p0}, getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(ILjava/lang/String;)V

    .line 961
    if-eqz p1, :cond_113

    .line 962
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 963
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_d2

    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The socket is bounded to the local address 2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    move-object v1, v2

    .end local v2    # "returnValue":Ljava/net/Socket;
    .end local v3    # "socketFd":Ljava/io/FileDescriptor;
    .end local v4    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    :goto_d3
    move-object v5, v1

    .line 978
    :goto_d4
    return-object v5

    .line 952
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    .restart local v3    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v4    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_d5
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Type:invalid interface name, binding to the interface failed for the profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-direct {p0, v2}, closeServerSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 954
    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_d4

    .line 957
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :cond_f4
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Type:invalid socket, binding to the interface failed for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-direct {p0, v2}, closeServerSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 959
    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_d4

    .line 965
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :cond_113
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dns resolution failed for the proxy server added to the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-direct {p0, v2}, closeServerSocket(Ljava/net/Socket;)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_131} :catch_177
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_131} :catch_174

    move-object v1, v2

    .line 967
    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_d4

    .line 969
    .end local v3    # "socketFd":Ljava/io/FileDescriptor;
    .end local v4    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_133
    move-exception v0

    .line 970
    .local v0, "e":Ljava/io/IOException;
    :goto_134
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occured while trying to connect to the remote host for the profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    invoke-direct {p0, v1}, closeServerSocket(Ljava/net/Socket;)V

    .line 972
    const/4 v1, 0x0

    .line 977
    goto :goto_d3

    .line 973
    .end local v0    # "e":Ljava/io/IOException;
    :catch_153
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    :goto_154
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured while applying the proxy type for the url for the profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    invoke-direct {p0, v1}, closeServerSocket(Ljava/net/Socket;)V

    .line 976
    const/4 v1, 0x0

    goto/16 :goto_d3

    .line 973
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :catch_174
    move-exception v0

    move-object v1, v2

    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_154

    .line 969
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :catch_177
    move-exception v0

    move-object v1, v2

    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_134
.end method

.method private getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 8
    .param p1, "server"    # Ljava/net/Socket;

    .prologue
    .line 931
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 932
    .local v2, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 933
    .local v1, "sockAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "resolvedHostName":Ljava/lang/String;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getServerConnectedSocket: Resolved Hostname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getServerConnectedSocket: Resolved port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {p0, v0, v3}, getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    return-object v3
.end method

.method private getUserCredential()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    iget-object v1, p0, credentialSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_3
    iget-object v0, p0, USER_PROXY_CREDENTIAL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_a

    .line 190
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 192
    :cond_a
    iget-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object v0
.end method

.method private initializeHandlerThread()V
    .registers 4

    .prologue
    .line 176
    const-string v0, "KnoxVpnProxyServer"

    const-string v1, "In initializeHandlerThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProxyAuthenticationHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 178
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    .line 180
    return-void
.end method

.method private isAuthenticationRequired(Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;
    .param p4, "randomCacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 434
    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 435
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Returning AUTHENTICATION_IN_PROGRESS_FROM_STATE without processing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_16
    return v2

    .line 438
    :cond_17
    const/4 v1, 0x0

    .line 439
    .local v1, "remoteAuthStatus":Z
    const/4 v0, 0x0

    .line 440
    .local v0, "credentials":Ljava/lang/String;
    invoke-direct {p0}, getUserCredential()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-direct {p0, p1, p3}, getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v5

    iput-object v5, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 443
    iget-object v5, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v5, :cond_29

    .line 444
    const/4 v2, -0x2

    goto :goto_16

    .line 447
    :cond_29
    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    if-nez v5, :cond_41

    iget-object v5, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    if-eqz v5, :cond_55

    .line 449
    :cond_41
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_4c

    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "*****************  Authentication type authenticator and NOT AUTHORIZED ****************"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4c
    invoke-virtual {p0, p4}, startCredentialsActivity(Ljava/lang/String;)V

    .line 451
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    goto :goto_16

    .line 454
    :cond_55
    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_96

    .line 455
    iget-object v2, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-interface {v2, v0, p2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v1

    .line 456
    if-nez v1, :cond_7f

    .line 457
    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 458
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "CREDENTIAL_PRESENT_NOT_AUTHORIZED set. Resetting to AUTHORIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 461
    :cond_7d
    const/4 v2, 0x1

    goto :goto_16

    .line 463
    :cond_7f
    iget-boolean v2, p0, isCredentialsPredefined:Z

    if-eqz v2, :cond_8c

    .line 464
    const-string v2, "KnoxVpnProxyServer"

    const-string v4, "Error with pre-defined credentials. Nothing to do."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 465
    goto :goto_16

    .line 467
    :cond_8c
    invoke-virtual {p0, p4}, startCredentialsActivity(Ljava/lang/String;)V

    .line 468
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    move v2, v4

    .line 469
    goto :goto_16

    .line 472
    :cond_96
    iget-object v2, p0, mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    const/4 v5, 0x0

    invoke-interface {v2, v5, p2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v1

    .line 473
    if-nez v1, :cond_a7

    .line 474
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    move v2, v3

    .line 475
    goto/16 :goto_16

    .line 477
    :cond_a7
    invoke-virtual {p0, p4}, startCredentialsActivity(Ljava/lang/String;)V

    .line 478
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    move v2, v4

    .line 479
    goto/16 :goto_16
.end method

.method private isSocketOperational(Ljava/net/Socket;)Z
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 1201
    if-eqz p1, :cond_a

    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    .line 1205
    :cond_a
    :goto_a
    return v1

    .line 1202
    :catch_b
    move-exception v0

    .line 1203
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "checkIfSocketOperational Exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method private processPredefinedCredentials(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .registers 8
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 217
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "check proxyCredentialsPreDefined is true."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "cred":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "password":Ljava/lang/String;
    if-eqz v2, :cond_86

    if-eqz v1, :cond_86

    .line 222
    new-instance v0, Ljava/lang/String;

    .end local v0    # "cred":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 223
    .restart local v0    # "cred":Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, p0, isCredentialsPredefined:Z

    .line 224
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 225
    invoke-direct {p0, v0}, setUserCredential(Ljava/lang/String;)V

    .line 226
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_65

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPredefinedCredentials : Authstate= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_65
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_86

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPredefinedCredentials : credentials= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, getUserCredential()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_86
    return-void
.end method

.method private sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 582
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 583
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 584
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 585
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 586
    return-void
.end method

.method private sendMessageToHandler(ILjava/lang/Object;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1193
    iget-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    if-eqz v1, :cond_10

    .line 1194
    iget-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1195
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1197
    .end local v0    # "msg":Landroid/os/Message;
    :cond_10
    return-void
.end method

.method private sendUIIntent(Ljava/lang/String;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "currentUserId":I
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v6

    iget-object v7, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 487
    .local v5, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v4

    .line 488
    .local v4, "set":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 489
    .local v3, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v6

    if-ltz v6, :cond_13

    .line 490
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v0

    .line 491
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startCredentialsActivity for userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v3    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_44
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "vpn.knoxvpn.proxy-authentication-action"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x50800000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    const-string v6, "com.android.vpndialogs"

    const-string v7, "com.android.vpndialogs.KnoxVpnProxyLoginActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v6, "THREAD_ID"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v6, "PROFILE_NAME"

    iget-object v7, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 504
    return-void
.end method

.method private setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    .registers 4
    .param p1, "state"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .prologue
    .line 137
    iget-object v1, p0, stateSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_3
    iput-object p1, p0, CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 277
    iput p1, p0, mPort:I

    .line 278
    return-void
.end method

.method private setUserCredential(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v1, p0, credentialSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_3
    iget-object v0, p0, USER_PROXY_CREDENTIAL:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, USER_PROXY_CREDENTIAL:Ljava/lang/String;

    .line 151
    :cond_a
    iput-object p1, p0, USER_PROXY_CREDENTIAL:Ljava/lang/String;

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method


# virtual methods
.method public getNTLMType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "type2Message"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 525
    .local v1, "ntlmType3String":Ljava/lang/String;
    :try_start_1
    const-string v3, "NTLM "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "updatedType2Message":[Ljava/lang/String;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_27

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initial ntlm message is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_27
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-nez v3, :cond_39

    .line 528
    :cond_30
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "NTLMType2Message is not in expected format"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v3, 0x0

    .line 536
    .end local v2    # "updatedType2Message":[Ljava/lang/String;
    :goto_38
    return-object v3

    .line 531
    .restart local v2    # "updatedType2Message":[Ljava/lang/String;
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NTLM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_70

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "final ntlm message is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_70} :catch_72

    .end local v2    # "updatedType2Message":[Ljava/lang/String;
    :cond_70
    :goto_70
    move-object v3, v1

    .line 536
    goto :goto_38

    .line 533
    :catch_72
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Exception occured while trying to get the Type3Message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, mPort:I

    return v0
.end method

.method public handleScreenUnlock()V
    .registers 3

    .prologue
    .line 514
    const-string v0, "KnoxVpnProxyServer"

    const-string/jumbo v1, "handleScreenUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 516
    const-string v0, "KnoxVpnProxyServer"

    const-string v1, "AuthenticationState.AUTHORIZATION_IN_PROGRESS. Starting UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, generateRandomNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, sendUIIntent(Ljava/lang/String;)V

    .line 520
    :cond_22
    return-void
.end method

.method public onCredentialReceive(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    .line 540
    const-string v0, "KnoxVpnProxyServer"

    const-string v1, "In onCredentialReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-nez p1, :cond_18

    .line 544
    :try_start_9
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v0}, setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 545
    if-eqz p2, :cond_13

    .line 546
    invoke-interface {p2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_22

    .line 550
    :cond_13
    :goto_13
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, sendMessageToHandler(ILjava/lang/Object;)V

    .line 552
    :cond_18
    const/4 v0, 0x2

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V

    invoke-direct {p0, v0, v1}, sendMessageToHandler(ILjava/lang/Object;)V

    .line 553
    return-void

    .line 549
    :catch_22
    move-exception v0

    goto :goto_13
.end method

.method public restartServer()I
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, stopServer()V

    .line 273
    invoke-virtual {p0}, startServer()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    iget-object v3, p0, mServerSocket:Ljava/net/ServerSocket;

    if-nez v3, :cond_10

    .line 287
    iput-boolean v6, p0, mIsRunning:Z

    .line 288
    iget-object v3, p0, mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-interface {v3, v4, v7, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    .line 321
    :cond_f
    :goto_f
    return-void

    .line 292
    :cond_10
    const/4 v3, 0x0

    :try_start_11
    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_5b

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "acceptSocket":Ljava/net/Socket;
    :goto_1f
    iget-boolean v3, p0, mIsRunning:Z

    if-eqz v3, :cond_84

    .line 302
    :try_start_23
    iget-object v3, p0, mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 304
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V

    .line 305
    .local v2, "parser":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
    iget-object v3, p0, mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3e} :catch_3f

    goto :goto_1f

    .line 309
    .end local v2    # "parser":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
    :catch_3f
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while accepting the packets from the local proxy port for the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 293
    .end local v0    # "acceptSocket":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5b
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while trying to fetch the list of uid added to the profile during starting the local server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput-boolean v6, p0, mIsRunning:Z

    .line 296
    iget-object v3, p0, mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-interface {v3, v4, v7, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    goto :goto_f

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "acceptSocket":Ljava/net/Socket;
    :cond_80
    :try_start_80
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_3f

    goto :goto_1f

    .line 313
    :cond_84
    iput-boolean v6, p0, mIsRunning:Z

    .line 314
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 316
    :try_start_8e
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_93

    goto/16 :goto_f

    .line 317
    :catch_93
    move-exception v1

    .line 318
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Exception occured while trying to close the socket"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method protected declared-synchronized startCredentialsActivity(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    move-result v0

    if-eqz v0, :cond_f

    .line 511
    :goto_d
    monitor-exit p0

    return-void

    .line 510
    :cond_f
    :try_start_f
    invoke-direct {p0, p1}, sendUIIntent(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 508
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startServer()I
    .registers 6

    .prologue
    .line 232
    monitor-enter p0

    const/4 v1, -0x1

    .line 234
    .local v1, "port":I
    :try_start_2
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, mServerSocket:Ljava/net/ServerSocket;

    .line 235
    iget-object v2, p0, mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_43

    .line 236
    iget-object v2, p0, mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 237
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The local port assigned for PAC proxy usage and for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, v1}, setPort(I)V

    .line 239
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsRunning:Z

    .line 240
    invoke-virtual {p0}, start()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_4f
    .catchall {:try_start_2 .. :try_end_41} :catchall_76

    .line 250
    :goto_41
    monitor-exit p0

    return v1

    .line 242
    :cond_43
    const/4 v2, 0x0

    :try_start_44
    iput-boolean v2, p0, mIsRunning:Z

    .line 243
    iget-object v2, p0, mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_4f
    .catchall {:try_start_44 .. :try_end_4e} :catchall_76

    goto :goto_41

    .line 245
    :catch_4f
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start proxy server for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsRunning:Z

    .line 248
    iget-object v2, p0, mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_76

    goto :goto_41

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_76
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopServer()V
    .registers 6

    .prologue
    .line 254
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, mIsRunning:Z

    .line 255
    iget-object v1, p0, mServerSocket:Ljava/net/ServerSocket;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_3c

    if-eqz v1, :cond_1e

    .line 257
    :try_start_8
    iget-object v1, p0, mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, mServerSocket:Ljava/net/ServerSocket;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_3f
    .catchall {:try_start_8 .. :try_end_10} :catchall_85

    .line 263
    const/4 v1, 0x1

    :try_start_11
    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v2

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_20
    .catchall {:try_start_11 .. :try_end_1e} :catchall_3c

    .line 269
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 264
    :catch_20
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_3c

    goto :goto_1e

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    :catch_3f
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_40
    const-string v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop proxy server for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_85

    .line 263
    const/4 v1, 0x1

    :try_start_5b
    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v2

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_68} :catch_69
    .catchall {:try_start_5b .. :try_end_68} :catchall_3c

    goto :goto_1e

    .line 264
    :catch_69
    move-exception v0

    .line 265
    :try_start_6a
    const-string v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_3c

    goto :goto_1e

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v1

    .line 263
    const/4 v2, 0x1

    :try_start_87
    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v3

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_94} :catch_95
    .catchall {:try_start_87 .. :try_end_94} :catchall_3c

    .line 266
    :goto_94
    :try_start_94
    throw v1

    .line 264
    :catch_95
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_3c

    goto :goto_94
.end method

.method protected updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    .registers 15
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v8

    iget-object v9, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 326
    .local v7, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 327
    .local v4, "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v2, "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_144

    .line 363
    .end local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_17
    return-void

    .line 330
    .restart local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :pswitch_18
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 331
    .local v5, "uidListEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_20

    .line 333
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_20

    .line 334
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_20

    .line 360
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5    # "uidListEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_5b
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurred while trying to apply rules to access local host for the vpn profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_77
    :try_start_77
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToDenyAccessToLocalHost(I)V

    .line 338
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, getPort()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    .line 339
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->rulesToCreateDownloadChain(I)V

    .line 340
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 341
    .local v6, "user":Ljava/lang/Integer;
    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "com.android.providers.downloads"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 343
    .end local v6    # "user":Ljava/lang/Integer;
    :cond_c6
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, getPort()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowDownloadManager(Ljava/util/HashSet;I)V

    .line 345
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, getPort()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToMarkDownloadManagerPackets(Ljava/lang/String;II)V

    goto/16 :goto_17

    .line 348
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_e6
    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfActiveUsers()Ljava/util/HashSet;

    move-result-object v3

    .line 349
    .local v3, "listOfUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_f2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_118

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 350
    .restart local v6    # "user":Ljava/lang/Integer;
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-direct {p0}, getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "com.android.providers.downloads"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    invoke-virtual {p0}, getPort()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowDownload(II)V

    goto :goto_f2

    .line 353
    .end local v6    # "user":Ljava/lang/Integer;
    :cond_118
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToDenyAccessToLocalHost(I)V

    .line 354
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, getPort()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    .line 355
    invoke-direct {p0}, getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->rulesToDeleteDownloadChain(I)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_141} :catch_5b

    goto/16 :goto_17

    .line 328
    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_18
        :pswitch_e6
    .end packed-switch
.end method
