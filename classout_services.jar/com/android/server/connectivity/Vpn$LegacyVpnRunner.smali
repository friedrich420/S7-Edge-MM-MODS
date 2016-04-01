.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCredentialResetFilter:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private mServerIP:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 20
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1436
    move-object/from16 v0, p1

    iput-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    .line 1437
    const-string v11, "LegacyVpnRunner"

    invoke-direct {p0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1387
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v12, -0x1

    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v11, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1390
    const-wide/16 v12, -0x1

    iput-wide v12, p0, mTimer:J

    .line 1396
    new-instance v11, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v11, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v11, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1416
    new-instance v11, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    invoke-direct {v11, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v11, p0, mCredentialResetFilter:Landroid/content/BroadcastReceiver;

    .line 1438
    # setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {p1 .. p2}, Lcom/android/server/connectivity/Vpn;->access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1440
    if-nez p4, :cond_c9

    const/4 v11, 0x2

    aget-object v11, p3, v11

    const-string/jumbo v12, "hybridrsa"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c9

    .line 1442
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "charon"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "mtpd"

    aput-object v13, v11, v12

    iput-object v11, p0, mDaemons:[Ljava/lang/String;

    .line 1446
    :goto_44
    const-string v11, "LegacyVpnRunner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Daemon[0]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mDaemons:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v11, 0x2

    new-array v11, v11, [[Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    # invokes: Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    # invokes: Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    iput-object v11, p0, mArguments:[[Ljava/lang/String;

    .line 1450
    iget-object v11, p0, mDaemons:[Ljava/lang/String;

    array-length v11, v11

    new-array v11, v11, [Landroid/net/LocalSocket;

    iput-object v11, p0, mSockets:[Landroid/net/LocalSocket;

    .line 1458
    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v11, p0, mOuterInterface:Ljava/lang/String;

    .line 1460
    iget-object v11, p0, mOuterInterface:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_dc

    .line 1461
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 1462
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .local v2, "arr$":[Landroid/net/Network;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_a1
    if-ge v6, v7, :cond_dc

    aget-object v9, v2, v6

    .line 1463
    .local v9, "network":Landroid/net/Network;
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 1464
    .local v8, "lp":Landroid/net/LinkProperties;
    if-eqz v8, :cond_c6

    iget-object v11, p0, mOuterInterface:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 1465
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 1466
    .local v10, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_c6

    iget-object v11, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1462
    .end local v10    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_c6
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    .line 1444
    .end local v2    # "arr$":[Landroid/net/Network;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .end local v9    # "network":Landroid/net/Network;
    :cond_c9
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "racoon"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "mtpd"

    aput-object v13, v11, v12

    iput-object v11, p0, mDaemons:[Ljava/lang/String;

    goto/16 :goto_44

    .line 1471
    :cond_dc
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1472
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1474
    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.security.STORAGE_CHANGED"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v4, "credentialResetFilter":Landroid/content/IntentFilter;
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, mCredentialResetFilter:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1476
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1380
    iget-object v0, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1380
    iget-object v0, p0, mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1380
    iget-object v0, p0, mDaemons:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1380
    iget-object v0, p0, mSockets:[Landroid/net/LocalSocket;

    return-object v0
.end method

.method private agentConnectForKnoxInterface()V
    .registers 21

    .prologue
    .line 1607
    new-instance v9, Landroid/net/LinkProperties;

    invoke-direct {v9}, Landroid/net/LinkProperties;-><init>()V

    .line 1608
    .local v9, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_4b

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1614
    .local v14, "dnsServer":Ljava/lang/String;
    invoke-static {v14}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 1615
    .local v12, "address":Ljava/net/InetAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_37

    .line 1619
    .end local v12    # "address":Ljava/net/InetAddress;
    .end local v14    # "dnsServer":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v2, :cond_e3

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 1621
    .local v12, "address":Landroid/net/LinkAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1622
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_ab

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$2402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1624
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_ab
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_65

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$2502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1628
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1634
    .end local v12    # "address":Landroid/net/LinkAddress;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_e3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1635
    .local v13, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_118

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_102
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_118

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1637
    .local v15, "domain":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_102

    .line 1640
    .end local v15    # "domain":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_118
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    new-instance v11, Landroid/net/NetworkMisc;

    invoke-direct {v11}, Landroid/net/NetworkMisc;-><init>()V

    .line 1646
    .local v11, "networkMisc":Landroid/net/NetworkMisc;
    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 1647
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 1649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1651
    .local v18, "token":J
    :try_start_14d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$3;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "VPN"

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$3;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, v17

    # setter for: Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->access$2702(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_182
    .catchall {:try_start_14d .. :try_end_182} :catchall_186

    .line 1659
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1661
    return-void

    .line 1659
    :catchall_186
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkpoint(Z)V
    .registers 10
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 1558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1559
    .local v0, "now":J
    iget-wide v4, p0, mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 1560
    iput-wide v0, p0, mTimer:J

    .line 1561
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1568
    :goto_13
    return-void

    .line 1562
    :cond_14
    iget-wide v4, p0, mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    .line 1563
    if-eqz p1, :cond_23

    const-wide/16 v2, 0xc8

    :cond_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13

    .line 1565
    :cond_27
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1566
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clear_arguments()V
    .registers 9

    .prologue
    .line 1548
    iget-object v2, p0, mArguments:[[Ljava/lang/String;

    .local v2, "arr$":[[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_1c

    aget-object v1, v2, v5

    .line 1549
    .local v1, "arguments":[Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 1550
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_e
    if-ge v4, v7, :cond_18

    aget-object v0, v3, v4

    .line 1551
    .local v0, "argument":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 1550
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1548
    .end local v0    # "argument":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_18
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_5

    .line 1555
    .end local v1    # "arguments":[Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private execute(Z)V
    .registers 34
    .param p1, "isKnoxProfile"    # Z

    .prologue
    .line 1732
    const/16 v24, 0x0

    .line 1735
    .local v24, "initFinished":Z
    const-string v31, ""

    .line 1736
    .local v31, "typeForAudit":Ljava/lang/String;
    const-string v11, ""

    .line 1737
    .local v11, "addressForAudit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_28

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v14, v2, v3

    .line 1739
    .local v14, "argumentsForAudit":[Ljava/lang/String;
    array-length v2, v14

    const/4 v3, 0x2

    if-le v2, v3, :cond_28

    .line 1740
    const/4 v2, 0x1

    aget-object v31, v14, v2

    .line 1741
    const/4 v2, 0x2

    aget-object v11, v14, v2

    .line 1747
    .end local v14    # "argumentsForAudit":[Ljava/lang/String;
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v15, v0, mDaemons:[Ljava/lang/String;

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_37
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_bc

    aget-object v17, v15, v22

    .line 1751
    .local v17, "daemon":Ljava/lang/String;
    :goto_3f
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 1752
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4b} :catch_4c
    .catchall {:try_start_29 .. :try_end_4b} :catchall_d6

    goto :goto_3f

    .line 1975
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    :catch_4c
    move-exception v19

    .line 1977
    .local v19, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network to server address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1985
    const-string v2, "LegacyVpnRunner"

    const-string v3, "Aborting"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p0 .. p0}, exit()V
    :try_end_9f
    .catchall {:try_start_50 .. :try_end_9f} :catchall_d6

    .line 1990
    if-nez v24, :cond_588

    .line 1991
    move-object/from16 v0, p0

    iget-object v15, v0, mDaemons:[Ljava/lang/String;

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    .restart local v25    # "len$":I
    const/16 v22, 0x0

    .restart local v22    # "i$":I
    :goto_aa
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_588

    aget-object v17, v15, v22

    .line 1992
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1991
    add-int/lit8 v22, v22, 0x1

    goto :goto_aa

    .line 1750
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_b8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_37

    .line 1757
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_bc
    :try_start_bc
    new-instance v30, Ljava/io/File;

    const-string v2, "/data/misc/vpn/state"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v30, "state":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 1759
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 1760
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d6} :catch_4c
    .catchall {:try_start_bc .. :try_end_d6} :catchall_d6

    .line 1990
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v30    # "state":Ljava/io/File;
    :catchall_d6
    move-exception v2

    if-nez v24, :cond_5a3

    .line 1991
    move-object/from16 v0, p0

    iget-object v15, v0, mDaemons:[Ljava/lang/String;

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    .restart local v25    # "len$":I
    const/16 v22, 0x0

    .restart local v22    # "i$":I
    :goto_e2
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_5a3

    aget-object v17, v15, v22

    .line 1992
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1991
    add-int/lit8 v22, v22, 0x1

    goto :goto_e2

    .line 1762
    .end local v17    # "daemon":Ljava/lang/String;
    .restart local v30    # "state":Ljava/io/File;
    :cond_f0
    :try_start_f0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/vpn/abort"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1763
    const/16 v24, 0x1

    .line 1766
    const/16 v28, 0x0

    .line 1767
    .local v28, "restart":Z
    move-object/from16 v0, p0

    iget-object v15, v0, mArguments:[[Ljava/lang/String;

    .local v15, "arr$":[[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_107
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_11b

    aget-object v13, v15, v22

    .line 1768
    .local v13, "arguments":[Ljava/lang/String;
    if-nez v28, :cond_113

    if-eqz v13, :cond_118

    :cond_113
    const/16 v28, 0x1

    .line 1767
    :goto_115
    add-int/lit8 v22, v22, 0x1

    goto :goto_107

    .line 1768
    :cond_118
    const/16 v28, 0x0

    goto :goto_115

    .line 1770
    .end local v13    # "arguments":[Ljava/lang/String;
    :cond_11b
    if-nez v28, :cond_19a

    .line 1771
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 1774
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network to server address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_167} :catch_4c
    .catchall {:try_start_f0 .. :try_end_167} :catchall_d6

    .line 1990
    :cond_167
    if-nez v24, :cond_180

    .line 1991
    move-object/from16 v0, p0

    iget-object v15, v0, mDaemons:[Ljava/lang/String;

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_172
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_180

    aget-object v17, v15, v22

    .line 1992
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1991
    add-int/lit8 v22, v22, 0x1

    goto :goto_172

    .line 1997
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_180
    if-eqz v24, :cond_192

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_199

    .line 1998
    :cond_192
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2001
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v28    # "restart":Z
    .end local v30    # "state":Ljava/io/File;
    :cond_199
    :goto_199
    return-void

    .line 1785
    .local v15, "arr$":[[Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v25    # "len$":I
    .restart local v28    # "restart":Z
    .restart local v30    # "state":Ljava/io/File;
    :cond_19a
    :try_start_19a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v4, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1788
    const/16 v21, 0x0

    .end local v15    # "arr$":[[Ljava/lang/String;
    .local v21, "i":I
    :goto_1a8
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_291

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    aget-object v13, v2, v21

    .line 1790
    .restart local v13    # "arguments":[Ljava/lang/String;
    if-nez v13, :cond_1bc

    .line 1788
    :cond_1b9
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a8

    .line 1795
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    aget-object v17, v2, v21

    .line 1796
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1799
    :goto_1c5
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d2

    .line 1800
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_1c5

    .line 1804
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    aput-object v3, v2, v21

    .line 1805
    new-instance v10, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1e6} :catch_4c
    .catchall {:try_start_19a .. :try_end_1e6} :catchall_d6

    .line 1811
    .local v10, "address":Landroid/net/LocalSocketAddress;
    :goto_1e6
    :try_start_1e6
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    invoke-virtual {v2, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1ef} :catch_228
    .catchall {:try_start_1e6 .. :try_end_1ef} :catchall_d6

    .line 1818
    :try_start_1ef
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    .line 1822
    .local v26, "out":Ljava/io/OutputStream;
    move-object v15, v13

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_20a
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_258

    aget-object v12, v15, v22

    .line 1823
    .local v12, "argument":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    .line 1824
    .local v16, "bytes":[B
    move-object/from16 v0, v16

    array-length v2, v0

    const v3, 0xffff

    if-lt v2, v3, :cond_230

    .line 1825
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1813
    .end local v12    # "argument":Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v16    # "bytes":[B
    .end local v26    # "out":Ljava/io/OutputStream;
    :catch_228
    move-exception v2

    .line 1816
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_1e6

    .line 1827
    .restart local v12    # "argument":Ljava/lang/String;
    .restart local v15    # "arr$":[Ljava/lang/String;
    .restart local v16    # "bytes":[B
    .restart local v26    # "out":Ljava/io/OutputStream;
    :cond_230
    move-object/from16 v0, v16

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1828
    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1829
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1830
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->flush()V

    .line 1831
    # invokes: Lcom/android/server/connectivity/Vpn;->wipeByteArray([B)V
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Vpn;->access$3100([B)V

    .line 1832
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1822
    add-int/lit8 v22, v22, 0x1

    goto :goto_20a

    .line 1834
    .end local v12    # "argument":Ljava/lang/String;
    .end local v16    # "bytes":[B
    :cond_258
    const/16 v2, 0xff

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1835
    const/16 v2, 0xff

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1836
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->flush()V

    .line 1840
    const-string v2, "charon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1b9

    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_27c} :catch_4c
    .catchall {:try_start_1ef .. :try_end_27c} :catchall_d6

    move-result-object v23

    .line 1846
    .local v23, "in":Ljava/io/InputStream;
    :goto_27d
    :try_start_27d
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_280} :catch_5bd
    .catchall {:try_start_27d .. :try_end_280} :catchall_d6

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b9

    .line 1852
    :goto_284
    const/4 v2, 0x1

    :try_start_285
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_27d

    .line 1866
    .end local v10    # "address":Landroid/net/LocalSocketAddress;
    .end local v13    # "arguments":[Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    .end local v23    # "in":Ljava/io/InputStream;
    .end local v26    # "out":Ljava/io/OutputStream;
    :cond_28b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1858
    :cond_291
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d4

    .line 1860
    const/16 v21, 0x0

    :goto_299
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_28b

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    aget-object v17, v2, v21

    .line 1862
    .restart local v17    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v21

    if-eqz v2, :cond_2d1

    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d1

    .line 1863
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is dead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1860
    :cond_2d1
    add-int/lit8 v21, v21, 0x1

    goto :goto_299

    .line 1870
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_2d4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v27

    .line 1871
    .local v27, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2f1

    .line 1872
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot parse the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1876
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v27, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v27, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1881
    if-eqz p1, :cond_430

    .line 1882
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 1893
    :cond_31d
    :goto_31d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_339

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_35c

    .line 1894
    :cond_339
    const/4 v2, 0x3

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1895
    .local v18, "dnsServers":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35c

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1901
    .end local v18    # "dnsServers":Ljava/lang/String;
    :cond_35c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_378

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_39b

    .line 1902
    :cond_378
    const/4 v2, 0x4

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1903
    .local v29, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39b

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1909
    .end local v29    # "searchDomains":Ljava/lang/String;
    :cond_39b
    if-nez p1, :cond_3dd

    .line 1911
    const/4 v2, 0x5

    aget-object v20, v27, v2

    .line 1912
    .local v20, "endpoint":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z
    :try_end_3a3
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_3a3} :catch_4c
    .catchall {:try_start_285 .. :try_end_3a3} :catchall_d6

    move-result v2

    if-nez v2, :cond_3d1

    .line 1914
    :try_start_3a6
    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 1915
    .local v9, "addr":Ljava/net/InetAddress;
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mServerIP:Ljava/lang/String;

    .line 1916
    instance-of v2, v9, Ljava/net/Inet4Address;

    if-eqz v2, :cond_45c

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x20

    invoke-direct {v4, v9, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a6 .. :try_end_3d1} :catch_47d
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3d1} :catch_4c
    .catchall {:try_start_3a6 .. :try_end_3d1} :catchall_d6

    .line 1929
    .end local v9    # "addr":Ljava/net/InetAddress;
    :cond_3d1
    :goto_3d1
    :try_start_3d1
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v3, v0, mServerIP:Ljava/lang/String;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$3200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 1934
    .end local v20    # "endpoint":Ljava/lang/String;
    :cond_3dd
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3
    :try_end_3e2
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3e2} :catch_4c
    .catchall {:try_start_3d1 .. :try_end_3e2} :catchall_d6

    .line 1936
    :try_start_3e2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1939
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4c2

    .line 1943
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is gone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1963
    :catchall_42d
    move-exception v2

    monitor-exit v3
    :try_end_42f
    .catchall {:try_start_3e2 .. :try_end_42f} :catchall_42d

    :try_start_42f
    throw v2

    .line 1887
    :cond_430
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v2, :cond_44c

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31d

    .line 1888
    :cond_44c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v27, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V
    :try_end_45a
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_45a} :catch_4c
    .catchall {:try_start_42f .. :try_end_45a} :catchall_d6

    goto/16 :goto_31d

    .line 1918
    .restart local v9    # "addr":Ljava/net/InetAddress;
    .restart local v20    # "endpoint":Ljava/lang/String;
    :cond_45c
    :try_start_45c
    instance-of v2, v9, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4a6

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x80

    invoke-direct {v4, v9, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45c .. :try_end_47b} :catch_47d
    .catch Ljava/lang/Exception; {:try_start_45c .. :try_end_47b} :catch_4c
    .catchall {:try_start_45c .. :try_end_47b} :catchall_d6

    goto/16 :goto_3d1

    .line 1923
    .end local v9    # "addr":Ljava/net/InetAddress;
    :catch_47d
    move-exception v19

    .line 1924
    .local v19, "e":Ljava/lang/IllegalArgumentException;
    :try_start_47e
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception constructing throw route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a4
    .catch Ljava/lang/Exception; {:try_start_47e .. :try_end_4a4} :catch_4c
    .catchall {:try_start_47e .. :try_end_4a4} :catchall_d6

    goto/16 :goto_3d1

    .line 1921
    .end local v19    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "addr":Ljava/net/InetAddress;
    :cond_4a6
    :try_start_4a6
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a6 .. :try_end_4c0} :catch_47d
    .catch Ljava/lang/Exception; {:try_start_4a6 .. :try_end_4c0} :catch_4c
    .catchall {:try_start_4a6 .. :try_end_4c0} :catchall_d6

    goto/16 :goto_3d1

    .line 1947
    .end local v9    # "addr":Ljava/net/InetAddress;
    .end local v20    # "endpoint":Ljava/lang/String;
    :cond_4c2
    :try_start_4c2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    .line 1951
    if-eqz p1, :cond_565

    .line 1952
    invoke-direct/range {p0 .. p0}, agentConnectForKnoxInterface()V

    .line 1953
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 1954
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$2902(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1962
    :goto_501
    const-string v2, "LegacyVpnRunner"

    const-string v4, "Connected!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    monitor-exit v3
    :try_end_509
    .catchall {:try_start_4c2 .. :try_end_509} :catchall_42d

    .line 1965
    :try_start_509
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_54c

    .line 1966
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network  to server address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " succeeded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_54c
    .catch Ljava/lang/Exception; {:try_start_509 .. :try_end_54c} :catch_4c
    .catchall {:try_start_509 .. :try_end_54c} :catchall_d6

    .line 1990
    :cond_54c
    if-nez v24, :cond_56d

    .line 1991
    move-object/from16 v0, p0

    iget-object v15, v0, mDaemons:[Ljava/lang/String;

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_557
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_56d

    aget-object v17, v15, v22

    .line 1992
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1991
    add-int/lit8 v22, v22, 0x1

    goto :goto_557

    .line 1959
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_565
    :try_start_565
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$3300(Lcom/android/server/connectivity/Vpn;)V
    :try_end_56c
    .catchall {:try_start_565 .. :try_end_56c} :catchall_42d

    goto :goto_501

    .line 1997
    :cond_56d
    if-eqz v24, :cond_57f

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_199

    .line 1998
    :cond_57f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_199

    .line 1997
    .end local v21    # "i":I
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v27    # "parameters":[Ljava/lang/String;
    .end local v28    # "restart":Z
    .end local v30    # "state":Ljava/io/File;
    .local v19, "e":Ljava/lang/Exception;
    :cond_588
    if-eqz v24, :cond_59a

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_199

    .line 1998
    :cond_59a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_199

    .line 1997
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_5a3
    if-eqz v24, :cond_5b5

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_5bc

    .line 1998
    :cond_5b5
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    :cond_5bc
    throw v2

    .line 1849
    .restart local v10    # "address":Landroid/net/LocalSocketAddress;
    .restart local v13    # "arguments":[Ljava/lang/String;
    .restart local v15    # "arr$":[Ljava/lang/String;
    .restart local v17    # "daemon":Ljava/lang/String;
    .restart local v21    # "i":I
    .restart local v22    # "i$":I
    .restart local v23    # "in":Ljava/io/InputStream;
    .restart local v25    # "len$":I
    .restart local v26    # "out":Ljava/io/OutputStream;
    .restart local v28    # "restart":Z
    .restart local v30    # "state":Ljava/io/File;
    :catch_5bd
    move-exception v2

    goto/16 :goto_284
.end method

.method private getKnoxVpnFeature()I
    .registers 3

    .prologue
    .line 1704
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$3002(Lcom/android/server/connectivity/Vpn;I)I

    .line 1706
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)I

    move-result v0

    return v0
.end method

.method private getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 3

    .prologue
    .line 1712
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_26

    .line 1713
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1714
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const-string/jumbo v1, "knox_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2202(Lcom/android/server/connectivity/Vpn;Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 1720
    :cond_1f
    :goto_1f
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0

    .line 1718
    :cond_26
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2202(Lcom/android/server/connectivity/Vpn;Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    goto :goto_1f
.end method

.method private getknoxVpnTypeForStrongswanProfile()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 1572
    const/4 v3, 0x1

    .line 1573
    .local v3, "profileType":Z
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v7

    if-lt v7, v10, :cond_d8

    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1575
    .local v5, "user":I
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1577
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_1a
    invoke-direct {p0}, getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    if-eqz v7, :cond_d8

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v7, :cond_d8

    .line 1578
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_51

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile: profile name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1580
    .local v0, "callingUid":I
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_74

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile is called by uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_74
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1582
    .local v6, "vendorOwningProfile":Ljava/lang/String;
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_a5

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile vendorOwningProfile value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_a5
    if-eqz v6, :cond_d8

    .line 1584
    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v0, :cond_b6

    const-string v7, "com.android.vpndialogs"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_d8

    .line 1585
    :cond_b6
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_c3

    const-string v7, "LegacyVpnRunner"

    const-string v8, "Caller is either the strongswan proxy or the vpn dialog app"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_c3
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_d4} :catch_fe

    move-result v4

    .line 1587
    .local v4, "type":I
    if-nez v4, :cond_f8

    .line 1588
    const/4 v3, 0x1

    .line 1601
    .end local v0    # "callingUid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "type":I
    .end local v5    # "user":I
    .end local v6    # "vendorOwningProfile":Ljava/lang/String;
    :cond_d8
    :goto_d8
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_f7

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile profileType value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_f7
    return v3

    .line 1589
    .restart local v0    # "callingUid":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "type":I
    .restart local v5    # "user":I
    .restart local v6    # "vendorOwningProfile":Ljava/lang/String;
    :cond_f8
    if-ne v4, v10, :cond_fc

    .line 1590
    const/4 v3, 0x0

    goto :goto_d8

    .line 1592
    :cond_fc
    const/4 v3, 0x1

    goto :goto_d8

    .line 1597
    .end local v0    # "callingUid":I
    .end local v4    # "type":I
    .end local v6    # "vendorOwningProfile":Ljava/lang/String;
    :catch_fe
    move-exception v1

    .line 1598
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_d8

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfStrongswanProfileIsKnoxBased "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8
.end method

.method private isCharonActivated()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 2080
    const/4 v2, 0x0

    .line 2081
    .local v2, "hasIpAddr":Z
    :try_start_2
    const-string/jumbo v7, "ipsec0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 2082
    .local v5, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2083
    .local v4, "inetAddress":Ljava/net/InetAddress;
    const/4 v2, 0x1

    .line 2084
    goto :goto_15

    .line 2085
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_23
    if-nez v2, :cond_36

    .line 2086
    const-string v7, "charon"

    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v0

    .line 2087
    .local v0, "charon_pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2088
    const-string v7, "LegacyVpnRunner"

    const-string v8, "charon down (disconnected by remote)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_37

    .line 2089
    const/4 v6, 0x0

    .line 2095
    .end local v0    # "charon_pid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_36
    :goto_36
    return v6

    .line 2093
    :catch_37
    move-exception v1

    .line 2095
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_36
.end method

.method private isEgressActivated()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 2101
    const/4 v1, 0x0

    .line 2102
    .local v1, "hasIpAddr":Z
    :try_start_2
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$3600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 2103
    .local v4, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2104
    .local v3, "inetAddress":Ljava/net/InetAddress;
    const/4 v1, 0x1

    .line 2105
    goto :goto_18

    .line 2106
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_26
    if-nez v1, :cond_4d

    .line 2107
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Egress Iface ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$3600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") deactivated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4f

    .line 2115
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_4c
    return v5

    .line 2110
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_4d
    const/4 v5, 0x1

    goto :goto_4c

    .line 2112
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_4f
    move-exception v0

    .line 2114
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Egress Iface ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$3600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method private monitorDaemons()V
    .registers 16

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 2009
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2076
    :cond_f
    :goto_f
    return-void

    .line 2015
    :cond_10
    const-wide/16 v4, 0x7d0

    :try_start_12
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2016
    invoke-direct {p0}, isCharonActivated()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0}, isEgressActivated()Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1e} :catch_147
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1d6

    move-result v1

    if-nez v1, :cond_a7

    .line 2029
    :cond_21
    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2030
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2034
    const-string v13, ""

    .line 2035
    .local v13, "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2036
    .local v7, "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_4c

    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_4c

    .line 2037
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2038
    .local v8, "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_4c

    .line 2039
    aget-object v13, v8, v2

    .line 2040
    aget-object v7, v8, v6

    .line 2044
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_4c
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 2045
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2055
    :cond_89
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2056
    .local v11, "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2058
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2073
    .local v12, "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_f

    .line 2020
    .end local v7    # "addressForAudit":Ljava/lang/String;
    .end local v11    # "salesCode":Ljava/lang/String;
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    .end local v13    # "typeForAudit":Ljava/lang/String;
    :cond_a7
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a8
    :try_start_a8
    iget-object v1, p0, mDaemons:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_10

    .line 2021
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v10

    if-eqz v1, :cond_143

    iget-object v1, p0, mDaemons:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_ba} :catch_147
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_1d6

    move-result v1

    if-eqz v1, :cond_143

    .line 2029
    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2030
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2034
    const-string v13, ""

    .line 2035
    .restart local v13    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2036
    .restart local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_e8

    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_e8

    .line 2037
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2038
    .restart local v8    # "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_e8

    .line 2039
    aget-object v13, v8, v2

    .line 2040
    aget-object v7, v8, v6

    .line 2044
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_e8
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_125

    .line 2045
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2055
    :cond_125
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2056
    .restart local v11    # "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2058
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2073
    .restart local v12    # "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_f

    .line 2020
    .end local v7    # "addressForAudit":Ljava/lang/String;
    .end local v11    # "salesCode":Ljava/lang/String;
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    .end local v13    # "typeForAudit":Ljava/lang/String;
    :cond_143
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a8

    .line 2026
    .end local v10    # "i":I
    :catch_147
    move-exception v9

    .line 2027
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_148
    const-string v1, "LegacyVpnRunner"

    const-string/jumbo v3, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_148 .. :try_end_150} :catchall_1d6

    .line 2029
    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2030
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2034
    const-string v13, ""

    .line 2035
    .restart local v13    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2036
    .restart local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_17b

    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_17b

    .line 2037
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2038
    .restart local v8    # "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_17b

    .line 2039
    aget-object v13, v8, v2

    .line 2040
    aget-object v7, v8, v6

    .line 2044
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_17b
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_1b8

    .line 2045
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2055
    :cond_1b8
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2056
    .restart local v11    # "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2058
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2073
    .restart local v12    # "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_f

    .line 2029
    .end local v7    # "addressForAudit":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "salesCode":Ljava/lang/String;
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    .end local v13    # "typeForAudit":Ljava/lang/String;
    :catchall_1d6
    move-exception v1

    move-object v14, v1

    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2030
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2034
    const-string v13, ""

    .line 2035
    .restart local v13    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2036
    .restart local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_203

    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_203

    .line 2037
    iget-object v1, p0, mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2038
    .restart local v8    # "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_203

    .line 2039
    aget-object v13, v8, v2

    .line 2040
    aget-object v7, v8, v6

    .line 2044
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_203
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_240

    .line 2045
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2055
    :cond_240
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2056
    .restart local v11    # "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    .line 2058
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2073
    .restart local v12    # "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 2075
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    :cond_25c
    throw v14
.end method

.method private declared-synchronized sendStrongSwanInterfaceToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 1664
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_ac

    .line 1665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d7

    move-result-wide v2

    .line 1668
    .local v2, "token":J
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1669
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string/jumbo v1, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 1672
    const-string/jumbo v1, "extra_profile_name"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    :cond_37
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 1675
    const-string/jumbo v1, "extra_tun_id"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    :cond_4b
    :goto_4b
    const-string/jumbo v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1681
    const-string/jumbo v1, "tun_address"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    const-string/jumbo v1, "tunv6_address"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_9e

    const-string v1, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendStrongSwanInterfaceToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_9e
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_c .. :try_end_a9} :catchall_d2

    .line 1686
    :try_start_a9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_d7

    .line 1689
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_ac
    monitor-exit p0

    return-void

    .line 1676
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "token":J
    :cond_ae
    :try_start_ae
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1677
    const-string/jumbo v1, "extra_tun_id"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1678
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Vpn;->access$2902(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_ae .. :try_end_d0} :catchall_d2

    goto/16 :goto_4b

    .line 1686
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_d2
    move-exception v1

    :try_start_d3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_d7

    .line 1664
    .end local v2    # "token":J
    :catchall_d7
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 1692
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3f

    .line 1693
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$902(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1694
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1695
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_3f

    .line 1696
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 1697
    .local v1, "notification":Landroid/app/Notification;
    const/4 v2, 0x0

    const v3, 0x1080a51

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1700
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_3f
    return-void
.end method

.method private stopLegacyDaemons()V
    .registers 8

    .prologue
    .line 2120
    const-string v4, "LegacyVpnRunner"

    const-string/jumbo v5, "stopLegacyDaemons: begin"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v4, p0, mDaemons:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_59

    .line 2122
    iget-object v4, p0, mDaemons:[Ljava/lang/String;

    aget-object v0, v4, v1

    .line 2123
    .local v0, "daemon":Ljava/lang/String;
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2124
    .local v3, "salesCode":Ljava/lang/String;
    const-string v4, "charon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "DCM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string/jumbo v4, "racoon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4c

    .line 2128
    :cond_32
    iget-object v4, p0, mSockets:[Landroid/net/LocalSocket;

    aget-object v4, v4, v1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2130
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3a
    const/16 v4, 0x14

    if-ge v2, v4, :cond_53

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2132
    const-wide/16 v4, 0xc8

    :try_start_46
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_62

    .line 2130
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2137
    .end local v2    # "j":I
    :cond_4c
    iget-object v4, p0, mSockets:[Landroid/net/LocalSocket;

    aget-object v4, v4, v1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2139
    :cond_53
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2121
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2141
    .end local v0    # "daemon":Ljava/lang/String;
    .end local v3    # "salesCode":Ljava/lang/String;
    :cond_59
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, p0, mServerIP:Ljava/lang/String;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$3200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 2142
    return-void

    .line 2133
    .restart local v0    # "daemon":Ljava/lang/String;
    .restart local v2    # "j":I
    .restart local v3    # "salesCode":Ljava/lang/String;
    :catch_62
    move-exception v4

    goto :goto_49
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1479
    iget-object v0, p0, mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1480
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-virtual {p0}, exit()V

    .line 1483
    :cond_23
    return-void
.end method

.method public exit()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1491
    invoke-virtual {p0}, interrupt()V

    .line 1492
    iget-object v4, p0, mSockets:[Landroid/net/LocalSocket;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_35

    .line 1493
    iget-object v4, p0, mSockets:[Landroid/net/LocalSocket;

    aget-object v4, v4, v1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1494
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    const/16 v4, 0x14

    if-ge v3, v4, :cond_32

    iget-object v4, p0, mDaemons:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1496
    const-wide/16 v4, 0x64

    :try_start_23
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_29

    .line 1494
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1497
    :catch_29
    move-exception v2

    .line 1498
    .local v2, "ignore":Ljava/lang/InterruptedException;
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Ignore exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1492
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1502
    .end local v3    # "j":I
    :cond_35
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 1504
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_65

    .line 1505
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-direct {p0}, getknoxVpnTypeForStrongswanProfile()Z

    move-result v4

    if-nez v4, :cond_58

    .line 1506
    const/4 v4, 0x2

    invoke-direct {p0, v4}, sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 1507
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    .line 1510
    :cond_58
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_65

    .line 1511
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    .line 1516
    :cond_65
    :try_start_65
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1517
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, mCredentialResetFilter:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_7b} :catch_7c

    .line 1521
    :goto_7b
    return-void

    .line 1518
    :catch_7c
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Ignore IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b
.end method

.method public run()V
    .registers 5

    .prologue
    .line 1526
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const-string v2, "LegacyVpnRunner"

    monitor-enter v2

    .line 1528
    :try_start_a
    const-string v1, "LegacyVpnRunner"

    const-string v3, "Executing"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v0, 0x0

    .line 1531
    .local v0, "isKnoxVpnProfile":Z
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_32

    .line 1532
    invoke-direct {p0}, getknoxVpnTypeForStrongswanProfile()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1533
    const/4 v0, 0x1

    .line 1534
    invoke-direct {p0, v0}, execute(Z)V

    .line 1542
    :goto_23
    invoke-direct {p0}, monitorDaemons()V

    .line 1543
    invoke-direct {p0}, clear_arguments()V

    .line 1544
    monitor-exit v2

    .line 1545
    return-void

    .line 1536
    :cond_2b
    invoke-direct {p0, v0}, execute(Z)V

    goto :goto_23

    .line 1544
    .end local v0    # "isKnoxVpnProfile":Z
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v1

    .line 1540
    .restart local v0    # "isKnoxVpnProfile":Z
    :cond_32
    :try_start_32
    invoke-direct {p0, v0}, execute(Z)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    goto :goto_23
.end method
