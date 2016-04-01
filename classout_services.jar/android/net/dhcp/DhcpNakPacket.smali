.class Landroid/net/dhcp/DhcpNakPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpNakPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    .prologue
    .line 32
    sget-object v3, INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    .line 45
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 46
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-object v2, p0, mClientIp:Ljava/net/Inet4Address;

    .line 47
    .local v2, "destIp":Ljava/net/Inet4Address;
    iget-object v3, p0, mYourIp:Ljava/net/Inet4Address;

    .line 49
    .local v3, "srcIp":Ljava/net/Inet4Address;
    const/4 v7, 0x2

    iget-boolean v8, p0, mBroadcast:Z

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 51
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    const/16 v0, 0x35

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    const/16 v0, 0x36

    iget-object v1, p0, mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 61
    const/16 v0, 0x38

    iget-object v1, p0, mMessage:Ljava/lang/String;

    invoke-static {p1, v0, v1}, addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 62
    invoke-static {p1}, addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NAK, reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, mMessage:Ljava/lang/String;

    if-nez v1, :cond_22

    const-string v1, "(none)"

    :goto_19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_22
    iget-object v1, p0, mMessage:Ljava/lang/String;

    goto :goto_19
.end method
