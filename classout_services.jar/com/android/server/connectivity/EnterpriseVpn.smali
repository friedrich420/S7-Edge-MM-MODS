.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final INVALID_PACKAGE_UID:I = -0x1

.field private static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field private static final NETWORKTYPE:Ljava/lang/String; = "Knox_VPN"

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final REMOVE:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "EnterpriseVpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final VPN_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private isMetaDataEnabled:Z

.field private mAddress:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLabel:Ljava/lang/String;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private final mUserId:I

.field private mV6Address:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    .line 165
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .registers 19
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "connService"    # Landroid/net/IConnectivityManager;
    .param p6, "userId"    # I

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 134
    const-string v2, ""

    iput-object v2, p0, mPackage:Ljava/lang/String;

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, mBitmap:Landroid/graphics/Bitmap;

    .line 141
    const-string v2, ""

    iput-object v2, p0, mLabel:Ljava/lang/String;

    .line 142
    const/4 v2, 0x0

    iput-boolean v2, p0, mRouteInfo:Z

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, isMetaDataEnabled:Z

    .line 494
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v2, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 171
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 172
    iput-object p3, p0, mPackage:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p4

    iput-object v0, p0, mNetd:Landroid/os/INetworkManagementService;

    .line 174
    move-object/from16 v0, p5

    iput-object v0, p0, mConnectivityService:Landroid/net/IConnectivityManager;

    .line 175
    move/from16 v0, p6

    iput v0, p0, mUserId:I

    .line 176
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 179
    .local v10, "token":J
    :try_start_37
    iget-object v2, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v4, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 180
    iget-object v2, p0, mPackage:Ljava/lang/String;

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, getAppUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, mOwnerUID:I

    .line 181
    const-string v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOwnerUID value is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, mOwnerUID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v2, p0, mOwnerUID:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_79

    .line 183
    iget-object v2, p0, mConnectivityService:Landroid/net/IConnectivityManager;

    iget v4, p0, mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 184
    iget-object v2, p0, mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_79} :catch_bc
    .catchall {:try_start_37 .. :try_end_79} :catchall_dd

    .line 190
    :cond_79
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    :goto_7c
    new-instance v3, Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 202
    .local v3, "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v5, "localeFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v4, 0x11

    const/4 v6, 0x0

    const-string v7, "Knox_VPN"

    const-string v9, ""

    invoke-direct {v2, v4, v6, v7, v9}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    .line 208
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v2, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 209
    iget-object v2, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 210
    iget-object v2, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 211
    return-void

    .line 187
    .end local v3    # "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "localeFilter":Landroid/content/IntentFilter;
    :catch_bc
    move-exception v8

    .line 188
    .local v8, "e":Ljava/lang/Exception;
    :try_start_bd
    const-string v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to register mObserver : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_bd .. :try_end_d9} :catchall_dd

    .line 190
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7c

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_dd
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 112
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-boolean v0, p0, mRouteInfo:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget v0, p0, mUserId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 112
    iget-object v0, p0, mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method private agentConnect(Ljava/lang/String;)V
    .registers 22
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v9, Landroid/net/LinkProperties;

    invoke-direct {v9}, Landroid/net/LinkProperties;-><init>()V

    .line 400
    .local v9, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_30

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 404
    .local v14, "dnsServer":Ljava/lang/String;
    invoke-static {v14}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 405
    .local v12, "address":Ljava/net/InetAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1c

    .line 409
    .end local v12    # "address":Ljava/net/InetAddress;
    .end local v14    # "dnsServer":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v2, :cond_b2

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 411
    .local v12, "address":Landroid/net/LinkAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 412
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_81

    .line 413
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mAddress:Ljava/lang/String;

    .line 414
    const-string v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_81
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_42

    .line 417
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mV6Address:Ljava/lang/String;

    .line 418
    const-string v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mV6Address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 424
    .end local v12    # "address":Landroid/net/LinkAddress;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_b2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v13, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_df

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_c9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 427
    .local v15, "domain":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c9

    .line 430
    .end local v15    # "domain":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_df
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v11, Landroid/net/NetworkMisc;

    invoke-direct {v11}, Landroid/net/NetworkMisc;-><init>()V

    .line 436
    .local v11, "networkMisc":Landroid/net/NetworkMisc;
    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 437
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 441
    .local v18, "token":J
    :try_start_10c
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$2;

    move-object/from16 v0, p0

    iget-object v4, v0, mLooper:Landroid/os/Looper;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    const-string v6, "Knox_VPN"

    move-object/from16 v0, p0

    iget-object v7, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_12a
    .catchall {:try_start_10c .. :try_end_12a} :catchall_12e

    .line 449
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    return-void

    .line 449
    :catchall_12e
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 4
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 463
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 464
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 465
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 455
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz p2, :cond_1a

    .line 457
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "EnterpriseVpn"

    const-string v1, "agentDisconnect() : send "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_17
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 460
    :cond_1a
    return-void
