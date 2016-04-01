.class public Lcom/sec/epdg/IPSecAdapter;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"

# interfaces
.implements Lcom/ipsec/client/IIPsecListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecAdapter$1;,
        Lcom/sec/epdg/IPSecAdapter$ConnectInfo;,
        Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;,
        Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;,
        Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
    }
.end annotation


# static fields
.field private static CISCO_TESTING:I = 0x0

.field private static INSIDE_SECURE:I = 0x0

.field private static final IPSEC_ADAPTER_CONNECTION_STATUS_CHANGED:I = 0x2

.field private static final IPSEC_ADAPTER_EVENT_CHECK_CONNECTION_REQ:I = 0x5

.field private static final IPSEC_ADAPTER_EVENT_CONNECT_REQ:I = 0x3

.field private static final IPSEC_ADAPTER_EVENT_DISCONNECT_REQ:I = 0x4

.field private static final IPSEC_ADAPTER_SERVICE_STATUS_CHANGED:I = 0x1

.field private static IPV6PREFIX:Ljava/lang/String; = null

.field private static final OUTGOING_ADAPTER:Ljava/lang/String; = "[EPDGSerive->IPSecLib]"

.field private static SETCOM_TESTING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[IPSECADAPTER]"

.field private static TESTING_TYPE:I

.field private static conn_prefix:Ljava/lang/String;

.field private static mIPsecClient:Lcom/ipsec/client/IPsecClient;

.field private static mInstance:Lcom/sec/epdg/IPSecAdapter;

.field private static mOemHandler:Landroid/os/Handler;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mConnectionDb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ipsec/client/IPsecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

.field private mPowerMgr:Landroid/os/PowerManager;

