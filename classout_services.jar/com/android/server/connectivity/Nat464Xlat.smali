.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.debug_level"

.field static final LOG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field static final LOG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field private static final TAG:Ljava/lang/String; = "Nat464Xlat"


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mIsRunning:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 81
    iput-object p2, p0, mNMService:Landroid/os/INetworkManagementService;

    .line 82
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 83
    iput-object p4, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 84
    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, mIface:Ljava/lang/String;

    .line 124
    iput-object v0, p0, mBaseIface:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsRunning:Z

    .line 126
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 237
    :try_start_0
    iget-object v2, p0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 238
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 241
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :goto_a
    return-object v2

    .line 239
    :catch_b
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    :goto_c
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting link properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    goto :goto_a

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_26
    move-exception v1

    goto :goto_c
.end method

.method private static isDebugLevelNotLow()Z
    .registers 3

    .prologue
    .line 258
    const-string/jumbo v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "sysLoglevel":Ljava/lang/String;
    const-string v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 261
    const/4 v1, 0x0

    .line 263
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .registers 7
    .param p1, "clatAddress"    # Landroid/net/LinkAddress;

    .prologue
    .line 218
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 219
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, mIface:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 230
    .local v0, "ipv4Default":Landroid/net/RouteInfo;
    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 231
    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 232
    return-object v1
.end method

.method private maybeSetIpv6NdOffload(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .prologue
    .line 246
    iget-object v1, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 255
    :goto_b
    return-void

    .line 250
    :cond_c
    :try_start_c
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_57

    const-string v1, "En"

    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "abling ND offload on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_31} :catch_5a

    goto :goto_b

    .line 252
    :catch_32
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :goto_33
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing IPv6 ND offload on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    const-string v1, "Dis"
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_59} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_59} :catch_5a

    goto :goto_17

    .line 252
    :catch_5a
    move-exception v0

    goto :goto_33
.end method

.method public static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 10
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 92
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 93
    .local v3, "netType":I
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 94
    .local v0, "connected":Z
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v6, :cond_67

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v2

    .line 98
    .local v2, "hasIPv4Address":Z
    :goto_18
    invoke-static {}, isDebugLevelNotLow()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 99
    const-string v6, "Nat464Xlat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requiresClat: netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasIPv4Address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_4b
    const-string/jumbo v6, "persist.net.doxlat"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 104
    .local v1, "doXlat":Z
    if-nez v1, :cond_5b

    .line 105
    const-string v6, "Nat464Xlat"

    const-string v7, "Android Xlat is disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_5b
    if-eqz v0, :cond_66

    if-nez v2, :cond_66

    if-nez v3, :cond_63

    if-nez v1, :cond_65

    :cond_63
    if-ne v3, v5, :cond_66

    :cond_65
    move v4, v5

    :cond_66
    return v4

    .end local v1    # "doXlat":Z
    .end local v2    # "hasIPv4Address":Z
    :cond_67
    move v2, v4

    .line 94
    goto :goto_18
.end method

.method private updateConnectivityService(Landroid/net/LinkProperties;)V
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 189
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const v2, 0x81003

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 191
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending message to ConnectivityService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "oldLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 201
    iget-object v2, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v2, :cond_63

    iget-boolean v2, p0, mIsRunning:Z

    if-eqz v2, :cond_63

    iget-object v2, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_63

    iget-object v2, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, mIface:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 205
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clatd running, updating NAI for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p1, :cond_63

    .line 207
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 208
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, mIface:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 209
    iget-object v2, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 215
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_63
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 270
    invoke-virtual {p0}, isStarted()Z

    move-result v2

    if-eqz v2, :cond_71

    if-eqz p2, :cond_71

    iget-object v2, p0, mIface:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 271
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is up, mIsRunning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string/jumbo v2, "exynos7580"

    const-string/jumbo v3, "ro.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.clatd.v4-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "up"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_67
    iget-boolean v2, p0, mIsRunning:Z

    if-nez v2, :cond_71

    .line 278
    invoke-direct {p0, p1}, getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    .line 279
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    if-nez v0, :cond_72

    .line 290
    .end local v0    # "clatAddress":Landroid/net/LinkAddress;
    :cond_71
    :goto_71
    return-void

    .line 282
    .restart local v0    # "clatAddress":Landroid/net/LinkAddress;
    :cond_72
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsRunning:Z

    .line 283
    iget-object v2, p0, mBaseIface:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, maybeSetIpv6NdOffload(Ljava/lang/String;Z)V

    .line 284
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 285
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 286
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding stacked link "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on top of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mBaseIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, v1}, updateConnectivityService(Landroid/net/LinkProperties;)V

    goto :goto_71
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0}, isStarted()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, mIface:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 295
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed, mIsRunning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-boolean v1, p0, mIsRunning:Z

    if-eqz v1, :cond_63

    .line 306
    :try_start_3d
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 307
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, mBaseIface:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_49} :catch_66
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_49} :catch_64

    .line 311
    :goto_49
    iget-object v1, p0, mBaseIface:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, maybeSetIpv6NdOffload(Ljava/lang/String;Z)V

    .line 312
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 313
    .local v0, "lp":Landroid/net/LinkProperties;
    iget-object v1, p0, mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    .line 314
    invoke-direct {p0}, clear()V

    .line 315
    invoke-direct {p0, v0}, updateConnectivityService(Landroid/net/LinkProperties;)V

    .line 318
    .end local v0    # "lp":Landroid/net/LinkProperties;
    :cond_63
    return-void

    .line 308
    :catch_64
    move-exception v1

    goto :goto_49

    :catch_66
    move-exception v1

    goto :goto_49
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, mIface:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public start()V
    .registers 5

    .prologue
    .line 132
    invoke-virtual {p0}, isStarted()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 133
    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "startClat: already started"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_e
    return-void

    .line 137
    :cond_f
    iget-object v1, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v1, :cond_1e

    .line 138
    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 143
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_3a

    .line 149
    iget-object v1, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mBaseIface:Ljava/lang/String;

    .line 150
    iget-object v1, p0, mBaseIface:Ljava/lang/String;

    if-nez v1, :cond_57

    .line 151
    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "startClat: Can\'t start clat on null interface"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 144
    :catch_3a
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startClat: Can\'t register interface observer for clat on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mIface:Ljava/lang/String;

    .line 157
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_89
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, mBaseIface:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_90} :catch_92
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_90} :catch_ad

    goto/16 :goto_e

    .line 160
    :catch_92
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :goto_93
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting clatd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ad
    move-exception v0

    goto :goto_93
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 169
    invoke-virtual {p0}, isStarted()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 170
    const-string v1, "Nat464Xlat"

    const-string v2, "Stopping clatd"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string/jumbo v1, "exynos7580"

    const-string/jumbo v2, "ro.chipname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.clatd.v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "down"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_39
    :try_start_39
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, mBaseIface:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_40} :catch_41

    .line 186
    :goto_40
    return-void

    .line 178
    :catch_41
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :goto_42
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clatd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5b
    const-string v1, "Nat464Xlat"

    const-string v2, "clatd: already stopped"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 178
    :catch_63
    move-exception v0

    goto :goto_42
.end method