.end method

.method private closeInterface()V
    .registers 3

    .prologue
    .line 727
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "EnterpriseVpn"

    const-string v1, "closeInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_b
    iget-object v0, p0, mInterface:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 729
    iget-object v0, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, jniReset(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, mInterface:Ljava/lang/String;

    .line 732
    :cond_17
    return-void
.end method

.method private enforceControlPermission()V
    .registers 8

    .prologue
    .line 597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v6, 0x3e8

    if-ne v3, v6, :cond_9

    .line 612
    :goto_8
    return-void

    .line 600
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 601
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 604
    .local v4, "token":J
    :try_start_15
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 605
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 606
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_3b
    .catchall {:try_start_15 .. :try_end_2a} :catchall_40

    if-ne v1, v3, :cond_30

    .line 612
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :cond_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_33
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Unauthorized Caller"

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    :catch_3b
    move-exception v3

    .line 612
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_40
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 809
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 812
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    .line 816
    .local v2, "result":I
    :goto_a
    return v2

    .line 813
    .end local v2    # "result":I
    :catch_b
    move-exception v0

    .line 814
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_a
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    monitor-enter p0

    :try_start_1
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "EnterpriseVpn"

    const-string/jumbo v3, "getDomainsByProfileName()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_d
    const-string/jumbo v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_4e

    move-result-object v1

    .line 797
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_14
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 798
    invoke-direct {p0}, getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_2f
    .catchall {:try_start_14 .. :try_end_23} :catchall_4e

    move-result-object v2

    .line 805
    :goto_24
    monitor-exit p0

    return-object v2

    .line 800
    :cond_26
    :try_start_26
    invoke-direct {p0}, getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2f
    .catchall {:try_start_26 .. :try_end_2d} :catchall_4e

    move-result-object v2

    goto :goto_24

    .line 802
    :catch_2f
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4e

    .line 805
    const/4 v2, 0x0

    goto :goto_24

    .line 794
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_4e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_11

    .line 238
    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 240
    :cond_11
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method private getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;
    .registers 2

    .prologue
    .line 576
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 256
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 259
    :cond_11
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .registers 4

    .prologue
    .line 244
    iget-object v1, p0, mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1b

    .line 245
    const-string/jumbo v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 246
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_15

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_15
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 251
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1b
    iget-object v1, p0, mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private getUIDForPackage(ILjava/lang/String;)I
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 556
    const/4 v3, -0x1

    .line 558
    .local v3, "uid":I
    :try_start_1
    invoke-direct {p0}, getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 559
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 560
    .local v4, "token":J
    const/16 v6, 0x2080

    invoke-interface {v2, p2, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 561
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2b

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for info :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2b
    if-eqz v1, :cond_3a

    .line 563
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_38

    const-string v6, "EnterpriseVpn"

    const-string v7, "application uid for info : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_38
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 566
    :cond_3a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_63

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_64

    .line 572
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "token":J
    :cond_63
    :goto_63
    return v3

    .line 568
    :catch_64
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getUIDForPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v3, -0x1

    goto :goto_63
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 536
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2a

    const-string v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 540
    .local v2, "token":J
    :try_start_2e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string/jumbo v1, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string/jumbo v1, "extra_profile_name"

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const-string/jumbo v1, "extra_tun_id"

    iget-object v4, p0, mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string/jumbo v1, "tun_address"

    iget-object v4, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string/jumbo v1, "tunv6_address"

    iget-object v4, p0, mV6Address:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string/jumbo v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_86

    const-string v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_86
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_2e .. :try_end_8d} :catchall_91

    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    return-void

    .line 551
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_91
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "EnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_27
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_38

    .line 232
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 234
    :cond_38
    return-void
.end method


# virtual methods
.method public agentDisconnect()V
    .registers 5

    .prologue
    .line 468
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 469
    .local v0, "temp":Z
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentDisconnect() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_22
    if-eqz v0, :cond_2e

    .line 471
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v1, v2}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 474
    :cond_2e
    return-void
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 619
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104081d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104081e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "text":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080a53

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 632
    .local v0, "notification":Landroid/app/Notification;
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 30
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    .line 299
    .local v17, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_b2

    move-result-object v18

    .line 300
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 302
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v27, v0

    invoke-interface/range {v24 .. v27}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 303
    if-eqz v5, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_40
    .catchall {:try_start_16 .. :try_end_36} :catchall_b2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_44

    .line 304
    :cond_3c
    const/16 v19, 0x0

    .line 394
    :goto_3e
    monitor-exit p0

    return-object v19

    .line 306
    :catch_40
    move-exception v8

    .line 307
    .local v8, "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_3e

    .line 311
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_44
    :try_start_44
    new-instance v15, Landroid/content/Intent;

    const-string v24, "android.net.VpnService"

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_b2

    move-result-wide v20

    .line 316
    .local v20, "token":J
    :try_start_64
    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 317
    .local v22, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-nez v24, :cond_85

    const-string/jumbo v24, "no_config_vpn"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b5

    .line 318
    :cond_85
    new-instance v24, Ljava/lang/SecurityException;

    const-string v25, "Restricted users cannot establish VPNs"

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_8d} :catch_8d
    .catchall {:try_start_64 .. :try_end_8d} :catchall_ad

    .line 330
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :catch_8d
    move-exception v8

    .line 331
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_8e
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_ad
    .catchall {:try_start_8e .. :try_end_ad} :catchall_ad

    .line 333
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_ad
    move-exception v24

    :try_start_ae
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b2

    .line 298
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "token":J
    :catchall_b2
    move-exception v24

    monitor-exit p0

    throw v24

    .line 321
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "token":J
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_b5
    :try_start_b5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 322
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_f0

    .line 323
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 326
    :cond_f0
    const-string v24, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_127

    .line 327
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " does not require "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_127} :catch_8d
    .catchall {:try_start_b5 .. :try_end_127} :catchall_ad

    .line 333
    :cond_127
    :try_start_127
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mProfileName:Ljava/lang/String;

    .line 339
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mLabel:Ljava/lang/String;

    .line 340
    const/16 v23, -0x1

    .line 341
    .local v23, "width":I
    const/4 v11, -0x1

    .line 342
    .local v11, "height":I
    const/4 v10, -0x1

    .line 343
    .local v10, "fixed_size":I
    const/4 v13, 0x0

    .line 347
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, isMetaDataEnabled:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, jniCreate(IZ)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_164
    .catchall {:try_start_127 .. :try_end_164} :catchall_b2

    move-result-object v19

    .line 350
    .local v19, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_165
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v25, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, jniGetName(I)Ljava/lang/String;

    move-result-object v16

    .line 352
    .local v16, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_18e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1d9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 355
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_1b4} :catch_1b5
    .catchall {:try_start_165 .. :try_end_1b4} :catchall_b2

    goto :goto_18e

    .line 384
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "interfaze":Ljava/lang/String;
    :catch_1b5
    move-exception v8

    .line 385
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1b6
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception in creating tun interface"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d2
    .catchall {:try_start_1b6 .. :try_end_1d2} :catchall_b2

    .line 387
    :try_start_1d2
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d5} :catch_305
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_b2

    .line 391
    :goto_1d5
    const/16 v19, 0x0

    goto/16 :goto_3e

    .line 357
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "interfaze":Ljava/lang/String;
    :cond_1d9
    :try_start_1d9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f7

    .line 358
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "At least one address must be specified"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 360
    :cond_1f7
    new-instance v7, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V

    .line 361
    .local v7, "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_240

    .line 362
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot bind "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 364
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v24, v0

    if-eqz v24, :cond_257

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 367
    :cond_257
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27c

    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_27c

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, jniReset(Ljava/lang/String;)V

    .line 371
    :cond_27c
    move-object/from16 v0, p0

    iput-object v7, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 372
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mInterface:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, agentConnect(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 382
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, sendInterfaceStateToKnoxVpn(I)V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_2d5} :catch_1b5
    .catchall {:try_start_1d9 .. :try_end_2d5} :catchall_b2

    .line 393
    :try_start_2d5
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Established by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 388
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "interfaze":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_305
    move-exception v9

    .line 389
    .local v9, "ex":Ljava/lang/Exception;
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception in closing tun interface"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_322
    .catchall {:try_start_2d5 .. :try_end_322} :catchall_b2

    goto/16 :goto_1d5
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataStateInIP()Z
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, isMetaDataEnabled:Z

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPersonaUserIds > mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v0, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 781
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_6f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6f

    .line 782
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_55

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPersonaUserIds > persona size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 784
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 787
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_6f
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_7b

    const-string v4, "EnterpriseVpn"

    const-string/jumbo v5, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_7b
    return-object v0