.field private mbStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput v0, CISCO_TESTING:I

    .line 94
    const/4 v0, 0x1

    sput v0, INSIDE_SECURE:I

    .line 96
    const/4 v0, 0x2

    sput v0, SETCOM_TESTING:I

    .line 98
    sget v0, CISCO_TESTING:I

    sput v0, TESTING_TYPE:I

    .line 112
    const-string v0, "CONN"

    sput-object v0, conn_prefix:Ljava/lang/String;

    .line 115
    const-string v0, "/64"

    sput-object v0, IPV6PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mConnectionDb:Ljava/util/HashMap;

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, mbStarted:Z

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpSecAdapterThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v1, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;-><init>(Lcom/sec/epdg/IPSecAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    .line 126
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, mConnMgr:Landroid/net/ConnectivityManager;

    .line 128
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, mPowerMgr:Landroid/os/PowerManager;

    .line 129
    iget-object v1, p0, mPowerMgr:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "[IPSECADAPTER]"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 130
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0, p1}, initIpSecClient(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    .prologue
    .line 73
    invoke-direct {p0, p1}, onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecAdapter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, onDisconnectRequestRecv(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecAdapter;II)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, onCheckConnectionRequestRecv(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    .prologue
    .line 73
    invoke-direct {p0, p1}, onIpSecAdapterServiceStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V

    return-void
.end method

.method private addIPsecConnectionDb(ILcom/ipsec/client/IPsecConnection;)V
    .registers 5
    .param p1, "cid"    # I
    .param p2, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    .line 223
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Adding IPSecConnection to DB addIPsecConnectionDb()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Added IPSecConnection to DB"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private getCidfromConnDb(Lcom/ipsec/client/IPsecConnection;)I
    .registers 8
    .param p1, "conn"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    .line 1700
    const-string v3, "[IPSECADAPTER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving context ID from the DataBase : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object v3, p0, mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1702
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1704
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1705
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection;

    .line 1706
    .local v0, "ipsecconn":Lcom/ipsec/client/IPsecConnection;
    const-string v3, "[IPSECADAPTER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interface name in connection being checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1710
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "Connection Object Found in DB"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1715
    .end local v0    # "ipsecconn":Lcom/ipsec/client/IPsecConnection;
    .end local v2    # "key":Ljava/lang/Integer;
    :goto_63
    return v3

    .line 1714
    :cond_64
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "Retrieval getCidfromConnDb failed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    const/4 v3, -0x1

    goto :goto_63
.end method

.method private getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .registers 39
    .param p1, "cid"    # I

    .prologue
    .line 1388
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConnectionInformation():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectionDb:Ljava/util/HashMap;

    if-eqz v2, :cond_6b4

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectionDb:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ipsec/client/IPsecConnection;

    .line 1391
    .local v17, "conn":Lcom/ipsec/client/IPsecConnection;
    sget-object v2, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/ipsec/client/IPsecClient;->getIPsecConnectionState(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecConnectionState;

    move-result-object v33

    .line 1393
    .local v33, "state":Lcom/ipsec/client/IPsecConnectionState;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 1395
    .local v24, "mStatus":Ljava/lang/StringBuffer;
    if-eqz v33, :cond_6b4

    if-eqz v17, :cond_6b4

    .line 1396
    const/4 v3, 0x0

    .line 1397
    .local v3, "linkPropIpv4PrefixLen":I
    const/4 v4, 0x0

    .line 1398
    .local v4, "linkPropIpv6PrefixLen":I
    const/4 v11, 0x0

    .line 1399
    .local v11, "linkPropIpv4Addr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1401
    .local v12, "linkPropIpv6Addr":Ljava/lang/String;
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrive Connection Params for cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 1405
    .local v23, "iptype":Lcom/ipsec/client/IPsecConnection$IPVersion;
    if-eqz v17, :cond_72

    .line 1406
    invoke-virtual/range {v17 .. v17}, Lcom/ipsec/client/IPsecConnection;->getSubnetType()Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v23

    .line 1409
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ngateway address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getGatewayIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nlocal address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getLocalIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nremote identity: type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " data "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nlocal identity: type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " data "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getOwnIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;

    move-result-object v29

    .line 1418
    .local v29, "racAddresses":[Ljava/lang/String;
    if-eqz v29, :cond_3df

    .line 1419
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_e0
    move-object/from16 v0, v29

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2b2

    .line 1420
    aget-object v14, v29, v21

    .line 1421
    .local v14, "addr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nrac address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1422
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_15c

    .line 1423
    aget-object v2, v29, v21

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1424
    .local v18, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv4 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1425
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 1426
    const/4 v2, 0x0

    aget-object v11, v18, v2

    .line 1427
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_14c

    .line 1428
    const/4 v2, 0x1

    aget-object v27, v18, v2

    .line 1429
    .local v27, "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1419
    .end local v27    # "prefixlen":Ljava/lang/String;
    :goto_149
    add-int/lit8 v21, v21, 0x1

    goto :goto_e0

    .line 1432
    :cond_14c
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV4 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_149

    .line 1435
    :cond_154
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv4 address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_149

    .line 1437
    .end local v18    # "data":[Ljava/lang/String;
    :cond_15c
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_1e6

    .line 1438
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Storing IPv6 address:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v36, v29, v21

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v36, "pos:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1440
    aget-object v2, v29, v21

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1441
    .restart local v18    # "data":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv6 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1442
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 1443
    const/4 v2, 0x0

    aget-object v12, v18, v2

    .line 1444
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_1d4

    .line 1445
    const/4 v2, 0x1

    aget-object v27, v18, v2

    .line 1446
    .restart local v27    # "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1448
    goto/16 :goto_149

    .line 1449
    .end local v27    # "prefixlen":Ljava/lang/String;
    :cond_1d4
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV6 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_149

    .line 1452
    :cond_1dd
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv6 address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_149

    .line 1455
    .end local v18    # "data":[Ljava/lang/String;
    :cond_1e6
    const/16 v21, 0x0

    .line 1456
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Got IPv4 address after connect @ pos:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v36, v29, v21

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1458
    aget-object v2, v29, v21

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1459
    .restart local v18    # "data":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv4 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1461
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_339

    .line 1462
    const/4 v2, 0x0

    aget-object v11, v18, v2

    .line 1463
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_330

    .line 1464
    const/4 v2, 0x1

    aget-object v27, v18, v2

    .line 1465
    .restart local v27    # "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1470
    .end local v27    # "prefixlen":Ljava/lang/String;
    :goto_257
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 1487
    :goto_259
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_2b2

    .line 1488
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Got next address after connect @ pos:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x1

    aget-object v36, v29, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1491
    const/4 v2, 0x1

    aget-object v2, v29, v2

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1494
    .local v19, "data2":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_391

    .line 1495
    const/4 v2, 0x0

    aget-object v11, v19, v2

    .line 1496
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_388

    .line 1497
    const/4 v2, 0x1

    aget-object v27, v19, v2

    .line 1498
    .restart local v27    # "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1521
    .end local v27    # "prefixlen":Ljava/lang/String;
    :goto_2b0
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 1532
    .end local v14    # "addr":Ljava/lang/String;
    .end local v18    # "data":[Ljava/lang/String;
    .end local v19    # "data2":[Ljava/lang/String;
    .end local v21    # "i":I
    :cond_2b2
    :goto_2b2
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;

    move-result-object v30

    .line 1534
    .local v30, "racDNSAddresses":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIPSECCONN_MAX_DNS()I

    move-result v13

    .line 1535
    .local v13, "MAX_DNS":I
    new-array v7, v13, [Ljava/lang/String;

    .line 1536
    .local v7, "ipv4DNS":[Ljava/lang/String;
    new-array v8, v13, [Ljava/lang/String;

    .line 1537
    .local v8, "ipv6DNS":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 1538
    .local v34, "v4num":I
    const/16 v35, 0x0

    .line 1539
    .local v35, "v6num":I
    if-eqz v30, :cond_4b7

    .line 1540
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2ca
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_4be

    .line 1541
    aget-object v14, v30, v21

    .line 1542
    .restart local v14    # "addr":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "rac DNS address: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1543
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_3f1

    .line 1544
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e8

    .line 1545
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v4 address as iptype is v4: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v4 index "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1548
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ge v0, v2, :cond_32b

    .line 1549
    aput-object v14, v7, v34

    .line 1551
    :cond_32b
    add-int/lit8 v34, v34, 0x1

    .line 1540
    :goto_32d
    add-int/lit8 v21, v21, 0x1

    goto :goto_2ca

    .line 1468
    .end local v7    # "ipv4DNS":[Ljava/lang/String;
    .end local v8    # "ipv6DNS":[Ljava/lang/String;
    .end local v13    # "MAX_DNS":I
    .end local v30    # "racDNSAddresses":[Ljava/lang/String;
    .end local v34    # "v4num":I
    .end local v35    # "v6num":I
    .restart local v18    # "data":[Ljava/lang/String;
    :cond_330
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV4 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_257

    .line 1471
    :cond_339
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 1472
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv6 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1473
    const/4 v2, 0x0

    aget-object v12, v18, v2

    .line 1474
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_377

    .line 1475
    const/4 v2, 0x1

    aget-object v28, v18, v2

    .line 1476
    .local v28, "prefixlenv6":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1481
    .end local v28    # "prefixlenv6":Ljava/lang/String;
    :goto_373
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto/16 :goto_259

    .line 1479
    :cond_377
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV6 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_373

    .line 1483
    :cond_37f
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received address is not valid (v4 or v6)"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_259

    .line 1501
    .restart local v19    # "data2":[Ljava/lang/String;
    :cond_388
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV4 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b0

    .line 1504
    :cond_391
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d6

    .line 1506
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv6 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v19, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/4 v2, 0x0

    aget-object v12, v19, v2

    .line 1509
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_3cd

    .line 1510
    const/4 v2, 0x1

    aget-object v28, v19, v2

    .line 1511
    .restart local v28    # "prefixlenv6":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1513
    goto/16 :goto_2b0

    .line 1514
    .end local v28    # "prefixlenv6":Ljava/lang/String;
    :cond_3cd
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV6 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b0

    .line 1518
    :cond_3d6
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received address is not valid (v4 or v6)"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b0

    .line 1528
    .end local v14    # "addr":Ljava/lang/String;
    .end local v18    # "data":[Ljava/lang/String;
    .end local v19    # "data2":[Ljava/lang/String;
    .end local v21    # "i":I
    :cond_3df
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IP address is null"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b2

    .line 1553
    .restart local v7    # "ipv4DNS":[Ljava/lang/String;
    .restart local v8    # "ipv6DNS":[Ljava/lang/String;
    .restart local v13    # "MAX_DNS":I
    .restart local v14    # "addr":Ljava/lang/String;
    .restart local v21    # "i":I
    .restart local v30    # "racDNSAddresses":[Ljava/lang/String;
    .restart local v34    # "v4num":I
    .restart local v35    # "v6num":I
    :cond_3e8
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv4 DNS address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32d

    .line 1556
    :cond_3f1
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_43a

    .line 1557
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_431

    .line 1558
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v6 address as iptype is v6: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v6 index: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1561
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ge v0, v2, :cond_42d

    .line 1562
    aput-object v14, v8, v35

    .line 1564
    :cond_42d
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_32d

    .line 1566
    :cond_431
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv6 DNS address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32d

    .line 1570
    :cond_43a
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_474

    .line 1571
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v4 address as ipaddress is v4: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v4 index: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1574
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ge v0, v2, :cond_470

    .line 1575
    aput-object v14, v7, v34

    .line 1577
    :cond_470
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_32d

    .line 1578
    :cond_474
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4ae

    .line 1579
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v6 address as ipaddress is v6: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v6 index: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1582
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ge v0, v2, :cond_4aa

    .line 1583
    aput-object v14, v8, v35

    .line 1585
    :cond_4aa
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_32d

    .line 1587
    :cond_4ae
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received DNS address is not valid (v4 or v6)"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32d

    .line 1593
    .end local v14    # "addr":Ljava/lang/String;
    .end local v21    # "i":I
    :cond_4b7
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "DNS addresses received : NULL"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    :cond_4be
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteAccessSubnets(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;

    move-result-object v32

    .line 1598
    .local v32, "racSubnets":[Ljava/lang/String;
    if-eqz v32, :cond_518

    .line 1599
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_4ca
    move-object/from16 v0, v32

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_4ee

    .line 1600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nrac subnets: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v32, v21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1599
    add-int/lit8 v21, v21, 0x1

    goto :goto_4ca

    .line 1601
    :cond_4ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nvirtual adapter: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " MTU "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getVirtualAdapterMTU()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1606
    .end local v21    # "i":I
    :cond_518
    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIPSECCONN_MAX_PCSCFv4()I

    move-result v25

    .line 1607
    .local v25, "maxPcscfv4":I
    move/from16 v0, v25

    new-array v9, v0, [Ljava/lang/String;

    .line 1608
    .local v9, "ipv4PCSCFaddr":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 1609
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getIkeCfgAttributes(I)Ljava/util/Vector;

    move-result-object v31

    .line 1611
    .local v31, "racPCSCF":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    if-eqz v31, :cond_5a5

    .line 1613
    const/4 v2, 0x4

    :try_start_52f
    new-array v15, v2, [B

    .line 1614
    .local v15, "address":[B
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_535
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .line 1615
    .local v16, "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    invoke-virtual/range {v16 .. v16}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v18

    .line 1616
    .local v18, "data":[B
    if-eqz v18, :cond_582

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_582

    .line 1617
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-static {v0, v2, v15, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1618
    move/from16 v0, v34

    move/from16 v1, v25

    if-ge v0, v1, :cond_565

    .line 1619
    invoke-static {v15}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v34

    .line 1623
    :cond_565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n-PCSCFv4 address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v9, v34

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1625
    add-int/lit8 v34, v34, 0x1

    goto :goto_535

    .line 1627
    :cond_582
    const-string v2, "\n-invalid PCSCFv4 address "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_589
    .catch Ljava/net/UnknownHostException; {:try_start_52f .. :try_end_589} :catch_58a

    goto :goto_535

    .line 1630
    .end local v15    # "address":[B
    .end local v16    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    .end local v18    # "data":[B
    .end local v22    # "i$":Ljava/util/Iterator;
    :catch_58a
    move-exception v20

    .line 1631
    .local v20, "e":Ljava/net/UnknownHostException;
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P-CSCFv4 parse exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    .end local v20    # "e":Ljava/net/UnknownHostException;
    :cond_5a5
    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIPSECCONN_MAX_PCSCFv6()I

    move-result v26

    .line 1636
    .local v26, "maxPcscfv6":I
    move/from16 v0, v26

    new-array v10, v0, [Ljava/lang/String;

    .line 1637
    .local v10, "ipv6PCSCFaddr":[Ljava/lang/String;
    const/16 v35, 0x0

    .line 1638
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getIkeCfgAttributes(I)Ljava/util/Vector;

    move-result-object v31

    .line 1640
    if-eqz v31, :cond_6a2

    .line 1642
    const/16 v2, 0x10

    :try_start_5bd
    new-array v15, v2, [B

    .line 1643
    .restart local v15    # "address":[B
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :goto_5c3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .line 1644
    .restart local v16    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    invoke-virtual/range {v16 .. v16}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v18

    .line 1651
    .restart local v18    # "data":[B
    if-eqz v18, :cond_67e

    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v5, 0x10

    if-eq v2, v5, :cond_5e3

    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v5, 0x11

    if-ne v2, v5, :cond_67e

    .line 1653
    :cond_5e3
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, v18

    invoke-static {v0, v2, v15, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1654
    move/from16 v0, v35

    move/from16 v1, v26

    if-ge v0, v1, :cond_660

    .line 1656
    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v5, 0x11

    if-ne v2, v5, :cond_636

    .line 1663
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v6 p-cscf is : "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, "/"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x10

    aget-byte v36, v18, v36

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_636
    invoke-static {v15}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v35

    .line 1675
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "send v6 p-cscf to ril: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v36, v10, v35

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1678
    :cond_660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n-PCSCFv6 address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v10, v35

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_5c3

    .line 1682
    :cond_67e
    const-string v2, "\n-invalid PCSCFv6 address"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_685
    .catch Ljava/net/UnknownHostException; {:try_start_5bd .. :try_end_685} :catch_687

    goto/16 :goto_5c3

    .line 1685
    .end local v15    # "address":[B
    .end local v16    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    .end local v18    # "data":[B
    .end local v22    # "i$":Ljava/util/Iterator;
    :catch_687
    move-exception v20

    .line 1686
    .restart local v20    # "e":Ljava/net/UnknownHostException;
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P-CSCFv6 parse exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .end local v20    # "e":Ljava/net/UnknownHostException;
    :cond_6a2
    new-instance v2, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, getIpsecIwlanIpType(Lcom/ipsec/client/IPsecConnection$IPVersion;)Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v12}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;-><init>(IILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    .end local v3    # "linkPropIpv4PrefixLen":I
    .end local v4    # "linkPropIpv6PrefixLen":I
    .end local v7    # "ipv4DNS":[Ljava/lang/String;
    .end local v8    # "ipv6DNS":[Ljava/lang/String;
    .end local v9    # "ipv4PCSCFaddr":[Ljava/lang/String;
    .end local v10    # "ipv6PCSCFaddr":[Ljava/lang/String;
    .end local v11    # "linkPropIpv4Addr":Ljava/lang/String;
    .end local v12    # "linkPropIpv6Addr":Ljava/lang/String;
    .end local v13    # "MAX_DNS":I
    .end local v17    # "conn":Lcom/ipsec/client/IPsecConnection;
    .end local v23    # "iptype":Lcom/ipsec/client/IPsecConnection$IPVersion;
    .end local v24    # "mStatus":Ljava/lang/StringBuffer;
    .end local v25    # "maxPcscfv4":I
    .end local v26    # "maxPcscfv6":I
    .end local v29    # "racAddresses":[Ljava/lang/String;
    .end local v30    # "racDNSAddresses":[Ljava/lang/String;
    .end local v31    # "racPCSCF":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    .end local v32    # "racSubnets":[Ljava/lang/String;
    .end local v33    # "state":Lcom/ipsec/client/IPsecConnectionState;
    .end local v34    # "v4num":I
    .end local v35    # "v6num":I
    :goto_6b3
    return-object v2

    :cond_6b4
    const/4 v2, 0x0

    goto :goto_6b3
.end method

.method private getIWlanAdapterConf(Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;)Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .registers 5
    .param p1, "conf"    # Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .prologue
    .line 1335
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanIkegroupSpinnerValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 1344
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    :goto_26
    return-object v0

    .line 1338
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto :goto_26

    .line 1340
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto :goto_26

    .line 1342
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto :goto_26

    .line 1336
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getIWlanEAPTypeValue(Ljava/util/Vector;)Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .registers 6
    .param p1, "v"    # Ljava/util/Vector;

    .prologue
    .line 1207
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIWlanEAPTypeValue()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 1209
    .local v0, "ikeVal":Lcom/ipsec/client/IPsecConnection$EapMethod;
    sget-object v1, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecConnection$EapMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 1219
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    :goto_2c
    return-object v1

    .line 1211
    :pswitch_2d
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_2c

    .line 1213
    :pswitch_30
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_2c

    .line 1215
    :pswitch_33
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_2c

    .line 1217
    :pswitch_36
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_2c

    .line 1209
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method private getIWlanEncryptType(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .registers 5
    .param p1, "ikeEncrptVal"    # Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .prologue
    .line 1155
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 1186
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    :goto_26
    return-object v0

    .line 1158
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1160
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1162
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1164
    :pswitch_30
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1166
    :pswitch_33
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1168
    :pswitch_36
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1170
    :pswitch_39
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1172
    :pswitch_3c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1174
    :pswitch_3f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1176
    :pswitch_42
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1178
    :pswitch_45
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1180
    :pswitch_48
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1182
    :pswitch_4b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1184
    :pswitch_4e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_26

    .line 1156
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getIWlanEncryptType(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .registers 5
    .param p1, "encrypt"    # Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .prologue
    .line 810
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 841
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    :goto_26
    return-object v0

    .line 813
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 815
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 817
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 819
    :pswitch_30
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 821
    :pswitch_33
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 823
    :pswitch_36
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 825
    :pswitch_39
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 827
    :pswitch_3c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 829
    :pswitch_3f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 831
    :pswitch_42
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 833
    :pswitch_45
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 835
    :pswitch_48
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 837
    :pswitch_4b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 839
    :pswitch_4e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_26

    .line 811
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;
    .registers 8
    .param p1, "error"    # Lcom/ipsec/client/IPsecError;
    .param p2, "ikeErrorCode"    # I

    .prologue
    .line 1738
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 1795
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v2}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    :goto_30
    return-object v0

    .line 1779
    :pswitch_31
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_30

    .line 1783
    :pswitch_3d
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_30

    .line 1786
    :pswitch_49
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_30

    .line 1790
    :pswitch_55
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/IWlanError$IkeError;

    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getIkeErrorFromCode(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V

    goto :goto_30

    .line 1738
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_3d
        :pswitch_3d
        :pswitch_49
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method private getIWlanEventbyIPSecEvent(Lcom/ipsec/client/IPsecEvent;)I
    .registers 5
    .param p1, "event"    # Lcom/ipsec/client/IPsecEvent;

    .prologue
    const/16 v0, 0x32

    .line 1719
    sget-object v1, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 1733
    :goto_d
    :pswitch_d
    return v0

    .line 1721
    :pswitch_e
    const/16 v0, 0x2d

    goto :goto_d

    .line 1723
    :pswitch_11
    const/16 v0, 0x30

    goto :goto_d

    .line 1725
    :pswitch_14
    const/16 v0, 0x2e

    goto :goto_d

    .line 1727
    :pswitch_17
    const/16 v0, 0x2f

    goto :goto_d

    .line 1729
    :pswitch_1a
    const/16 v0, 0x31

    goto :goto_d

    .line 1719
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_d
    .end packed-switch
.end method

.method private getIWlanIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;I)Lcom/sec/epdg/IWlanEnum$IdentityType;
    .registers 6
    .param p1, "identity"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "uritype"    # I

    .prologue
    .line 718
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanIdentityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uritype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    if-nez p1, :cond_2d

    .line 721
    if-nez p2, :cond_2a

    .line 722
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 744
    :goto_29
    return-object v0

    .line 724
    :cond_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 726
    :cond_2d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IdentityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 741
    if-nez p2, :cond_4f

    .line 742
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 728
    :pswitch_3d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 730
    :pswitch_40
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 732
    :pswitch_43
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 734
    :pswitch_46
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 736
    :pswitch_49
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 738
    :pswitch_4c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 744
    :cond_4f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_29

    .line 726
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method

.method private getIWlanIkeIntegrityValue(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .registers 5
    .param p1, "ikeIntgrVal"    # Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    .prologue
    .line 1089
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanIkeIntegrityValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 1112
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    :goto_26
    return-object v0

    .line 1092
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1094
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1096
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1098
    :pswitch_30
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1100
    :pswitch_33
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1102
    :pswitch_36
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1104
    :pswitch_39
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1106
    :pswitch_3c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1108
    :pswitch_3f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1110
    :pswitch_42
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_26

    .line 1090
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method private getIWlanIkeVersionValue(Lcom/ipsec/client/IPsecConnection$IkeVersion;)Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .registers 5
    .param p1, "ikeVal"    # Lcom/ipsec/client/IPsecConnection$IkeVersion;

    .prologue
    .line 1046
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanIkeVersionValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 1053
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    :goto_26
    return-object v0

    .line 1049
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto :goto_26

    .line 1051
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto :goto_26

    .line 1047
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private getIWlanIkegroupValue(Lcom/ipsec/client/IPsecConnection$IkeGroup;)Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .registers 5
    .param p1, "ikegrp"    # Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .prologue
    .line 1272
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanIkegroupSpinnerValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 1313
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    :goto_26
    return-object v0

    .line 1275
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1277
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1279
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1281
    :pswitch_30
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1283
    :pswitch_33
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1285
    :pswitch_36
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1287
    :pswitch_39
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1289
    :pswitch_3c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1291
    :pswitch_3f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1293
    :pswitch_42
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1295
    :pswitch_45
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1297
    :pswitch_48
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1299
    :pswitch_4b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1301
    :pswitch_4e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1303
    :pswitch_51
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1305
    :pswitch_54
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1307
    :pswitch_57
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1309
    :pswitch_5a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1311
    :pswitch_5d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_26

    .line 1273
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method private getIWlanTunnelType(Lcom/ipsec/client/IPsecConnection$TunnelMode;)Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .registers 5
    .param p1, "tunnelmode"    # Lcom/ipsec/client/IPsecConnection$TunnelMode;

    .prologue
    .line 761
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanTunnelType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$TunnelMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 768
    sget-object v0, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    :goto_26
    return-object v0

    .line 764
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto :goto_26

    .line 766
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto :goto_26

    .line 762
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/epdg/IPSecAdapter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    sget-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    if-nez v0, :cond_15

    .line 152
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Creating IPSecAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/sec/epdg/IPSecAdapter;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 154
    sget-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 158
    :goto_14
    return-object v0

    .line 157
    :cond_15
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "IPSecAdapter already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    goto :goto_14
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapter;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 135
    sget-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    if-nez v0, :cond_17

    .line 136
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Creating IPSecAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/sec/epdg/IPSecAdapter;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 138
    sput-object p1, mOemHandler:Landroid/os/Handler;

    .line 139
    sget-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 144
    :goto_16
    return-object v0

    .line 142
    :cond_17
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "IPSecAdapter already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sput-object p1, mOemHandler:Landroid/os/Handler;

    .line 144
    sget-object v0, mInstance:Lcom/sec/epdg/IPSecAdapter;

    goto :goto_16
.end method

.method private getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;
    .registers 4
    .param p1, "cid"    # I

    .prologue
    .line 216
    const-string v0, "[IPSECADAPTER]"

    const-string/jumbo v1, "getIpSecConnectionbyCid()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, mConnectionDb:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    .line 218
    iget-object v0, p0, mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection;

    .line 219
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getIpSeclibAdapterConf(Lcom/sec/epdg/IWlanEnum$AdapterConf;)Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
    .registers 5
    .param p1, "conf"    # Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .prologue
    .line 1319
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanIkegroupSpinnerValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$AdapterConf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 1328
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    :goto_26
    return-object v0

    .line 1322
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    goto :goto_26

    .line 1324
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    goto :goto_26

    .line 1326
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    goto :goto_26

    .line 1320
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getIpSeclibEncryptType(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .registers 5
    .param p1, "encryptVal"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .prologue
    .line 774
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpSeclibEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 805
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    :goto_26
    return-object v0

    .line 777
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 779
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 781
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 783
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 785
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 787
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 789
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 791
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 793
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 795
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 797
    :pswitch_45
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 799
    :pswitch_48
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 801
    :pswitch_4b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 803
    :pswitch_4e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_26

    .line 775
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getIpSeclibikegrpValue(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .registers 5
    .param p1, "ikegrpval"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .prologue
    .line 1226
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpSeclibikegrpValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 1267
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    :goto_26
    return-object v0

    .line 1229
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1231
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1233
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1235
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1237
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1239
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1241
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1243
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1245
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1247
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1249
    :pswitch_45
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1251
    :pswitch_48
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1253
    :pswitch_4b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1255
    :pswitch_4e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1257
    :pswitch_51
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1259
    :pswitch_54
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1261
    :pswitch_57
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1263
    :pswitch_5a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1265
    :pswitch_5d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_26

    .line 1227
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method private getIpSeclibintegrityType(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .registers 5
    .param p1, "integrityval"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .prologue
    .line 847
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpSeclibintegrityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 878
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    :goto_26
    return-object v0

    .line 850
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 852
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 854
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 856
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 858
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 860
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 862
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 864
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 866
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 868
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 870
    :pswitch_45
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 872
    :pswitch_48
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 874
    :pswitch_4b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 876
    :pswitch_4e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_26

    .line 848
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getIpsecIwlanAuthType(Lcom/ipsec/client/IPsecConnection$HostAuthentication;)Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .registers 5
    .param p1, "authtype"    # Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .prologue
    .line 651
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpsecIwlanAuthType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 660
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    :goto_26
    return-object v0

    .line 654
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto :goto_26

    .line 656
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto :goto_26

    .line 658
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto :goto_26

    .line 652
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getIpsecIwlanIpType(Lcom/ipsec/client/IPsecConnection$IPVersion;)Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .registers 5
    .param p1, "ipversion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    .prologue
    .line 679
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpsecIwlanIpType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 688
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    :goto_26
    return-object v0

    .line 682
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_26

    .line 684
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_26

    .line 686
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_26

    .line 680
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getIpseclibAuthVal(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)Lcom/ipsec/client/IPsecConnection$HostAuthentication;
    .registers 5
    .param p1, "authType"    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .prologue
    .line 636
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibAuthVal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 645
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    :goto_26
    return-object v0

    .line 639
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    goto :goto_26

    .line 641
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    goto :goto_26

    .line 643
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    goto :goto_26

    .line 637
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;
    .registers 6
    .param p1, "identityType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p2, "uritype"    # I

    .prologue
    .line 694
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibIdentityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uritype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 709
    if-nez p2, :cond_45

    .line 710
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 712
    :goto_32
    return-object v0

    .line 697
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 699
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 701
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 703
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 705
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 707
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 712
    :cond_45
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_32

    .line 695
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method private getIpseclibIkeEncryptType(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .registers 5
    .param p1, "encryptval"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .prologue
    .line 1118
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibIkeEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 1149
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    :goto_26
    return-object v0

    .line 1121
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1123
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1125
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1127
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1129
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1131
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1133
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1135
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1137
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1139
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1141
    :pswitch_45
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1143
    :pswitch_48
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1145
    :pswitch_4b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1147
    :pswitch_4e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_26

    .line 1119
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getIpseclibIkeVersionValue(Lcom/sec/epdg/IWlanEnum$Ikeversion;)Lcom/ipsec/client/IPsecConnection$IkeVersion;
    .registers 5
    .param p1, "version"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .prologue
    .line 1034
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibIkeVersionValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$Ikeversion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 1041
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    :goto_26
    return-object v0

    .line 1037
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_1:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    goto :goto_26

    .line 1039
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    goto :goto_26

    .line 1035
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private getIpseclibIkeintegrityValue(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)Lcom/ipsec/client/IPsecConnection$IkeIntegrity;
    .registers 5
    .param p1, "ikeInegrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .prologue
    .line 1060
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibIkeintegrityValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 1083
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    :goto_26
    return-object v0

    .line 1063
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1065
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1067
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1069
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1071
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1073
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1075
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1077
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1079
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1081
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_26

    .line 1061
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method private getIpseclibIpTypeVal(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)Lcom/ipsec/client/IPsecConnection$IPVersion;
    .registers 5
    .param p1, "version"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .prologue
    .line 665
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibIpTypeVal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 674
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    :goto_26
    return-object v0

    .line 668
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_26

    .line 670
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_26

    .line 672
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_26

    .line 666
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getIpseclibLifeType(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;)Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .registers 5
    .param p1, "lifetimetype"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .prologue
    .line 1009
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibLifeType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 1016
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    :goto_26
    return-object v0

    .line 1012
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    goto :goto_26

    .line 1014
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    goto :goto_26

    .line 1010
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private getIpseclibTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)Lcom/ipsec/client/IPsecConnection$TunnelMode;
    .registers 5
    .param p1, "tunnelMode"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .prologue
    .line 749
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibTunnelMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 756
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    :goto_26
    return-object v0

    .line 752
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    goto :goto_26

    .line 754
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    goto :goto_26

    .line 750
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private getIpseclibValue(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .registers 5
    .param p1, "group"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .prologue
    .line 920
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpseclibValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 959
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    :goto_26
    return-object v0

    .line 923
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 925
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 927
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 929
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 931
    :pswitch_33
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 933
    :pswitch_36
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 935
    :pswitch_39
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 937
    :pswitch_3c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 939
    :pswitch_3f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 941
    :pswitch_42
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 943
    :pswitch_45
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 945
    :pswitch_48
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 947
    :pswitch_4b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 949
    :pswitch_4e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 951
    :pswitch_51
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 953
    :pswitch_54
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 955
    :pswitch_57
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 957
    :pswitch_5a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_26

    .line 921
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method private getIwlanIpsecLifeType(Lcom/ipsec/client/IPsecConnection$IPsecLifeType;)Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .registers 5
    .param p1, "ipseclifetype"    # Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    .prologue
    .line 1022
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIwlanIpsecLifeType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 1029
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    :goto_26
    return-object v0

    .line 1025
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto :goto_26

    .line 1027
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto :goto_26

    .line 1023
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private getIwlanintegrityType(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .registers 5
    .param p1, "integrityval"    # Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .prologue
    .line 884
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIwlanintegrityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 915
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    :goto_26
    return-object v0

    .line 887
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 889
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 891
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 893
    :pswitch_30
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 895
    :pswitch_33
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 897
    :pswitch_36
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 899
    :pswitch_39
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 901
    :pswitch_3c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 903
    :pswitch_3f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 905
    :pswitch_42
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 907
    :pswitch_45
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 909
    :pswitch_48
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 911
    :pswitch_4b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 913
    :pswitch_4e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_26

    .line 885
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getIwlanipsecgroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .registers 5
    .param p1, "integrityval"    # Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .prologue
    .line 964
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIwlanipsecgroup()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 1003
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    :goto_26
    return-object v0

    .line 967
    :pswitch_27
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 969
    :pswitch_2a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 971
    :pswitch_2d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 973
    :pswitch_30
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 975
    :pswitch_33
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 977
    :pswitch_36
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 979
    :pswitch_39
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 981
    :pswitch_3c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 983
    :pswitch_3f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 985
    :pswitch_42
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 987
    :pswitch_45
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 989
    :pswitch_48
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 991
    :pswitch_4b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 993
    :pswitch_4e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 995
    :pswitch_51
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 997
    :pswitch_54
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 999
    :pswitch_57
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 1001
    :pswitch_5a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_26

    .line 965
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method private initIpSecClient(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Initalizing IPSec Library"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/ipsec/client/IPsecClient;->getInstance(Landroid/content/Context;)Lcom/ipsec/client/IPsecClient;

    move-result-object v0

    sput-object v0, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    .line 197
    sget-object v0, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v0, p0}, Lcom/ipsec/client/IPsecClient;->setServiceListener(Lcom/ipsec/client/IIPsecListener;)V

    .line 198
    invoke-static {}, startService()V

    .line 200
    return-void
.end method

.method private mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;I)Lcom/ipsec/client/IPsecConnection;
    .registers 30
    .param p1, "iwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;
    .param p2, "ipv4HandoverAddr"    # Ljava/lang/String;
    .param p3, "ipv6HandoverAddr"    # Ljava/lang/String;
    .param p4, "cid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v21, "[IPSECADAPTER]"

    const-string/jumbo v22, "mapIwlanSettingToIPsecConnection()"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v16, 0x0

    .line 233
    .local v16, "inetAddress":Ljava/net/InetAddress;
    new-instance v6, Lcom/ipsec/client/IPsecConnection;

    invoke-direct {v6}, Lcom/ipsec/client/IPsecConnection;-><init>()V

    .line 234
    .local v6, "connection":Lcom/ipsec/client/IPsecConnection;
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v16

    .line 235
    const/4 v11, 0x0

    .line 237
    .local v11, "hostAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setName(Ljava/lang/String;)V

    .line 238
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, p4, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setVirtualAdapterName(Ljava/lang/String;)V

    .line 241
    if-nez v16, :cond_48

    .line 242
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Error, wifi is connected still epdg server ip is null, returning null"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v6, 0x0

    .line 464
    .end local v6    # "connection":Lcom/ipsec/client/IPsecConnection;
    :goto_47
    return-object v6

    .line 246
    .restart local v6    # "connection":Lcom/ipsec/client/IPsecConnection;
    :cond_48
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 247
    const/16 v21, 0x0

    const-string v22, "[IPSECADAPTER]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "epdg fqdn is already resolved, setting gateway, epdg ip is: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v11, :cond_3f0

    invoke-static {v11}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_77

    invoke-static {v11}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3f0

    .line 252
    :cond_77
    invoke-virtual {v6, v11}, Lcom/ipsec/client/IPsecConnection;->setGateway(Ljava/lang/String;)V

    .line 257
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setUserAuthentication(Z)V

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecIpType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibIpTypeVal(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setSubnetType(Lcom/ipsec/client/IPsecConnection$IPVersion;)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmOwnUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setOwnIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "internal"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3fa

    .line 270
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Set Testing type to Inside Secure"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget v21, INSIDE_SECURE:I

    sput v21, TESTING_TYPE:I

    .line 280
    :goto_cf
    sget v21, TESTING_TYPE:I

    sget v22, CISCO_TESTING:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11c

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setUsername(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, setIkeEAPTypeValue(Lcom/sec/epdg/IWlanEnum$IkeEapType;)Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V

    .line 289
    :cond_11c
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PFS for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_421

    .line 292
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPerfectForwardSecrecy(Z)V

    .line 296
    :cond_15a
    :goto_15a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecauthType()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibAuthVal(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setHostAuthentication(Lcom/ipsec/client/IPsecConnection$HostAuthentication;)V

    .line 299
    sget v21, TESTING_TYPE:I

    sget v22, INSIDE_SECURE:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_193

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "self@ipsec.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_436

    .line 302
    const-string v21, "batikgeologic"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPreSharedKey(Ljava/lang/String;)V

    .line 314
    :cond_193
    :goto_193
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setGlobalDnsConfiguration(Z)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setTunnelMode(Lcom/ipsec/client/IPsecConnection$TunnelMode;)V

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecEncryptionType()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpSeclibEncryptType(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecIntegrityType()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpSeclibintegrityType(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecDHGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibValue(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V

    .line 329
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecAntiReplay(Z)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeTimeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibLifeType(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;)Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeval()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setIPsecLife(Lcom/ipsec/client/IPsecConnection$IPsecLifeType;I)V

    .line 334
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingCaCertificate()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_257

    .line 335
    const/4 v4, 0x0

    .line 336
    .local v4, "caCert":Ljava/security/cert/X509Certificate;
    const/16 v17, 0x0

    .line 337
    .local v17, "input":Ljava/io/FileInputStream;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->caCertificatePath()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "ca":Ljava/lang/String;
    :try_start_225
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22c
    .catch Ljava/security/cert/CertificateException; {:try_start_225 .. :try_end_22c} :catch_4a6
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_22c} :catch_4e7
    .catchall {:try_start_225 .. :try_end_22c} :catchall_528

    .line 340
    .end local v17    # "input":Ljava/io/FileInputStream;
    .local v18, "input":Ljava/io/FileInputStream;
    :try_start_22c
    const-string v21, "X.509"

    invoke-static/range {v21 .. v21}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 341
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 342
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Success to generate CA"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/security/cert/CertificateException; {:try_start_22c .. :try_end_244} :catch_687
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_244} :catch_682
    .catchall {:try_start_22c .. :try_end_244} :catchall_67d

    .line 349
    if-eqz v18, :cond_249

    :try_start_246
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_246 .. :try_end_249} :catch_486

    :cond_249
    move-object/from16 v17, v18

    .line 355
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :cond_24b
    :goto_24b
    if-eqz v4, :cond_257

    .line 356
    :try_start_24d
    invoke-virtual {v6, v4}, Lcom/ipsec/client/IPsecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 357
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Success to setCaCertificate"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_257
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_24d .. :try_end_257} :catch_54c

    .line 367
    .end local v3    # "ca":Ljava/lang/String;
    .end local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v17    # "input":Ljava/io/FileInputStream;
    :cond_257
    :goto_257
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeversion()Lcom/sec/epdg/IWlanEnum$Ikeversion;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibIkeVersionValue(Lcom/sec/epdg/IWlanEnum$Ikeversion;)Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeVersion(Lcom/ipsec/client/IPsecConnection$IkeVersion;)V

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeIntergrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibIkeintegrityValue(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEncryptType()Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibIkeEncryptType(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDhGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpSeclibikegrpValue(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)Lcom/ipsec/client/IPsecConnection$IkeGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeLife()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeLife(I)V

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeWindowSize()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeWindowSize(I)V

    .line 383
    sget v21, TESTING_TYPE:I

    sget v22, SETCOM_TESTING:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_312

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setUsername(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, setIkeEAPTypeValue(Lcom/sec/epdg/IWlanEnum$IkeEapType;)Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V

    .line 392
    :cond_312
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeConnectionTimeOut()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setConnectTimeout(I)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDpdTimeOut()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setDpdTimeout(I)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setNattKeepaliveTimeout(I)V

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIkeVirtualAdapterConf()Lcom/sec/epdg/IWlanEnum$AdapterConf;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpSeclibAdapterConf(Lcom/sec/epdg/IWlanEnum$AdapterConf;)Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setVirtualAdapterConfiguration(Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;)V

    .line 405
    const/16 v21, 0x0

    const-string v22, "[IPSECADAPTER]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HandOverL2W Requesting ipv4:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "ipv6:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, IPV6PREFIX:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 411
    .local v19, "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setRequestedRacIPv4Address(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setRequestedRacIPv6Address(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getPcscfattributes()Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-result-object v20

    .line 416
    .local v20, "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    sget-object v21, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5ae

    .line 417
    sget-object v21, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_56a

    .line 418
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF_CONF_V4"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    .line 435
    :goto_3c1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getImeiVendorAttrVal()Lcom/sec/epdg/IWlanEnum$Imei;

    move-result-object v14

    .line 436
    .local v14, "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    sget-object v21, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    move-object/from16 v0, v21

    if-ne v0, v14, :cond_661

    .line 437
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Adding IMEI vendor attribute to IKE connection"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getImeiVendorAttributeType()I

    move-result v13

    .line 439
    .local v13, "imeiVendorAttrType":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/epdg/EpdgUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "imeiVendorAttrValue":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5b7

    .line 441
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Adding IMEI Error"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v6, 0x0

    goto/16 :goto_47

    .line 254
    .end local v13    # "imeiVendorAttrType":I
    .end local v14    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v15    # "imeiVendorAttrValue":Ljava/lang/String;
    .end local v19    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v20    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    :cond_3f0
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Error, wifi is connected still epdg server ip is not valid, returning null"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v6, 0x0

    goto/16 :goto_47

    .line 272
    :cond_3fa
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "setcom"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_414

    .line 273
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Set Testing type to setcom"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget v21, SETCOM_TESTING:I

    sput v21, TESTING_TYPE:I

    goto/16 :goto_cf

    .line 276
    :cond_414
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Set Testing type to cisco"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget v21, CISCO_TESTING:I

    sput v21, TESTING_TYPE:I

    goto/16 :goto_cf

    .line 293
    :cond_421
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15a

    .line 294
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPerfectForwardSecrecy(Z)V

    goto/16 :goto_15a

    .line 304
    :cond_436
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "south@ipsec.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_457

    .line 306
    const-string/jumbo v21, "hostelrybumped"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPreSharedKey(Ljava/lang/String;)V

    goto/16 :goto_193

    .line 307
    :cond_457
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "councilors@ipsec.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_193

    .line 309
    const-string/jumbo v21, "harrowedregularizes"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPreSharedKey(Ljava/lang/String;)V

    .line 310
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getIpseclibIpTypeVal(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setSubnetType(Lcom/ipsec/client/IPsecConnection$IPVersion;)V

    goto/16 :goto_193

    .line 350
    .restart local v3    # "ca":Ljava/lang/String;
    .restart local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_486
    move-exception v10

    .line 351
    .local v10, "eio":Ljava/io/IOException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v18

    .line 353
    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_24b

    .line 343
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v10    # "eio":Ljava/io/IOException;
    :catch_4a6
    move-exception v7

    .line 344
    .local v7, "e":Ljava/security/cert/CertificateException;
    :goto_4a7
    :try_start_4a7
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mapIwlanSettingToIPsecConnection(): CertificateException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c2
    .catchall {:try_start_4a7 .. :try_end_4c2} :catchall_528

    .line 349
    if-eqz v17, :cond_24b

    :try_start_4c4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_4c7
    .catch Ljava/io/IOException; {:try_start_4c4 .. :try_end_4c7} :catch_4c9

    goto/16 :goto_24b

    .line 350
    :catch_4c9
    move-exception v10

    .line 351
    .restart local v10    # "eio":Ljava/io/IOException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24b

    .line 345
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v10    # "eio":Ljava/io/IOException;
    :catch_4e7
    move-exception v9

    .line 346
    .local v9, "e2":Ljava/io/IOException;
    :goto_4e8
    :try_start_4e8
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_503
    .catchall {:try_start_4e8 .. :try_end_503} :catchall_528

    .line 349
    if-eqz v17, :cond_24b

    :try_start_505
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_508
    .catch Ljava/io/IOException; {:try_start_505 .. :try_end_508} :catch_50a

    goto/16 :goto_24b

    .line 350
    :catch_50a
    move-exception v10

    .line 351
    .restart local v10    # "eio":Ljava/io/IOException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24b

    .line 348
    .end local v9    # "e2":Ljava/io/IOException;
    .end local v10    # "eio":Ljava/io/IOException;
    :catchall_528
    move-exception v21

    .line 349
    :goto_529
    if-eqz v17, :cond_52e

    :try_start_52b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_52e
    .catch Ljava/io/IOException; {:try_start_52b .. :try_end_52e} :catch_52f

    .line 352
    :cond_52e
    :goto_52e
    throw v21

    .line 350
    :catch_52f
    move-exception v10

    .line 351
    .restart local v10    # "eio":Ljava/io/IOException;
    const-string v22, "[IPSECADAPTER]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52e

    .line 359
    .end local v10    # "eio":Ljava/io/IOException;
    :catch_54c
    move-exception v8

    .line 360
    .local v8, "e1":Ljava/security/cert/CertificateEncodingException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mapIwlanSettingToIPsecConnection(): CertificateEncodingException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_257

    .line 421
    .end local v3    # "ca":Ljava/lang/String;
    .end local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "e1":Ljava/security/cert/CertificateEncodingException;
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .restart local v20    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    :cond_56a
    sget-object v21, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_589

    .line 422
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF_CONF_V6"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    goto/16 :goto_3c1

    .line 426
    :cond_589
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF_CONF_V4_V6"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    .line 429
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    goto/16 :goto_3c1

    .line 433
    :cond_5ae
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF-NONE"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c1

    .line 444
    .restart local v13    # "imeiVendorAttrType":I
    .restart local v14    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .restart local v15    # "imeiVendorAttrValue":Ljava/lang/String;
    :cond_5b7
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    .line 445
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMEI VendorAttributeType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "IMEI VendorAttributeValue:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v23

    if-eqz v23, :cond_5ea

    const-string v15, "Suppressed"

    .end local v15    # "imeiVendorAttrValue":Ljava/lang/String;
    :cond_5ea
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v13    # "imeiVendorAttrType":I
    :goto_5f7
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IWLAN_NETWORK_INTERFACE is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v12, Lcom/ipsec/client/IPsecNetworkInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lcom/ipsec/client/IPsecNetworkInterface;-><init>(Ljava/lang/String;)V

    .line 455
    .local v12, "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MOBIKE for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_669

    .line 458
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setMobike(Z)V

    .line 462
    :cond_65c
    :goto_65c
    invoke-virtual {v6, v12}, Lcom/ipsec/client/IPsecConnection;->addInterface(Lcom/ipsec/client/IPsecNetworkInterface;)V

    goto/16 :goto_47

    .line 448
    .end local v12    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    :cond_661
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Skipping IMEI vendor attribute in IKE connection"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f7

    .line 459
    .restart local v12    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    :cond_669
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_65c

    .line 460
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setMobike(Z)V

    goto :goto_65c

    .line 348
    .end local v12    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    .end local v14    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v19    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v20    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .restart local v3    # "ca":Ljava/lang/String;
    .restart local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catchall_67d
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_529

    .line 345
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_682
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_4e8

    .line 343
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_687
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_4a7
.end method

.method private onCheckConnectionRequestRecv(II)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 616
    iget-boolean v1, p0, mbStarted:Z

    if-nez v1, :cond_c

    .line 617
    const-string v1, "[IPSECADAPTER]"

    const-string v2, "IPSecService is not connected yet"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_b
    return-void

    .line 621
    :cond_c
    invoke-direct {p0, p1}, getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;

    move-result-object v0

    .line 622
    .local v0, "conn":Lcom/ipsec/client/IPsecConnection;
    if-eqz v0, :cond_52

    .line 623
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) - timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4c

    iget-object v1, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 625
    const-string v1, "[IPSECADAPTER]"

    const-string v2, "checkConnection wake lock"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 628
    :cond_4c
    sget-object v1, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v1, v0, p2}, Lcom/ipsec/client/IPsecClient;->checkConnection(Lcom/ipsec/client/IPsecConnection;I)Lcom/ipsec/client/IPsecError;

    goto :goto_b

    .line 630
    :cond_52
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection: Error Cannot find ipsec conn obj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V
    .registers 16
    .param p1, "info"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p2, "cid"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x32

    const/4 v10, -0x1

    .line 469
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect(): cid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "ipsecconn":Lcom/ipsec/client/IPsecConnection;
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$400(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    .line 473
    .local v3, "iwlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    iget-boolean v7, p0, mbStarted:Z

    if-nez v7, :cond_47

    .line 474
    const-string v7, "[IPSECADAPTER]"

    const-string v8, "IPsecservice not started"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v7, mOemHandler:Landroid/os/Handler;

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 476
    .local v5, "msg":Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->what:I

    .line 477
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 478
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v8, v10}, getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v8

    invoke-direct {v7, p2, v12, v8}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 527
    :goto_46
    return-void

    .line 485
    .end local v5    # "msg":Landroid/os/Message;
    :cond_47
    :try_start_47
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv4Addr()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$500(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv6Addr()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$600(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8, p2}, mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;I)Lcom/ipsec/client/IPsecConnection;
    :try_end_52
    .catch Ljava/text/ParseException; {:try_start_47 .. :try_end_52} :catch_89

    move-result-object v2

    .line 491
    :goto_53
    if-nez v2, :cond_a7

    .line 492
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onConnectRequestRecv(): ipsecconn is null, so posting ERROR event for cid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v7, mOemHandler:Landroid/os/Handler;

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 495
    .restart local v5    # "msg":Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->what:I

    .line 496
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 497
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v8, v10}, getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v8

    invoke-direct {v7, p2, v12, v8}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_46

    .line 487
    .end local v5    # "msg":Landroid/os/Message;
    :catch_89
    move-exception v1

    .line 488
    .local v1, "e":Ljava/text/ParseException;
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onConnectRequestRecv(): ParseException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_53

    .line 502
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_a7
    new-instance v0, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v0}, Lcom/ipsec/client/IPsecEventData;-><init>()V

    .line 503
    .local v0, "data":Lcom/ipsec/client/IPsecEventData;
    sget-object v7, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v7, v2, v0}, Lcom/ipsec/client/IPsecClient;->connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v6

    .line 505
    .local v6, "result":Lcom/ipsec/client/IPsecError;
    sget-object v7, mOemHandler:Landroid/os/Handler;

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 506
    .restart local v5    # "msg":Landroid/os/Message;
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 507
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v6, v7, :cond_d7

    .line 508
    invoke-direct {p0, p2, v2}, addIPsecConnectionDb(ILcom/ipsec/client/IPsecConnection;)V

    .line 509
    invoke-direct {p0, p2}, getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v4

    .line 510
    .local v4, "lp":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    const/16 v7, 0x2d

    iput v7, v5, Landroid/os/Message;->what:I

    .line 525
    .end local v4    # "lp":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    :goto_cb
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 526
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    invoke-direct {p0, v7, v0}, showToastOnConnectionStatusChanged(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    goto/16 :goto_46

    .line 513
    :cond_d7
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    if-nez v7, :cond_107

    .line 515
    iput v11, v5, Landroid/os/Message;->what:I

    .line 516
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    invoke-direct {p0, v6, v10}, getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v8

    invoke-direct {v7, p2, v12, v8}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_cb

    .line 519
    :cond_107
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    invoke-direct {p0, v7}, getIWlanEventbyIPSecEvent(Lcom/ipsec/client/IPsecEvent;)I

    move-result v7

    iput v7, v5, Landroid/os/Message;->what:I

    .line 520
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v8

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getIPsecError()Lcom/ipsec/client/IPsecError;

    move-result-object v9

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getIkeErrorValue()I

    move-result v10

    invoke-direct {p0, v9, v10}, getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v9

    invoke-direct {v7, p2, v8, v9}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_cb
.end method

.method private onDisconnectRequestRecv(I)V
    .registers 8
    .param p1, "cid"    # I

    .prologue
    .line 594
    iget-boolean v2, p0, mbStarted:Z

    if-nez v2, :cond_2a

    .line 595
    const-string v2, "[IPSECADAPTER]"

    const-string v3, "IPSecService is not connected yet"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    sget-object v2, mOemHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 597
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 598
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 599
    new-instance v2, Lcom/sec/epdg/IWlanConnectResult;

    const/4 v3, 0x0

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 613
    .end local v1    # "msg":Landroid/os/Message;
    :goto_29
    return-void

    .line 605
    :cond_2a
    invoke-direct {p0, p1}, getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;

    move-result-object v0

    .line 606
    .local v0, "conn":Lcom/ipsec/client/IPsecConnection;
    if-eqz v0, :cond_36

    .line 608
    sget-object v2, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v2, v0}, Lcom/ipsec/client/IPsecClient;->disconnect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;

    goto :goto_29

    .line 610
    :cond_36
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disconnect: Error Cannot find ipsec conn obj : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method private onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V
    .registers 10
    .param p1, "eventInfo"    # Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    .prologue
    .line 1802
    iget-object v2, p1, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->event:Lcom/ipsec/client/IPsecEvent;

    .line 1803
    .local v2, "event":Lcom/ipsec/client/IPsecEvent;
    iget-object v1, p1, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1804
    .local v1, "data":Lcom/ipsec/client/IPsecEventData;
    const-string v4, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onIpSecAdapterConnectionStatusChanged received :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v4

    invoke-direct {p0, v4}, getCidfromConnDb(Lcom/ipsec/client/IPsecConnection;)I

    move-result v0

    .line 1807
    .local v0, "cid":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_30

    .line 1808
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "Spurious Connection event no matching entity in connection Db so no action taken"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    :cond_2f
    :goto_2f
    return-void

    .line 1811
    :cond_30
    const-string v4, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event received for context ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-direct {p0, v2, v1}, showToastOnConnectionStatusChanged(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    .line 1816
    sget-object v4, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    if-ne v2, v4, :cond_68

    .line 1818
    iget-object v4, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2f

    iget-object v4, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1819
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "checkConnection wake lock release : IPSEC_EVENT_CONNECTION_ACTIVE"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object v4, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2f

    .line 1824
    :cond_68
    sget-object v4, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne v2, v4, :cond_84

    .line 1825
    iget-object v4, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_84

    iget-object v4, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1826
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "checkConnection wake lock release : IPSEC_EVENT_PEER_DISCONNECTED"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v4, p0, mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1830
    :cond_84
    sget-object v4, mOemHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1831
    .local v3, "msg":Landroid/os/Message;
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 1832
    invoke-direct {p0, v2}, getIWlanEventbyIPSecEvent(Lcom/ipsec/client/IPsecEvent;)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1836
    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getIPsecError()Lcom/ipsec/client/IPsecError;

    move-result-object v4

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v4, v5, :cond_b6

    .line 1837
    new-instance v4, Lcom/sec/epdg/IWlanConnectResult;

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getIPsecError()Lcom/ipsec/client/IPsecError;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getIkeErrorValue()I

    move-result v7

    invoke-direct {p0, v6, v7}, getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1847
    :goto_b1
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2f

    .line 1841
    :cond_b6
    sget-object v4, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne v2, v4, :cond_c1

    .line 1842
    invoke-direct {p0, v0}, getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_b1

    .line 1844
    :cond_c1
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_b1
.end method

.method private onIpSecAdapterServiceStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V
    .registers 8
    .param p1, "status"    # Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    .prologue
    const/4 v5, 0x0

    .line 1350
    iget-object v1, p1, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->error:Lcom/ipsec/client/IPsecError;

    .line 1351
    .local v1, "error":Lcom/ipsec/client/IPsecError;
    iget-object v0, p1, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1353
    .local v0, "data":Lcom/ipsec/client/IPsecEventData;
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    if-ne v1, v2, :cond_34

    .line 1355
    if-eqz v0, :cond_2b

    .line 1356
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIpSecAdapterServiceStatusChanged() Service Changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :goto_28
    iput-boolean v5, p0, mbStarted:Z

    .line 1385
    :goto_2a
    return-void

    .line 1359
    :cond_2b
    const-string v2, "[IPSECADAPTER]"

    const-string/jumbo v3, "onIpSecAdapterServiceStatusChanged() Service ChangedIPSEC_REMOTE_SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 1363
    :cond_34
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v1, v2, :cond_63

    .line 1365
    if-eqz v0, :cond_5a

    .line 1366
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIpSecAdapterServiceStatusChanged() Service Changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :goto_57
    iput-boolean v5, p0, mbStarted:Z

    goto :goto_2a

    .line 1369
    :cond_5a
    const-string v2, "[IPSECADAPTER]"

    const-string/jumbo v3, "onIpSecAdapterServiceStatusChanged() Service ChangedService start up failed. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 1375
    :cond_63
    if-eqz v0, :cond_86

    .line 1376
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIpSecAdapterServiceStatusChanged() Service Changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :goto_82
    const/4 v2, 0x1

    iput-boolean v2, p0, mbStarted:Z

    goto :goto_2a

    .line 1379
    :cond_86
    const-string v2, "[IPSECADAPTER]"

    const-string/jumbo v3, "onIpSecAdapterServiceStatusChanged() Service ChangedService started"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method

.method private setIkeEAPTypeValue(Lcom/sec/epdg/IWlanEnum$IkeEapType;)Lcom/ipsec/client/IPsecConnection$EapMethod;
    .registers 5
    .param p1, "eapType"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .prologue
    .line 1191
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeEapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 1202
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    :goto_26
    return-object v0

    .line 1194
    :pswitch_27
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_26

    .line 1196
    :pswitch_2a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_26

    .line 1198
    :pswitch_2d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_26

    .line 1200
    :pswitch_30
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_26

    .line 1192
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method private showToastOnConnectionStatusChanged(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
    .registers 9
    .param p1, "event"    # Lcom/ipsec/client/IPsecEvent;
    .param p2, "data"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 531
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 532
    .local v1, "status":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 533
    .local v2, "toasttext":Ljava/lang/String;
    const/4 v0, 0x0

    .line 534
    .local v0, "destroyConnection":Z
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_63

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nConnection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "Received Connected event"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "IPSEC_EVENT_CONNECTED"

    .line 584
    :cond_38
    :goto_38
    const/4 v3, 0x1

    if-ne v0, v3, :cond_42

    .line 585
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "IPSecConnection is eligible for removal from DB"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_42
    const-string v3, "[IPSECADAPTER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void

    .line 539
    :cond_63
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_85

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup failed IKE error value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecEventData;->getIkeErrorValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const/4 v0, 0x1

    .line 543
    const-string v2, "IPSEC_EVENT_CONNECTION_SETUP_FAILURE"

    goto :goto_38

    .line 545
    :cond_85
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_92

    .line 546
    const-string v3, "Ipsec connection is disconnected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const/4 v0, 0x1

    .line 548
    const-string v2, "IPSEC_EVENT_DISCONNECTED"

    goto :goto_38

    .line 550
    :cond_92
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_9f

    .line 551
    const-string v3, "Ipsec connection is disconnected by peer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    const/4 v0, 0x1

    .line 553
    const-string v2, "IPSEC_EVENT_PEER_DISCONNECTED"

    goto :goto_38

    .line 555
    :cond_9f
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_ab

    .line 556
    const-string v3, "Ipsec connection is active"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    const-string v2, "IPSEC_EVENT_CONNECTION_ACTIVE"

    goto :goto_38

    .line 559
    :cond_ab
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    if-eq p1, v3, :cond_b7

    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    if-eq p1, v3, :cond_b7

    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_dd

    .line 568
    :cond_b7
    const-string v3, "IPsec connection is disconnected by peer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    const/4 v0, 0x1

    .line 570
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_c5

    .line 571
    const-string v2, "IPSEC_EVENT_CONNECTION_RESET"

    goto/16 :goto_38

    .line 572
    :cond_c5
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_cd

    .line 573
    const-string v2, "IPSEC_EVENT_DISCONNECTING"

    goto/16 :goto_38

    .line 574
    :cond_cd
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_d5

    .line 575
    const-string v2, "IPSEC_EVENT_ERROR"

    goto/16 :goto_38

    .line 576
    :cond_d5
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_38

    .line 577
    const-string v2, "IPSEC_EVENT_PEER_DISCONNECTED"

    goto/16 :goto_38

    .line 579
    :cond_dd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n Event received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const/4 v0, 0x1

    .line 581
    const-string v2, "IPSEC_EVENT_UNKNOWN"

    goto/16 :goto_38
.end method

.method private static startService()V
    .registers 2

    .prologue
    .line 204
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Starting IPSec Service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecClient;->startService()V

    .line 206
    return-void
.end method

.method private stopService()V
    .registers 5

    .prologue
    .line 210
    sget-object v1, mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecClient;->stopService()Lcom/ipsec/client/IPsecError;

    move-result-object v0

    .line 211
    .local v0, "result":Lcom/ipsec/client/IPsecError;
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping IPSec Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V
    .registers 9
    .param p1, "arg0"    # Lcom/ipsec/client/IPsecError;
    .param p2, "arg1"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 1862
    const-string v4, "[IPSECADAPTER]"

    const-string/jumbo v5, "onServiceStatusChanged()"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    move-object v1, p1

    .line 1864
    .local v1, "event":Lcom/ipsec/client/IPsecError;
    move-object v0, p2

    .line 1866
    .local v0, "data":Lcom/ipsec/client/IPsecEventData;
    const-string v4, "[IPSECADAPTER]"

    const-string/jumbo v5, "onServiceStatusChanged()"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    new-instance v3, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;-><init>(Lcom/sec/epdg/IPSecAdapter$1;)V

    .line 1868
    .local v3, "status":Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
    iput-object v1, v3, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->error:Lcom/ipsec/client/IPsecError;

    .line 1869
    iput-object v0, v3, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1870
    iget-object v4, p0, mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1871
    .local v2, "msg":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1872
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1873
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1874
    return-void
.end method

.method public onUpdate(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
    .registers 7
    .param p1, "arg0"    # Lcom/ipsec/client/IPsecEvent;
    .param p2, "arg1"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 1887
    const-string v2, "[IPSECADAPTER]"

    const-string/jumbo v3, "onUpdate()"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    new-instance v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;-><init>(Lcom/sec/epdg/IPSecAdapter$1;)V

    .line 1889
    .local v0, "eventInfo":Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;
    iput-object p1, v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->event:Lcom/ipsec/client/IPsecEvent;

    .line 1890
    iput-object p2, v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1891
    iget-object v2, p0, mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1892
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1893
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1894
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1896
    return-void
.end method

.method public postCheckConnectionMessage(IILjava/lang/Object;)V
    .registers 6
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 186
    iget-object v1, p0, mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 189
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 190
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "ipv4addr"    # Ljava/lang/String;
    .param p5, "ipv6addr"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;-><init>(Lcom/sec/epdg/IPSecAdapter$1;)V

    .line 165
    .local v0, "info":Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    check-cast p3, Lcom/sec/epdg/IWlanApnSetting;

    .end local p3    # "obj":Ljava/lang/Object;
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    invoke-static {v0, p3}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$100(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V

    .line 166
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv4Addr(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$200(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V

    .line 167
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv6Addr(Ljava/lang/String;)V
    invoke-static {v0, p5}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$300(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 169
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 170
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 171
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 172
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 174
    return-void
.end method

.method public postDisconnectMessage(IILjava/lang/Object;)V
    .registers 6
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 177
    iget-object v1, p0, mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 180
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 181
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method
