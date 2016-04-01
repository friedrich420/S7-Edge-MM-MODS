.class Landroid/net/dhcp/DhcpAckPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpAckPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "broadcast"    # Z
    .param p4, "serverAddress"    # Ljava/net/Inet4Address;
    .param p5, "clientIp"    # Ljava/net/Inet4Address;
    .param p6, "yourIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    .prologue
    .line 34
    sget-object v6, INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 35
    iput-boolean p3, p0, mBroadcast:Z

    .line 36
    iput-object p4, p0, mSrcIp:Ljava/net/Inet4Address;

    .line 37
    return-void
.end method

.method private static final getInt(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "v"    # Ljava/lang/Integer;

    .prologue
    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    .line 57
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 58
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-boolean v0, p0, mBroadcast:Z

    if-eqz v0, :cond_20

    sget-object v2, INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 59
    .local v2, "destIp":Ljava/net/Inet4Address;
    :goto_c
    iget-boolean v0, p0, mBroadcast:Z

    if-eqz v0, :cond_23

    sget-object v3, INADDR_ANY:Ljava/net/Inet4Address;

    .line 61
    .local v3, "srcIp":Ljava/net/Inet4Address;
    :goto_12
    const/4 v7, 0x2

    iget-boolean v8, p0, mBroadcast:Z

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 63
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64
    return-object v6

    .line 58
    .end local v2    # "destIp":Ljava/net/Inet4Address;
    .end local v3    # "srcIp":Ljava/net/Inet4Address;
    :cond_20
    iget-object v2, p0, mYourIp:Ljava/net/Inet4Address;

    goto :goto_c

    .line 59
    .restart local v2    # "destIp":Ljava/net/Inet4Address;
    :cond_23
    iget-object v3, p0, mSrcIp:Ljava/net/Inet4Address;

    goto :goto_12
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 71
    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 72
    const/16 v0, 0x36

    iget-object v1, p0, mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 73
    const/16 v0, 0x33

    iget-object v1, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 76
    iget-object v0, p0, mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_29

    .line 77
    const/16 v0, 0x3a

    iget-object v1, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 81
    :cond_29
    const/4 v0, 0x1

    iget-object v1, p0, mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 82
    const/4 v0, 0x3

    iget-object v1, p0, mGateways:Ljava/util/List;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 83
    const/16 v0, 0xf

    iget-object v1, p0, mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 84
    const/16 v0, 0x1c

    iget-object v1, p0, mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 85
    const/4 v0, 0x6

    iget-object v1, p0, mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 86
    invoke-static {p1}, addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 40
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "s":Ljava/lang/String;
    const-string v1, " DNS servers: "

    .line 43
    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v4, p0, mDnsServers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 44
    .local v0, "dnsServer":Ljava/net/Inet4Address;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    goto :goto_c

    .line 47
    .end local v0    # "dnsServer":Ljava/net/Inet4Address;
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ACK: your new IP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", netmask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gateways "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mGateways:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lease time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