.end method

.method public hideNotification()V
    .registers 10

    .prologue
    .line 735
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "EnterpriseVpn"

    const-string/jumbo v7, "hideNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_c
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 738
    .local v3, "nm":Landroid/app/NotificationManager;
    if-eqz v3, :cond_6b

    .line 739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 740
    .local v4, "identity":J
    invoke-virtual {p0}, getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 741
    .local v1, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    if-eqz v1, :cond_68

    .line 743
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 744
    .local v0, "domain":I
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_5c

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_5c
    const/4 v6, 0x0

    add-int/lit16 v7, v0, 0x3e9

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2f

    .line 748
    .end local v0    # "domain":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_68
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    .end local v1    # "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "identity":J
    :cond_6b
    return-void
.end method

.method public hideNotification(I)V
    .registers 8
    .param p1, "domain"    # I

    .prologue
    .line 753
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_1d

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideNotification > domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_1d
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 756
    .local v2, "nm":Landroid/app/NotificationManager;
    if-eqz v2, :cond_3c

    .line 757
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 758
    .local v0, "identity":J
    const/4 v3, 0x0

    add-int/lit16 v4, p1, 0x3e9

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 759
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 761
    .end local v0    # "identity":J
    :cond_3c
    return-void
.end method

.method public declared-synchronized prepare()Z
    .registers 4

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, enforceControlPermission()V

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "prepareResult":Z
    iget-object v1, p0, mInterface:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 274
    iget-object v1, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v1, :cond_17

    .line 275
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 278
    :cond_17
    const/4 v1, 0x2

    invoke-direct {p0, v1}, sendInterfaceStateToKnoxVpn(I)V

    .line 279
    invoke-direct {p0}, closeInterface()V

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 281
    const/4 v0, 0x1

    .line 283
    :cond_22
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v2, "disconnected"

    invoke-direct {p0, v1, v2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 284
    monitor-exit p0

    return v0

    .line 271
    .end local v0    # "prepareResult":Z
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public refreshNotification(ZI)V
    .registers 11
    .param p1, "optionAdd"    # Z
    .param p2, "domain"    # I

    .prologue
    .line 764
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_27

    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshNotification > domain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", optionAdd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 767
    .local v2, "identity":J
    :try_start_2b
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 769
    .local v1, "nm":Landroid/app/NotificationManager;
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v5, v6, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    .line 770
    .local v4, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    add-int/lit16 v6, p2, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4d} :catch_51

    .line 774
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    :goto_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    return-void

    .line 771
    :catch_51
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method public setMetaDataStateInIP(Z)V
    .registers 2
    .param p1, "metaState"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, isMetaDataEnabled:Z

    .line 217
    return-void
