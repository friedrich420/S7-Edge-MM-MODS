.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, INADDR_ANY:Ljava/net/Inet4Address;

    .line 38
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, ETHER_BROADCAST:[B

    return-void

    nop

    :array_16
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .registers 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, mTransId:I

    .line 298
    iput-short p2, p0, mSecs:S

    .line 299
    iput-object p3, p0, mClientIp:Ljava/net/Inet4Address;

    .line 300
    iput-object p4, p0, mYourIp:Ljava/net/Inet4Address;

    .line 301
    iput-object p5, p0, mNextIp:Ljava/net/Inet4Address;

    .line 302
    iput-object p6, p0, mRelayIp:Ljava/net/Inet4Address;

    .line 303
    iput-object p7, p0, mClientMac:[B

    .line 304
    iput-boolean p8, p0, mBroadcast:Z

    .line 305
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 509
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 510
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 571
    if-eqz p2, :cond_10

    .line 572
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 573
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 574
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 576
    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    .prologue
    .line 560
    if-eqz p2, :cond_10

    .line 561
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 562
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 565
    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 583
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    .line 587
    return-void

    .line 584
    :catch_a
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    .prologue
    .line 531
    if-eqz p2, :cond_9

    .line 532
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 534
    :cond_9
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .registers 10
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v6, 0xff

    .line 540
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 554
    :cond_a
    return-void

    .line 542
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x4

    .line 543
    .local v2, "optionLen":I
    if-le v2, v6, :cond_36

    .line 544
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP option too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 548
    :cond_36
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 549
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 551
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 552
    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_41
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    .prologue
    const/16 v3, 0xff

    .line 516
    if-eqz p2, :cond_36

    .line 517
    array-length v0, p2

    if-le v0, v3, :cond_2b

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHCP option too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_2b
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 522
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 523
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 525
    :cond_36
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 593
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 594
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 22
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1148
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    const/4 v3, 0x0

    sget-object v6, INADDR_ANY:Ljava/net/Inet4Address;

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1150
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, mGateways:Ljava/util/List;

    .line 1151
    move-object/from16 v0, p10

    iput-object v0, v1, mDnsServers:Ljava/util/List;

    .line 1152
    iput-object p6, v1, mLeaseTime:Ljava/lang/Integer;

    .line 1153
    move-object/from16 v0, p12

    iput-object v0, v1, mDomainName:Ljava/lang/String;

    .line 1154
    move-object/from16 v0, p7

    iput-object v0, v1, mSubnetMask:Ljava/net/Inet4Address;

    .line 1155
    move-object/from16 v0, p11

    iput-object v0, v1, mServerIdentifier:Ljava/net/Inet4Address;

    .line 1156
    move-object/from16 v0, p8

    iput-object v0, v1, mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1157
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B

    .prologue
    .line 1113
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1115
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, mRequestedParams:[B

    .line 1116
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .registers 13
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p3, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "mac"    # [B

    .prologue
    .line 1165
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1167
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, mMessage:Ljava/lang/String;

    .line 1168
    iput-object p3, v0, mRequestedIp:Ljava/net/Inet4Address;

    .line 1169
    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 22
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    const/4 v3, 0x0

    sget-object v6, INADDR_ANY:Ljava/net/Inet4Address;

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1130
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, mGateways:Ljava/util/List;

    .line 1131
    move-object/from16 v0, p10

    iput-object v0, v1, mDnsServers:Ljava/util/List;

    .line 1132
    iput-object p6, v1, mLeaseTime:Ljava/lang/Integer;

    .line 1133
    move-object/from16 v0, p12

    iput-object v0, v1, mDomainName:Ljava/lang/String;

    .line 1134
    move-object/from16 v0, p11

    iput-object v0, v1, mServerIdentifier:Ljava/net/Inet4Address;

    .line 1135
    move-object/from16 v0, p7

    iput-object v0, v1, mSubnetMask:Ljava/net/Inet4Address;

    .line 1136
    move-object/from16 v0, p8

    iput-object v0, v1, mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1137
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 18
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "broadcast"    # Z
    .param p5, "clientMac"    # [B
    .param p6, "requestedIpAddress"    # Ljava/net/Inet4Address;
    .param p7, "serverIdentifier"    # Ljava/net/Inet4Address;
    .param p8, "requestedParams"    # [B
    .param p9, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1179
    new-instance v1, Landroid/net/dhcp/DhcpRequestPacket;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1181
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p6, v1, mRequestedIp:Ljava/net/Inet4Address;

    .line 1182
    iput-object p7, v1, mServerIdentifier:Ljava/net/Inet4Address;

    .line 1183
    move-object/from16 v0, p9

    iput-object v0, v1, mHostName:Ljava/lang/String;

    .line 1184
    move-object/from16 v0, p8

    iput-object v0, v1, mRequestedParams:[B

    .line 1185
    const/16 v2, 0x43

    const/16 v3, 0x44

    invoke-virtual {v1, p0, v2, v3}, buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1186
    .local v7, "result":Ljava/nio/ByteBuffer;
    return-object v7
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .registers 19
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 465
    move/from16 v11, p2

    .line 466
    .local v11, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 470
    .local v4, "bufPosition":I
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 474
    .local v10, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    sub-int v12, p4, p3

    div-int/lit8 v12, v12, 0x2

    new-array v9, v12, [S

    .line 477
    .local v9, "shortArray":[S
    invoke-virtual {v10, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 479
    move-object v2, v9

    .local v2, "arr$":[S
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1e
    if-ge v5, v6, :cond_2a

    aget-short v8, v2, v5

    .line 480
    .local v8, "s":S
    invoke-static {v8}, intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    .line 479
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 483
    .end local v8    # "s":S
    :cond_2a
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x2

    add-int p3, p3, v12

    .line 486
    move/from16 v0, p4

    move/from16 v1, p3

    if-eq v0, v1, :cond_44

    .line 487
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    int-to-short v3, v12

    .line 490
    .local v3, "b":S
    if-gez v3, :cond_41

    .line 491
    add-int/lit16 v12, v3, 0x100

    int-to-short v3, v12

    .line 494
    :cond_41
    mul-int/lit16 v12, v3, 0x100

    add-int/2addr v11, v12

    .line 497
    .end local v3    # "b":S
    :cond_44
    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    const v13, 0xffff

    and-int/2addr v13, v11

    add-int v11, v12, v13

    .line 498
    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    const v13, 0xffff

    and-int v11, v12, v13

    .line 499
    xor-int/lit8 v7, v11, -0x1

    .line 500
    .local v7, "negated":I
    int-to-short v12, v7

    invoke-static {v12}, intAbs(S)I

    move-result v12

    return v12
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .registers 72
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .prologue
    .line 709
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v25, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v31, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v62, 0x0

    .line 712
    .local v62, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v56, 0x0

    .line 713
    .local v56, "netMask":Ljava/net/Inet4Address;
    const/16 v54, 0x0

    .line 714
    .local v54, "message":Ljava/lang/String;
    const/16 v68, 0x0

    .line 715
    .local v68, "vendorId":Ljava/lang/String;
    const/16 v69, 0x0

    .line 716
    .local v69, "vendorInfo":Ljava/lang/String;
    const/16 v30, 0x0

    .line 717
    .local v30, "expectedParams":[B
    const/16 v33, 0x0

    .line 718
    .local v33, "hostName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 719
    .local v26, "domainName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 720
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    const/16 v39, 0x0

    .line 721
    .local v39, "ipDst":Ljava/net/Inet4Address;
    const/16 v21, 0x0

    .line 722
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v61, 0x0

    .line 728
    .local v61, "requestedIp":Ljava/net/Inet4Address;
    const/16 v55, 0x0

    .line 729
    .local v55, "mtu":Ljava/lang/Short;
    const/16 v53, 0x0

    .line 730
    .local v53, "maxMessageSize":Ljava/lang/Short;
    const/16 v52, 0x0

    .line 731
    .local v52, "leaseTime":Ljava/lang/Integer;
    const/16 v18, 0x0

    .line 732
    .local v18, "T1":Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 735
    .local v19, "T2":Ljava/lang/Integer;
    const/16 v24, -0x1

    .line 737
    .local v24, "dhcpType":B
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 740
    if-nez p1, :cond_9a

    .line 741
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x116

    if-ge v10, v11, :cond_5d

    .line 742
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "L2 packet too short, %d < %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x116

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 746
    :cond_5d
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v49, v0

    .line 747
    .local v49, "l2dst":[B
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v50, v0

    .line 749
    .local v50, "l2src":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 752
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v51

    .line 754
    .local v51, "l2type":S
    sget v10, Landroid/system/OsConstants;->ETH_P_IP:I

    move/from16 v0, v51

    if-eq v0, v10, :cond_9a

    .line 755
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Unexpected L2 type 0x%04x, expected 0x%04x"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v51 .. v51}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget v14, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 759
    .end local v49    # "l2dst":[B
    .end local v50    # "l2src":[B
    .end local v51    # "l2type":S
    :cond_9a
    const/4 v10, 0x1

    move/from16 v0, p1

    if-gt v0, v10, :cond_15f

    .line 760
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x108

    if-ge v10, v11, :cond_c6

    .line 761
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "L3 packet too short, %d < %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x108

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 765
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v46

    .line 766
    .local v46, "ipTypeAndLength":B
    move/from16 v0, v46

    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v47, v10, 0x4

    .line 767
    .local v47, "ipVersion":I
    const/4 v10, 0x4

    move/from16 v0, v47

    if-eq v0, v10, :cond_e7

    .line 768
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Invalid IP version %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 772
    :cond_e7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v38

    .line 773
    .local v38, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v45

    .line 774
    .local v45, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v42

    .line 775
    .local v42, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v40

    .line 776
    .local v40, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v41

    .line 777
    .local v41, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v44

    .line 778
    .local v44, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v43

    .line 779
    .local v43, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v37

    .line 781
    .local v37, "ipChksm":S
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 782
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v39

    .line 784
    const/16 v10, 0x11

    move/from16 v0, v43

    if-eq v0, v10, :cond_127

    .line 785
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Protocol not UDP: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v43 .. v43}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 791
    :cond_127
    and-int/lit8 v10, v46, 0xf

    add-int/lit8 v60, v10, -0x5

    .line 792
    .local v60, "optionWords":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_12d
    move/from16 v0, v35

    move/from16 v1, v60

    if-ge v0, v1, :cond_139

    .line 793
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 792
    add-int/lit8 v35, v35, 0x1

    goto :goto_12d

    .line 797
    :cond_139
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v67

    .line 798
    .local v67, "udpSrcPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v65

    .line 799
    .local v65, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v66

    .line 800
    .local v66, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v64

    .line 805
    .local v64, "udpChkSum":S
    move/from16 v0, v67

    move/from16 v1, v65

    invoke-static {v0, v1}, isPacketToOrFromClient(SS)Z

    move-result v10

    if-nez v10, :cond_15f

    move/from16 v0, v67

    move/from16 v1, v65

    invoke-static {v0, v1}, isPacketServerToServer(SS)Z

    move-result v10

    if-nez v10, :cond_15f

    .line 807
    const/4 v2, 0x0

    .line 1038
    .end local v35    # "i":I
    .end local v37    # "ipChksm":S
    .end local v38    # "ipDiffServicesField":B
    .end local v40    # "ipFlags":B
    .end local v41    # "ipFragOffset":B
    .end local v42    # "ipIdentification":S
    .end local v43    # "ipProto":B
    .end local v44    # "ipTTL":B
    .end local v45    # "ipTotalLength":S
    .end local v46    # "ipTypeAndLength":B
    .end local v47    # "ipVersion":I
    .end local v60    # "optionWords":I
    .end local v64    # "udpChkSum":S
    .end local v65    # "udpDstPort":S
    .end local v66    # "udpLen":S
    .end local v67    # "udpSrcPort":S
    :goto_15e
    return-object v2

    .line 812
    :cond_15f
    const/4 v10, 0x2

    move/from16 v0, p1

    if-gt v0, v10, :cond_16c

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0xec

    if-ge v10, v11, :cond_18b

    .line 813
    :cond_16c
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Invalid type or BOOTP packet too short, %d < %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0xec

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 817
    :cond_18b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v63

    .line 818
    .local v63, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v34

    .line 819
    .local v34, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    .line 820
    .local v20, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v32

    .line 821
    .local v32, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 822
    .local v3, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 823
    .local v4, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v22

    .line 824
    .local v22, "bootpFlags":S
    const v10, 0x8000

    and-int v10, v10, v22

    if-eqz v10, :cond_237

    const/4 v5, 0x1

    .line 825
    .local v5, "broadcast":Z
    :goto_1b3
    const/4 v10, 0x4

    new-array v0, v10, [B

    move-object/from16 v48, v0

    .line 828
    .local v48, "ipv4addr":[B
    :try_start_1b8
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 829
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;

    .line 830
    .local v7, "clientIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 831
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet4Address;

    .line 832
    .local v8, "yourIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 833
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    check-cast v15, Ljava/net/Inet4Address;

    .line 834
    .local v15, "nextIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 835
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    check-cast v16, Ljava/net/Inet4Address;
    :try_end_1ec
    .catch Ljava/net/UnknownHostException; {:try_start_1b8 .. :try_end_1ec} :catch_23a

    .line 846
    .local v16, "relayIp":Ljava/net/Inet4Address;
    const/16 v10, 0x10

    move/from16 v0, v20

    if-le v0, v10, :cond_1f7

    .line 847
    sget-object v10, ETHER_BROADCAST:[B

    array-length v0, v10

    move/from16 v20, v0

    .line 850
    :cond_1f7
    move/from16 v0, v20

    new-array v9, v0, [B

    .line 851
    .local v9, "clientMac":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 854
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    rsub-int/lit8 v11, v20, 0x10

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x40

    add-int/lit16 v10, v10, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 858
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 860
    .local v23, "dhcpMagicCookie":I
    const v10, 0x63825363

    move/from16 v0, v23

    if-eq v0, v10, :cond_24d

    .line 861
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Bad magic cookie 0x%08x, should be 0x%08x"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const v14, 0x63825363

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 824
    .end local v5    # "broadcast":Z
    .end local v7    # "clientIp":Ljava/net/Inet4Address;
    .end local v8    # "yourIp":Ljava/net/Inet4Address;
    .end local v9    # "clientMac":[B
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .end local v16    # "relayIp":Ljava/net/Inet4Address;
    .end local v23    # "dhcpMagicCookie":I
    .end local v48    # "ipv4addr":[B
    :cond_237
    const/4 v5, 0x0

    goto/16 :goto_1b3

    .line 836
    .restart local v5    # "broadcast":Z
    .restart local v48    # "ipv4addr":[B
    :catch_23a
    move-exception v28

    .line 837
    .local v28, "ex":Ljava/net/UnknownHostException;
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Invalid IPv4 address: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v48 .. v48}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 866
    .end local v28    # "ex":Ljava/net/UnknownHostException;
    .restart local v7    # "clientIp":Ljava/net/Inet4Address;
    .restart local v8    # "yourIp":Ljava/net/Inet4Address;
    .restart local v9    # "clientMac":[B
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v16    # "relayIp":Ljava/net/Inet4Address;
    .restart local v23    # "dhcpMagicCookie":I
    :cond_24d
    const/16 v57, 0x1

    .line 868
    .local v57, "notFinishedOptions":Z
    :cond_24f
    :goto_24f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    if-ge v10, v11, :cond_3a2

    if-eqz v57, :cond_3a2

    .line 870
    :try_start_25b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v59

    .line 872
    .local v59, "optionType":B
    const/4 v10, -0x1

    move/from16 v0, v59

    if-ne v0, v10, :cond_267

    .line 873
    const/16 v57, 0x0

    goto :goto_24f

    .line 874
    :cond_267
    if-eqz v59, :cond_24f

    .line 877
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v58, v0

    .line 878
    .local v58, "optionLen":I
    const/16 v29, 0x0

    .line 880
    .local v29, "expectedLen":I
    sparse-switch v59, :sswitch_data_44e

    .line 965
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_278
    move/from16 v0, v35

    move/from16 v1, v58

    if-ge v0, v1, :cond_28c

    .line 966
    add-int/lit8 v29, v29, 0x1

    .line 967
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 965
    add-int/lit8 v35, v35, 0x1

    goto :goto_278

    .line 882
    .end local v35    # "i":I
    :sswitch_286
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v56

    .line 883
    const/16 v29, 0x4

    .line 971
    :cond_28c
    :goto_28c
    move/from16 v0, v29

    move/from16 v1, v58

    if-eq v0, v1, :cond_24f

    .line 972
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Invalid length %d for option %d, expected %d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {v59 .. v59}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10
    :try_end_2b2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_25b .. :try_end_2b2} :catch_2b2

    .line 976
    .end local v29    # "expectedLen":I
    .end local v58    # "optionLen":I
    .end local v59    # "optionType":B
    :catch_2b2
    move-exception v27

    .line 977
    .local v27, "e":Ljava/nio/BufferUnderflowException;
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "BufferUnderflowException"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 886
    .end local v27    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v29    # "expectedLen":I
    .restart local v58    # "optionLen":I
    .restart local v59    # "optionType":B
    :sswitch_2be
    const/16 v29, 0x0

    :goto_2c0
    move/from16 v0, v29

    move/from16 v1, v58

    if-ge v0, v1, :cond_28c

    .line 887
    :try_start_2c6
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    add-int/lit8 v29, v29, 0x4

    goto :goto_2c0

    .line 891
    :sswitch_2d2
    const/16 v29, 0x0

    :goto_2d4
    move/from16 v0, v29

    move/from16 v1, v58

    if-ge v0, v1, :cond_28c

    .line 892
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v29, v29, 0x4

    goto :goto_2d4

    .line 896
    :sswitch_2e6
    move/from16 v29, v58

    .line 897
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v33

    .line 898
    goto :goto_28c

    .line 900
    :sswitch_2f2
    const/16 v29, 0x2

    .line 901
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v55

    .line 902
    goto :goto_28c

    .line 904
    :sswitch_2fd
    move/from16 v29, v58

    .line 905
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v26

    .line 906
    goto :goto_28c

    .line 908
    :sswitch_309
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v21

    .line 909
    const/16 v29, 0x4

    .line 910
    goto/16 :goto_28c

    .line 912
    :sswitch_311
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v61

    .line 913
    const/16 v29, 0x4

    .line 914
    goto/16 :goto_28c

    .line 916
    :sswitch_319
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 917
    const/16 v29, 0x4

    .line 918
    goto/16 :goto_28c

    .line 920
    :sswitch_325
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v24

    .line 921
    const/16 v29, 0x1

    .line 922
    goto/16 :goto_28c

    .line 924
    :sswitch_32d
    invoke-static/range {p0 .. p0}, readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v62

    .line 925
    const/16 v29, 0x4

    .line 926
    goto/16 :goto_28c

    .line 928
    :sswitch_335
    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 929
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 930
    move/from16 v29, v58

    .line 931
    goto/16 :goto_28c

    .line 933
    :sswitch_346
    move/from16 v29, v58

    .line 934
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v54

    .line 935
    goto/16 :goto_28c

    .line 937
    :sswitch_353
    const/16 v29, 0x2

    .line 938
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v53

    .line 939
    goto/16 :goto_28c

    .line 941
    :sswitch_35f
    const/16 v29, 0x4

    .line 942
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 943
    goto/16 :goto_28c

    .line 945
    :sswitch_36b
    const/16 v29, 0x4

    .line 946
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 947
    goto/16 :goto_28c

    .line 949
    :sswitch_377
    move/from16 v29, v58

    .line 951
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v68

    .line 952
    goto/16 :goto_28c

    .line 954
    :sswitch_384
    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v36, v0

    .line 955
    .local v36, "id":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 956
    move/from16 v29, v58

    .line 957
    goto/16 :goto_28c

    .line 959
    .end local v36    # "id":[B
    :sswitch_395
    move/from16 v29, v58

    .line 961
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_39f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2c6 .. :try_end_39f} :catch_2b2

    move-result-object v69

    .line 962
    goto/16 :goto_28c

    .line 983
    .end local v29    # "expectedLen":I
    .end local v58    # "optionLen":I
    .end local v59    # "optionType":B
    :cond_3a2
    packed-switch v24, :pswitch_data_49c

    .line 1018
    :pswitch_3a5
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "Unimplemented DHCP type %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 985
    :pswitch_3b7
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v11, "No DHCP message type option"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 987
    :pswitch_3c2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v2, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1021
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .local v2, "newPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_3c7
    move-object/from16 v0, v21

    iput-object v0, v2, mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1022
    move-object/from16 v0, v25

    iput-object v0, v2, mDnsServers:Ljava/util/List;

    .line 1023
    move-object/from16 v0, v26

    iput-object v0, v2, mDomainName:Ljava/lang/String;

    .line 1024
    move-object/from16 v0, v31

    iput-object v0, v2, mGateways:Ljava/util/List;

    .line 1025
    move-object/from16 v0, v33

    iput-object v0, v2, mHostName:Ljava/lang/String;

    .line 1026
    move-object/from16 v0, v52

    iput-object v0, v2, mLeaseTime:Ljava/lang/Integer;

    .line 1027
    move-object/from16 v0, v54

    iput-object v0, v2, mMessage:Ljava/lang/String;

    .line 1028
    move-object/from16 v0, v55

    iput-object v0, v2, mMtu:Ljava/lang/Short;

    .line 1029
    move-object/from16 v0, v61

    iput-object v0, v2, mRequestedIp:Ljava/net/Inet4Address;

    .line 1030
    move-object/from16 v0, v30

    iput-object v0, v2, mRequestedParams:[B

    .line 1031
    move-object/from16 v0, v62

    iput-object v0, v2, mServerIdentifier:Ljava/net/Inet4Address;

    .line 1032
    move-object/from16 v0, v56

    iput-object v0, v2, mSubnetMask:Ljava/net/Inet4Address;

    .line 1033
    move-object/from16 v0, v53

    iput-object v0, v2, mMaxMessageSize:Ljava/lang/Short;

    .line 1034
    move-object/from16 v0, v18

    iput-object v0, v2, mT1:Ljava/lang/Integer;

    .line 1035
    move-object/from16 v0, v19

    iput-object v0, v2, mT2:Ljava/lang/Integer;

    .line 1036
    move-object/from16 v0, v68

    iput-object v0, v2, mVendorId:Ljava/lang/String;

    .line 1037
    move-object/from16 v0, v69

    iput-object v0, v2, mVendorInfo:Ljava/lang/String;

    goto/16 :goto_15e

    .line 991
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_40d
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 993
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_3c7

    .line 995
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_413
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v9

    move v15, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 997
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_3c7

    .line 999
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_41f
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1002
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_3c7

    .line 1004
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_42c
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1006
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_3c7

    .line 1008
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_432
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1011
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_3c7

    .line 1013
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_43f
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1016
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_3c7

    .line 880
    nop

    :sswitch_data_44e
    .sparse-switch
        0x1 -> :sswitch_286
        0x3 -> :sswitch_2be
        0x6 -> :sswitch_2d2
        0xc -> :sswitch_2e6
        0xf -> :sswitch_2fd
        0x1a -> :sswitch_2f2
        0x1c -> :sswitch_309
        0x2b -> :sswitch_395
        0x32 -> :sswitch_311
        0x33 -> :sswitch_319
        0x35 -> :sswitch_325
        0x36 -> :sswitch_32d
        0x37 -> :sswitch_335
        0x38 -> :sswitch_346
        0x39 -> :sswitch_353
        0x3a -> :sswitch_35f
        0x3b -> :sswitch_36b
        0x3c -> :sswitch_377
        0x3d -> :sswitch_384
    .end sparse-switch

    .line 983
    :pswitch_data_49c
    .packed-switch -0x1
        :pswitch_3b7
        :pswitch_3a5
        :pswitch_3c2
        :pswitch_40d
        :pswitch_413
        :pswitch_41f
        :pswitch_42c
        :pswitch_432
        :pswitch_3a5
        :pswitch_43f
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .registers 6
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .prologue
    .line 1046
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1047
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p2}, decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v1

    return-object v1
.end method

.method private static intAbs(S)I
    .registers 2
    .param p0, "v"    # S

    .prologue
    .line 456
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static isPacketServerToServer(SS)Z
    .registers 3
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .prologue
    const/16 v0, 0x43

    .line 681
    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isPacketToOrFromClient(SS)Z
    .registers 3
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .prologue
    const/16 v0, 0x44

    .line 677
    if-eq p0, v0, :cond_6

    if-ne p1, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static macToString([B)Ljava/lang/String;
    .registers 6
    .param p0, "mac"    # [B

    .prologue
    .line 612
    const-string v2, ""

    .line 614
    .local v2, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_55

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_52

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 626
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_55
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    .prologue
    .line 659
    new-array v0, p1, [B

    .line 660
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 661
    array-length v1, v0

    .line 662
    .local v1, "length":I
    if-nez p2, :cond_10

    .line 667
    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 668
    aget-byte v2, v0, v1

    if-nez v2, :cond_19

    .line 673
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 667
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .registers 5
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 640
    const/4 v2, 0x0

    .line 641
    .local v2, "result":Ljava/net/Inet4Address;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 642
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 645
    :try_start_7
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .end local v2    # "result":Ljava/net/Inet4Address;
    check-cast v2, Ljava/net/Inet4Address;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_d} :catch_e

    .line 652
    .restart local v2    # "result":Ljava/net/Inet4Address;
    :goto_d
    return-object v2

    .line 646
    .end local v2    # "result":Ljava/net/Inet4Address;
    :catch_e
    move-exception v0

    .line 649
    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    .restart local v2    # "result":Ljava/net/Inet4Address;
    goto :goto_d
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 603
    const/16 v0, 0x39

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 604
    const/16 v0, 0x3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-dhcp-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 605
    const/16 v0, 0xc

    const-string/jumbo v1, "net.hostname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 606
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .registers 24
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    .prologue
    .line 339
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    .line 340
    .local v2, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v7

    .line 341
    .local v7, "srcIpArray":[B
    const/4 v5, 0x0

    .line 342
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    .line 343
    .local v6, "ipLengthOffset":I
    const/4 v4, 0x0

    .line 344
    .local v4, "ipChecksumOffset":I
    const/4 v3, 0x0

    .line 345
    .local v3, "endIpHeader":I
    const/4 v9, 0x0

    .line 346
    .local v9, "udpHeaderOffset":I
    const/4 v11, 0x0

    .line 347
    .local v11, "udpLengthOffset":I
    const/4 v8, 0x0

    .line 349
    .local v8, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 350
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 352
    if-nez p1, :cond_31

    .line 353
    sget-object v13, ETHER_BROADCAST:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 354
    iget-object v13, p0, mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    sget v13, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 361
    :cond_31
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_ab

    .line 362
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 363
    const/16 v13, 0x45

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 364
    const/16 v13, 0x10

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 366
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 367
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 368
    const/16 v13, 0x4000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 369
    const/16 v13, 0x40

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 370
    const/16 v13, 0x11

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 371
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 372
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 374
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 375
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 376
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 379
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 380
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 381
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 382
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 383
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 384
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 385
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 389
    :cond_ab
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 390
    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 391
    iget-object v13, p0, mClientMac:[B

    array-length v13, v13

    int-to-byte v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 392
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 393
    iget v13, p0, mTransId:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 394
    iget-short v13, p0, mSecs:S

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 396
    if-eqz p8, :cond_1ad

    .line 397
    const/16 v13, -0x8000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 402
    :goto_da
    iget-object v13, p0, mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 403
    iget-object v13, p0, mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 404
    iget-object v13, p0, mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 405
    iget-object v13, p0, mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 406
    iget-object v13, p0, mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    iget-object v14, p0, mClientMac:[B

    array-length v14, v14

    rsub-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x40

    add-int/lit16 v13, v13, 0x80

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 411
    const v13, 0x63825363

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 412
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, finishPacket(Ljava/nio/ByteBuffer;)V

    .line 415
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13c

    .line 416
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 421
    :cond_13c
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_1ac

    .line 423
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v9

    int-to-short v10, v13

    .line 424
    .local v10, "udpLen":S
    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 427
    const/4 v12, 0x0

    .line 431
    .local v12, "udpSeed":I
    add-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 432
    add-int/lit8 v13, v4, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 433
    add-int/lit8 v13, v4, 0x6

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 434
    add-int/lit8 v13, v4, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 437
    add-int/lit8 v12, v12, 0x11

    .line 438
    add-int/2addr v12, v10

    .line 440
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v9, v13}, checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v5

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 446
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v13, v5, v3}, checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 449
    .end local v10    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_1ac
    return-void

    .line 399
    :cond_1ad
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_da
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, mClientMac:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 326
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    .line 327
    iget-object v1, p0, mClientMac:[B

    iget-object v2, p0, mClientMac:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 328
    return-object v0
.end method

.method public getClientMac()[B
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .registers 5

    .prologue
    .line 1098
    iget-object v0, p0, mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 1099
    :cond_d
    const-wide/16 v0, 0x0

    .line 1103
    :goto_f
    return-wide v0

    .line 1100
    :cond_10
    iget-object v0, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_26

    iget-object v0, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_26

    .line 1101
    const-wide/32 v0, 0xea60

    goto :goto_f

    .line 1103
    :cond_26
    iget-object v0, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_f
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1054
    iget-object v1, p0, mYourIp:Ljava/net/Inet4Address;

    .line 1055
    .local v1, "ipAddress":Ljava/net/Inet4Address;
    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v5}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1056
    iget-object v1, p0, mClientIp:Ljava/net/Inet4Address;

    .line 1057
    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v5}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v3, v4

    .line 1090
    :goto_16
    return-object v3

    .line 1063
    :cond_17
    iget-object v5, p0, mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v5, :cond_63

    .line 1065
    :try_start_1b
    iget-object v5, p0, mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_20} :catch_60

    move-result v2

    .line 1074
    .local v2, "prefixLength":I
    :goto_21
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1076
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_26
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2d} :catch_68

    .line 1081
    iget-object v4, p0, mGateways:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_40

    .line 1082
    iget-object v4, p0, mGateways:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    iput-object v4, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 1085
    :cond_40
    iget-object v4, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v5, p0, mDnsServers:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1086
    iget-object v4, p0, mDomainName:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 1087
    iget-object v4, p0, mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v4, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 1088
    iget-object v4, p0, mVendorId:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1089
    iget-object v4, p0, mLeaseTime:Ljava/lang/Integer;

    if-eqz v4, :cond_6b

    iget-object v4, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_5d
    iput v4, v3, Landroid/net/DhcpResults;->leaseDuration:I

    goto :goto_16

    .line 1066
    .end local v2    # "prefixLength":I
    .end local v3    # "results":Landroid/net/DhcpResults;
    :catch_60
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v3, v4

    .line 1068
    goto :goto_16

    .line 1071
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_63
    invoke-static {v1}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v2

    .restart local v2    # "prefixLength":I
    goto :goto_21

    .line 1077
    .restart local v3    # "results":Landroid/net/DhcpResults;
    :catch_68
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    move-object v3, v4

    .line 1078
    goto :goto_16

    .line 1089
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6b
    const/4 v4, -0x1

    goto :goto_5d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 630
    iget-object v1, p0, mClientMac:[B

    invoke-static {v1}, macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
