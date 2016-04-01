.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$1;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDeadlineTime:J

.field private final mDescription:Ljava/lang/String;

.field private final mDnsUdpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mExplicitSourceIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceIndex:Ljava/lang/Integer;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private final mStartTime:J

.field private final mTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, TEST_DNS4:Ljava/net/InetAddress;

    .line 86
    const-string v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "timeoutMs"    # J

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, mIcmpChecks:Ljava/util/Map;

    .line 154
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, mExplicitSourceIcmpChecks:Ljava/util/Map;

    .line 156
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, mDnsUdpChecks:Ljava/util/Map;

    .line 161
    iput-object p1, p0, mNetwork:Landroid/net/Network;

    .line 162
    iput-object p2, p0, mLinkProperties:Landroid/net/LinkProperties;

    .line 163
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, mInterfaceIndex:Ljava/lang/Integer;

    .line 164
    iput-wide p3, p0, mTimeoutMs:J

    .line 165
    invoke-static {}, now()J

    move-result-wide v4

    iput-wide v4, p0, mStartTime:J

    .line 166
    iget-wide v4, p0, mStartTime:J

    iget-wide v6, p0, mTimeoutMs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, mDeadlineTime:J

    .line 173
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    sget-object v5, TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 174
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    sget-object v5, TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 179
    :cond_48
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v4

    if-nez v4, :cond_58

    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 180
    :cond_58
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    sget-object v5, TEST_DNS6:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 183
    :cond_5f
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 184
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 185
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 186
    .local v0, "gateway":Ljava/net/InetAddress;
    invoke-direct {p0, v0}, prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 187
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 188
    invoke-direct {p0, v0}, prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V

    goto :goto_69

    .line 192
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_8c
    iget-object v4, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 193
    .local v2, "nameserver":Ljava/net/InetAddress;
    invoke-direct {p0, v2}, prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 194
    invoke-direct {p0, v2}, prepareDnsMeasurement(Ljava/net/InetAddress;)V

    goto :goto_96

    .line 197
    .end local v2    # "nameserver":Ljava/net/InetAddress;
    :cond_a9
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, totalMeasurementCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 199
    invoke-direct {p0}, startMeasurements()V

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ifaces{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    iget-object v6, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mInterfaceIndex:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nethandle{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mNetwork:Landroid/net/Network;

    invoke-virtual {v5}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, mDescription:Ljava/lang/String;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 82
    iget-object v0, p0, mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 82
    invoke-static {}, now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 82
    iget-object v0, p0, mInterfaceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 82
    iget-object v0, p0, mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/NetworkDiagnostics;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 82
    iget-wide v0, p0, mDeadlineTime:J

    return-wide v0
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p0, "ifname"    # Ljava/lang/String;

    .prologue
    .line 209
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 210
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_b} :catch_10

    move-result-object v2

    .line 212
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    :goto_c
    return-object v2

    .line 211
    :catch_d
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :goto_e
    const/4 v2, 0x0

    goto :goto_c

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v0

    goto :goto_e
.end method

.method private static final now()J
    .registers 2

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private prepareDnsMeasurement(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 239
    iget-object v1, p0, mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 240
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$1;)V

    .line 241
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 242
    iget-object v1, p0, mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1f
    return-void
.end method

.method private prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 225
    iget-object v5, p0, mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 226
    .local v1, "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 227
    .local v3, "source":Ljava/net/InetAddress;
    instance-of v5, v3, Ljava/net/Inet6Address;

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 228
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .local v4, "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    iget-object v5, p0, mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 230
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$1;)V

    .line 231
    .local v2, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v6, p0, v3, p1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 232
    iget-object v5, p0, mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 236
    .end local v1    # "l":Landroid/net/LinkAddress;
    .end local v2    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    .end local v3    # "source":Ljava/net/InetAddress;
    .end local v4    # "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    :cond_49
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 217
    iget-object v1, p0, mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 218
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$1;)V

    .line 219
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 220
    iget-object v1, p0, mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1f
    return-void
.end method

.method private startMeasurements()V
    .registers 4

    .prologue
    .line 251
    iget-object v2, p0, mIcmpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 252
    .local v1, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_a

    .line 254
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1c
    iget-object v2, p0, mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 255
    .restart local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_26

    .line 257
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_38
    iget-object v2, p0, mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 258
    .restart local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_42

    .line 260
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_54
    return-void
.end method

.method private totalMeasurementCount()I
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkDiagnostics:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, mDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    .line 271
    .local v4, "unfinished":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_40

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: countdown wait incomplete: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " unfinished measurements"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 278
    :cond_40
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 279
    iget-object v3, p0, mIcmpChecks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 280
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_4d

    .line 281
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4d

    .line 284
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_6f
    iget-object v3, p0, mIcmpChecks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_79
    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 285
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_79

    .line 286
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 290
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_9b
    iget-object v3, p0, mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a5

    .line 293
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_bf
    iget-object v3, p0, mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c9
    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_c9

    .line 295
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c9

    .line 298
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_eb
    iget-object v3, p0, mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f5
    :goto_f5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 299
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_f5

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f5

    .line 303
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_117
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 304
    return-void
.end method

.method public waitForMeasurements()V
    .registers 7

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p0, mDeadlineTime:J

    invoke-static {}, now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 266
    :goto_e
    return-void

    .line 265
    :catch_f
    move-exception v0

    goto :goto_e
.end method