.end method

.method public showNotification(Lcom/android/internal/net/VpnConfig;Z)V
    .registers 19
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "optionAdd"    # Z

    .prologue
    .line 636
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_2d

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > profileName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , optionAdd : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const-string/jumbo v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 640
    .local v9, "nm":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3e

    if-nez v9, :cond_46

    .line 641
    :cond_3e
    const-string v12, "EnterpriseVpn"

    const-string v13, "Error : can not init"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_45
    :goto_45
    return-void

    .line 645
    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 646
    if-eqz v9, :cond_45

    if-eqz p1, :cond_45

    .line 647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 649
    .local v6, "identity":J
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_62

    const-string v12, "EnterpriseVpn"

    const-string/jumbo v13, "showNotification > KNOX 2.0 enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_62
    move-object/from16 v0, p0

    iget-boolean v12, v0, mRouteInfo:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c3

    .line 651
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_75

    const-string v12, "EnterpriseVpn"

    const-string/jumbo v13, "showNotification > vpn type is system"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_75
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v0, v1, v13}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v10

    .line 653
    .local v10, "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    add-int/lit16 v13, v13, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v15, v0, mUserId:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v12, v13, v10, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 654
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_bf

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > domain : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mUserId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v10    # "notification":Landroid/app/Notification;
    :cond_bf
    :goto_bf
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    .line 656
    :cond_c3
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_cf

    const-string v12, "EnterpriseVpn"

    const-string/jumbo v13, "showNotification > vpn type is per-app"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_cf
    :try_start_cf
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 659
    .local v3, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_14f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_14f

    .line 660
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_e5
    :goto_e5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 661
    .local v8, "item":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 662
    .local v2, "domain":I
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v0, v1, v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v10

    .line 663
    .restart local v10    # "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    add-int/lit16 v13, v2, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v12, v13, v10, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 664
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_e5

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > keyicon notified to user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_12f} :catch_130

    goto :goto_e5

    .line 681
    .end local v2    # "domain":I
    .end local v3    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "item":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    :catch_130
    move-exception v4

    .line 682
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    .line 673
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14f
    :try_start_14f
    invoke-virtual/range {p0 .. p0}, getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v11

    .line 674
    .local v11, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_15f
    :goto_15f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 676
    .local v8, "item":I
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v8}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v10

    .line 677
    .restart local v10    # "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    add-int/lit16 v13, v8, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v12, v13, v10, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 678
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_15f

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > keyicon notified to user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_1a8} :catch_130

    goto :goto_15f
.end method

.method public declared-synchronized updateNotification()V
    .registers 15

    .prologue
    .line 692
    monitor-enter p0

    :try_start_1
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_20

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_20
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 695
    .local v6, "nm":Landroid/app/NotificationManager;
    if-eqz v6, :cond_9d

    .line 696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 697
    .local v4, "identity":J
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104081d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 698
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104081e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, "text":Ljava/lang/String;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_4f

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_4f
    iget-boolean v10, p0, mRouteInfo:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9f

    .line 702
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_60

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is system"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_60
    iget-object v10, p0, mContext:Landroid/content/Context;

    iget v11, p0, mUserId:I

    invoke-static {v10, v11}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 704
    .local v7, "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    iget v11, p0, mUserId:I

    add-int/lit16 v11, v11, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 705
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_9a

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > domain : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v7    # "notification":Landroid/app/Notification;
    :cond_9a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_df

    .line 719
    .end local v4    # "identity":J
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_9d
    monitor-exit p0

    return-void

    .line 707
    .restart local v4    # "identity":J
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_9f
    :try_start_9f
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_ab

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is per-app"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_ab
    iget-object v10, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v10}, getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 709
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_9a

    .line 710
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 711
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 712
    .local v0, "domain":I
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 713
    .restart local v7    # "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    add-int/lit16 v11, v0, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_de
    .catchall {:try_start_9f .. :try_end_de} :catchall_df

    goto :goto_b9

    .line 692
    .end local v0    # "domain":I
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "identity":J
    .end local v6    # "nm":Landroid/app/NotificationManager;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :catchall_df
    move-exception v10

    monitor-exit p0

    throw v10
.end method
